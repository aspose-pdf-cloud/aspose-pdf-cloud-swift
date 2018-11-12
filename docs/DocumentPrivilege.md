# DocumentPrivilege
Represents the privileges for accessing Pdf file./>.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowPrint** | **Bool?** | Sets the permission which allow print or not. true is allow and false or not set is forbidden. | [optional]
**AllowDegradedPrinting** | **Bool?** | Sets the permission which allow degraded printing or not. true is allow and false or not set is forbidden. | [optional]
**AllowModifyContents** | **Bool?** | Sets the permission which allow modify contents or not. true is allow and false or not set is forbidden. | [optional]
**AllowCopy** | **Bool?** | Sets the permission which allow copy or not. true is allow and false or not set is forbidden. | [optional]
**AllowModifyAnnotations** | **Bool?** | Sets the permission which allow modify annotations or not. true is allow and false or not set is forbidden. | [optional]
**AllowFillIn** | **Bool?** | Sets the permission which allow fill in forms or not. true is allow and false or not set is forbidden. | [optional]
**AllowScreenReaders** | **Bool?** | Sets the permission which allow screen readers or not. true is allow and false or not set is forbidden. | [optional]
**AllowAssembly** | **Bool?** | Sets the permission which allow assembly or not. true is allow and false or not set is forbidden. | [optional]
**PrintAllowLevel** | **Int?** | Sets the print level of document's privilege. Just as the Adobe Professional's Printing Allowed settings. 0: None. 1: Low Resolution (150 dpi). 2: High Resolution. | [optional]
**ChangeAllowLevel** | **Int?** | Sets the change level of document's privilege. Just as the Adobe Professional's Changes Allowed settings. 0: None. 1: Inserting, Deleting and Rotating pages. 2: Filling in form fields and signing existing signature fields. 3: Commenting, filling in form fields, and signing existing signature fields. 4: Any except extracting pages. | [optional]
**CopyAllowLevel** | **Int?** | Sets the copy level of document's privilege. Just as the Adobe Professional's permission settings. 0: None. 1: Enable text access for screen reader devices for the visually impaired. 2: Enable copying of text, images and other content. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md) [[View Source]](../AsposePdfCloud/Models/DocumentPrivilege.swift)

