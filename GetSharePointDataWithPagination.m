let
    SHAREPOINTSITELINK = "https://your_org.com/sharepoint_path",
    LISTNAME = "your_list_name",

    CountListItems = Json.Document(
        Web.Contents(SHAREPOINTSITELINK, [
            RelativePath = "_api/web/lists/GetByTitle('" & LISTNAME & "')/ItemCount",
            Headers = [Accept = "application/json"]
        ])
    )[value],

    itemsPerPage = 5000,

    // Function to get items with pagination using RelativePath
    GetPagedItems = (relativeUrl as text) as list =>
        let
            response = Json.Document(
                Web.Contents(SHAREPOINTSITELINK, [
                    RelativePath = relativeUrl,
                    Headers = [Accept = "application/json"]
                ])
            ),
            items = response[value],
            nextLink = try response[#"odata.nextLink"] otherwise null,
            moreItems = if nextLink <> null and Text.Length(nextLink) > 0 then 
                let
                    cleanedLink = Text.Middle(nextLink, Text.Length(SHAREPOINTSITELINK))
                in
                    @GetPagedItems(cleanedLink)
            else 
                {}
        in
            List.Combine({items, moreItems}),

    // Initial URL to fetch items
    INITIALURL = "_api/web/lists/GetByTitle('" & LISTNAME & "')/items?$top=" & Number.ToText(itemsPerPage) & "&$select=Title,field_1,field_2,field_3,field_4",

    allItems = GetPagedItems(INITIALURL),

    #"Converted to Table" = Table.FromList(allItems, Splitter.SplitByNothing(), null, null, ExtraValues.Error),

    #"Expanded Column" = Table.ExpandRecordColumn(
        #"Converted to Table", 
        "Column1", 
        {"Title", "field_1", "field_2", "field_3", "field_4"}, 
        {"Title", "field_1", "field_2", "field_3", "field_4"}
    )
in
    #"Expanded Column"
