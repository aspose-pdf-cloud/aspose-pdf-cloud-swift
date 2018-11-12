# SplitResultDocument
Represents split result document,

*Inherited from [Link](Link.md)*
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int** | Gets or sets the page number. | 
**Href** | **String?** | The "href" attribute contains the link's IRI. atom:link elements MUST have an href attribute, whose value MUST be a IRI reference<br />*Inherited from [Link](Link.md)* | [optional]
**Rel** | **String?** | atom:link elements MAY have a "rel" attribute that indicates the link relation type. If the "rel" attribute is not present, the link element MUST be interpreted as if the link relation type is "alternate".<br />*Inherited from [Link](Link.md)* | [optional]
**Type** | **String?** | On the link element, the "type" attribute's value is an advisory media type: it is a hint about the type of the representation that is expected to be returned when the value of the href attribute is dereferenced. Note that the type attribute does not override the actual media type returned with the representation.<br />*Inherited from [Link](Link.md)* | [optional]
**Title** | **String?** | The "title" attribute conveys human-readable information about the link. The content of the "title" attribute is Language-Sensitive.<br />*Inherited from [Link](Link.md)* | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md) [[View Source]](../AsposePdfCloud/Models/SplitResultDocument.swift)

