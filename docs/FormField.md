# FormField
Provides form field.

*Inherited from [LinkElement](LinkElement.md)*
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**partialName** | **String?** | Field name. | [optional]
**fullName** | **String?** | Full Field name. | [optional]
**rect** | [**Rectangle?**](Rectangle.md) | Field rectangle. | [optional]
**value** | **String?** | Field value. | [optional]
**pageIndex** | **Int** | Page index. | 
**height** | **Double?** | Gets or sets height of the field. | [optional]
**width** | **Double?** | Gets or sets width of the field. | [optional]
**zIndex** | **Int?** | Z index. | [optional]
**isGroup** | **Bool?** | Is group. | [optional]
**parent** | [**FormField?**](FormField.md) | Gets field parent. | [optional]
**isSharedField** | **Bool?** | Property for Generator support. Used when field is added to header or footer. If true, this field will created once and it's appearance will be visible on all pages of the document. If false, separated field will be created for every document page. | [optional]
**flags** | [**[AnnotationFlags]?**](AnnotationFlags.md) | Gets Flags of the field. | [optional]
**color** | [**Color?**](Color.md) | Color of the annotation. | [optional]
**contents** | **String?** | Get the field content. | [optional]
**margin** | [**MarginInfo?**](MarginInfo.md) | Gets or sets a outer margin for paragraph (for pdf generation) | [optional]
**highlighting** | [**LinkHighlightingMode?**](LinkHighlightingMode.md) | Field highlighting mode. | [optional]
**horizontalAlignment** | [**HorizontalAlignment?**](HorizontalAlignment.md) | Gets HorizontalAlignment of the field. | [optional]
**verticalAlignment** | [**VerticalAlignment?**](VerticalAlignment.md) | Gets VerticalAlignment of the field. | [optional]
**border** | [**Border?**](Border.md) | Gets or sets annotation border characteristics. | [optional]
**links** | [**[Link]?**](Link.md) | Link to the document.<br />*Inherited from [LinkElement](LinkElement.md)* | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md) [[View Source]](../AsposePdfCloud/Models/FormField.swift)

