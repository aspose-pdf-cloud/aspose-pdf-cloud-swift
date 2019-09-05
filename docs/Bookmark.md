# Bookmark
Provides link to bookmark.

*Inherited from [LinkElement](LinkElement.md)*
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String?** | Get the Title; | [optional]
**italic** | **Bool?** | Is bookmark italic. | [optional]
**bold** | **Bool?** | Is bookmark bold. | [optional]
**color** | [**Color?**](Color.md) | Get the color | [optional]
**action** | **String?** | Gets or sets the action bound with the bookmark. If PageNumber is presented the action can not be specified. The action type includes: "GoTo", "GoToR", "Launch", "Named". | [optional]
**level** | **Int?** | Gets or sets bookmark's hierarchy level. | [optional]
**destination** | **String?** | Gets or sets bookmark's destination page. Required if action is set as string.Empty. | [optional]
**pageDisplay** | **String?** | Gets or sets the type of display bookmark's destination page. | [optional]
**pageDisplay_Bottom** | **Int?** | Gets or sets the bottom coordinate of page display. | [optional]
**pageDisplay_Left** | **Int?** | Gets or sets the left coordinate of page display. | [optional]
**pageDisplay_Right** | **Int?** | Gets or sets the right coordinate of page display. | [optional]
**pageDisplay_Top** | **Int?** | Gets or sets the top coordinate of page display. | [optional]
**pageDisplay_Zoom** | **Int?** | Gets or sets the zoom factor of page display. | [optional]
**pageNumber** | **Int?** | Gets or sets the number of bookmark's destination page.  | [optional]
**remoteFile** | **String?** | Gets or sets the file (path) which is required for "GoToR" action of bookmark. | [optional]
**bookmarks** | [**Bookmarks?**](Bookmarks.md) | The children bookmarks. | [optional]
**links** | [**[Link]?**](Link.md) | Link to the document.<br />*Inherited from [LinkElement](LinkElement.md)* | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md) [[View Source]](../AsposePdfCloud/Models/Bookmark.swift)

