# Aspose.PDF Cloud
[Aspose.PDF Cloud](https://products.aspose.cloud/pdf/cloud) is a true REST API that enables you to perform a wide range of document processing operations including creation, manipulation, conversion and rendering of Pdf documents in the cloud.

Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process documents in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. This repository contains new generation SDKs for Aspose.PDF Cloud and examples.

These SDKs are now fully supported. If you have any questions, see any bugs or have enhancement request, feel free to reach out to us at [Free Support Forums](https://forum.aspose.cloud/c/pdf).

Edit assembly info of a PDF document online https://products.aspose.app/pdf/assembly.

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ is required to build AsposePdfCloud 19.12+.

To integrate AsposePdfCloud into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'AsposePdfCloud', '~> 19.12'
end
```

Then, run the following command:

```bash
$ pod install
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```swift

func testGetPageAnnotations() {
    let name = "PdfWithAnnotations.pdf"

    let pageNumber = 2
    PdfAPI.getPageAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
        (response, error) in
        guard error == nil else {
            // errror handle
            return
        }
        if let response = response {
            // do
        }
    }
}

```

## Unit Tests
Aspose PDF SDK includes a suite of unit tests within the "test" subdirectory. These Unit Tests also serves as examples of how to use the Aspose PDF SDK.

## Licensing
All Aspose.PDF Cloud SDKs are licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.aspose.cloud)
+ [**Product Home**](https://products.aspose.cloud/pdf/cloud)
+ [**Documentation**](https://docs.aspose.cloud/display/pdfcloud/Home)
+ [**Free Support Forum**](https://forum.aspose.cloud/c/pdf)
+ [**Paid Support Helpdesk**](https://helpdesk.aspose.cloud/)
+ [**Blog**](https://blog.aspose.cloud/category/aspose-products/aspose-pdf-product-family/)

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PdfApi* | [**copyFile**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#copyFile) | **PUT** /pdf/storage/file/copy/\{srcPath} | Copy file
*PdfApi* | [**copyFolder**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#copyFolder) | **PUT** /pdf/storage/folder/copy/\{srcPath} | Copy folder
*PdfApi* | [**createFolder**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#createFolder) | **PUT** /pdf/storage/folder/\{path} | Create the folder
*PdfApi* | [**deleteAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteAnnotation) | **DELETE** /pdf/\{name}/annotations/\{annotationId} | Delete document annotation by ID
*PdfApi* | [**deleteBookmark**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteBookmark) | **DELETE** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Delete document bookmark by ID.
*PdfApi* | [**deleteDocumentAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteDocumentAnnotations) | **DELETE** /pdf/\{name}/annotations | Delete all annotations from the document
*PdfApi* | [**deleteDocumentBookmarks**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteDocumentBookmarks) | **DELETE** /pdf/\{name}/bookmarks/tree | Delete all document bookmarks.
*PdfApi* | [**deleteDocumentLinkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteDocumentLinkAnnotations) | **DELETE** /pdf/\{name}/links | Delete all link annotations from the document
*PdfApi* | [**deleteDocumentStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteDocumentStamps) | **DELETE** /pdf/\{name}/stamps | Delete all stamps from the document
*PdfApi* | [**deleteDocumentTables**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteDocumentTables) | **DELETE** /pdf/\{name}/tables | Delete all tables from the document
*PdfApi* | [**deleteField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteField) | **DELETE** /pdf/\{name}/fields/\{fieldName} | Delete document field by name.
*PdfApi* | [**deleteFile**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteFile) | **DELETE** /pdf/storage/file/\{path} | Delete file
*PdfApi* | [**deleteFolder**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteFolder) | **DELETE** /pdf/storage/folder/\{path} | Delete folder
*PdfApi* | [**deleteImage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteImage) | **DELETE** /pdf/\{name}/images/\{imageId} | Delete image from document page.
*PdfApi* | [**deleteLinkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteLinkAnnotation) | **DELETE** /pdf/\{name}/links/\{linkId} | Delete document page link annotation by ID
*PdfApi* | [**deletePage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deletePage) | **DELETE** /pdf/\{name}/pages/\{pageNumber} | Delete document page by its number.
*PdfApi* | [**deletePageAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deletePageAnnotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/annotations | Delete all annotations from the page
*PdfApi* | [**deletePageLinkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deletePageLinkAnnotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/links | Delete all link annotations from the page
*PdfApi* | [**deletePageStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deletePageStamps) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/stamps | Delete all stamps from the page
*PdfApi* | [**deletePageTables**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deletePageTables) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/tables | Delete all tables from the page
*PdfApi* | [**deleteProperties**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteProperties) | **DELETE** /pdf/\{name}/documentproperties | Delete custom document properties.
*PdfApi* | [**deleteProperty**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteProperty) | **DELETE** /pdf/\{name}/documentproperties/\{propertyName} | Delete document property.
*PdfApi* | [**deleteStamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteStamp) | **DELETE** /pdf/\{name}/stamps/\{stampId} | Delete document stamp by ID
*PdfApi* | [**deleteTable**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#deleteTable) | **DELETE** /pdf/\{name}/tables/\{tableId} | Delete document table by ID
*PdfApi* | [**downloadFile**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#downloadFile) | **GET** /pdf/storage/file/\{path} | Download file
*PdfApi* | [**getBookmark**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getBookmark) | **GET** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Read document bookmark.
*PdfApi* | [**getBookmarks**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getBookmarks) | **GET** /pdf/\{name}/bookmarks/list/\{bookmarkPath} | Read document bookmarks node list.
*PdfApi* | [**getCaretAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getCaretAnnotation) | **GET** /pdf/\{name}/annotations/caret/\{annotationId} | Read document page caret annotation by ID.
*PdfApi* | [**getCheckBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getCheckBoxField) | **GET** /pdf/\{name}/fields/checkbox/\{fieldName} | Read document checkbox field by name.
*PdfApi* | [**getCircleAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getCircleAnnotation) | **GET** /pdf/\{name}/annotations/circle/\{annotationId} | Read document page circle annotation by ID.
*PdfApi* | [**getComboBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getComboBoxField) | **GET** /pdf/\{name}/fields/combobox/\{fieldName} | Read document combobox field by name.
*PdfApi* | [**getDiscUsage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDiscUsage) | **GET** /pdf/storage/disc | Get disc usage
*PdfApi* | [**getDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocument) | **GET** /pdf/\{name} | Read common document info.
*PdfApi* | [**getDocumentAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentAnnotations) | **GET** /pdf/\{name}/annotations | Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*PdfApi* | [**getDocumentAttachmentByIndex**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentAttachmentByIndex) | **GET** /pdf/\{name}/attachments/\{attachmentIndex} | Read document attachment info by its index.
*PdfApi* | [**getDocumentAttachments**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentAttachments) | **GET** /pdf/\{name}/attachments | Read document attachments info.
*PdfApi* | [**getDocumentBookmarks**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentBookmarks) | **GET** /pdf/\{name}/bookmarks/tree | Read document bookmarks tree.
*PdfApi* | [**getDocumentCaretAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentCaretAnnotations) | **GET** /pdf/\{name}/annotations/caret | Read document caret annotations.
*PdfApi* | [**getDocumentCheckBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentCheckBoxFields) | **GET** /pdf/\{name}/fields/checkbox | Read document checkbox fields.
*PdfApi* | [**getDocumentCircleAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentCircleAnnotations) | **GET** /pdf/\{name}/annotations/circle | Read document circle annotations.
*PdfApi* | [**getDocumentComboBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentComboBoxFields) | **GET** /pdf/\{name}/fields/combobox | Read document combobox fields.
*PdfApi* | [**getDocumentDisplayProperties**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentDisplayProperties) | **GET** /pdf/\{name}/displayproperties | Read document display properties.
*PdfApi* | [**getDocumentFileAttachmentAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentFileAttachmentAnnotations) | **GET** /pdf/\{name}/annotations/fileattachment | Read document FileAttachment annotations.
*PdfApi* | [**getDocumentFreeTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentFreeTextAnnotations) | **GET** /pdf/\{name}/annotations/freetext | Read document free text annotations.
*PdfApi* | [**getDocumentHighlightAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentHighlightAnnotations) | **GET** /pdf/\{name}/annotations/highlight | Read document highlight annotations.
*PdfApi* | [**getDocumentInkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentInkAnnotations) | **GET** /pdf/\{name}/annotations/ink | Read document ink annotations.
*PdfApi* | [**getDocumentLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentLineAnnotations) | **GET** /pdf/\{name}/annotations/line | Read document line annotations.
*PdfApi* | [**getDocumentListBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentListBoxFields) | **GET** /pdf/\{name}/fields/listbox | Read document listbox fields.
*PdfApi* | [**getDocumentMovieAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentMovieAnnotations) | **GET** /pdf/\{name}/annotations/movie | Read document movie annotations.
*PdfApi* | [**getDocumentPolygonAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentPolygonAnnotations) | **GET** /pdf/\{name}/annotations/polygon | Read document polygon annotations.
*PdfApi* | [**getDocumentPolyLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentPolyLineAnnotations) | **GET** /pdf/\{name}/annotations/polyline | Read document polyline annotations.
*PdfApi* | [**getDocumentPopupAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentPopupAnnotations) | **GET** /pdf/\{name}/annotations/popup | Read document popup annotations.
*PdfApi* | [**getDocumentPopupAnnotationsByParent**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentPopupAnnotationsByParent) | **GET** /pdf/\{name}/annotations/\{annotationId}/popup | Read document popup annotations by parent id.
*PdfApi* | [**getDocumentProperties**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentProperties) | **GET** /pdf/\{name}/documentproperties | Read document properties.
*PdfApi* | [**getDocumentProperty**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentProperty) | **GET** /pdf/\{name}/documentproperties/\{propertyName} | Read document property by name.
*PdfApi* | [**getDocumentRadioButtonFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentRadioButtonFields) | **GET** /pdf/\{name}/fields/radiobutton | Read document radiobutton fields.
*PdfApi* | [**getDocumentRedactionAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentRedactionAnnotations) | **GET** /pdf/\{name}/annotations/redaction | Read document redaction annotations.
*PdfApi* | [**getDocumentScreenAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentScreenAnnotations) | **GET** /pdf/\{name}/annotations/screen | Read document screen annotations.
*PdfApi* | [**getDocumentSignatureFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentSignatureFields) | **GET** /pdf/\{name}/fields/signature | Read document signature fields.
*PdfApi* | [**getDocumentSoundAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentSoundAnnotations) | **GET** /pdf/\{name}/annotations/sound | Read document sound annotations.
*PdfApi* | [**getDocumentSquareAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentSquareAnnotations) | **GET** /pdf/\{name}/annotations/square | Read document square annotations.
*PdfApi* | [**getDocumentSquigglyAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentSquigglyAnnotations) | **GET** /pdf/\{name}/annotations/squiggly | Read document squiggly annotations.
*PdfApi* | [**getDocumentStampAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentStampAnnotations) | **GET** /pdf/\{name}/annotations/stamp | Read document stamp annotations.
*PdfApi* | [**getDocumentStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentStamps) | **GET** /pdf/\{name}/stamps | Read document stamps.
*PdfApi* | [**getDocumentStrikeOutAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentStrikeOutAnnotations) | **GET** /pdf/\{name}/annotations/strikeout | Read document StrikeOut annotations.
*PdfApi* | [**getDocumentTables**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentTables) | **GET** /pdf/\{name}/tables | Read document tables.
*PdfApi* | [**getDocumentTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentTextAnnotations) | **GET** /pdf/\{name}/annotations/text | Read document text annotations.
*PdfApi* | [**getDocumentTextBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentTextBoxFields) | **GET** /pdf/\{name}/fields/textbox | Read document text box fields.
*PdfApi* | [**getDocumentUnderlineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDocumentUnderlineAnnotations) | **GET** /pdf/\{name}/annotations/underline | Read document underline annotations.
*PdfApi* | [**getDownloadDocumentAttachmentByIndex**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getDownloadDocumentAttachmentByIndex) | **GET** /pdf/\{name}/attachments/\{attachmentIndex}/download | Download document attachment content by its index.
*PdfApi* | [**getEpubInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getEpubInStorageToPdf) | **GET** /pdf/create/epub | Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getExportFieldsFromPdfToFdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getExportFieldsFromPdfToFdfInStorage) | **GET** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file.
*PdfApi* | [**getExportFieldsFromPdfToXfdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getExportFieldsFromPdfToXfdfInStorage) | **GET** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file.
*PdfApi* | [**getExportFieldsFromPdfToXmlInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getExportFieldsFromPdfToXmlInStorage) | **GET** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file.
*PdfApi* | [**getField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getField) | **GET** /pdf/\{name}/fields/\{fieldName} | Get document field by name.
*PdfApi* | [**getFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getFields) | **GET** /pdf/\{name}/fields | Get document fields.
*PdfApi* | [**getFileAttachmentAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getFileAttachmentAnnotation) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Read document page FileAttachment annotation by ID.
*PdfApi* | [**getFileAttachmentAnnotationData**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getFileAttachmentAnnotationData) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data | Read document page FileAttachment annotation by ID.
*PdfApi* | [**getFilesList**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getFilesList) | **GET** /pdf/storage/folder/\{path} | Get all files and folders within a folder
*PdfApi* | [**getFileVersions**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getFileVersions) | **GET** /pdf/storage/version/\{path} | Get file versions
*PdfApi* | [**getFreeTextAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getFreeTextAnnotation) | **GET** /pdf/\{name}/annotations/freetext/\{annotationId} | Read document page free text annotation by ID.
*PdfApi* | [**getHighlightAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getHighlightAnnotation) | **GET** /pdf/\{name}/annotations/highlight/\{annotationId} | Read document page highlight annotation by ID.
*PdfApi* | [**getHtmlInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getHtmlInStorageToPdf) | **GET** /pdf/create/html | Convert HTML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getImage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImage) | **GET** /pdf/\{name}/images/\{imageId} | Read document image by ID.
*PdfApi* | [**getImageExtractAsGif**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImageExtractAsGif) | **GET** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format
*PdfApi* | [**getImageExtractAsJpeg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImageExtractAsJpeg) | **GET** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format
*PdfApi* | [**getImageExtractAsPng**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImageExtractAsPng) | **GET** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format
*PdfApi* | [**getImageExtractAsTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImageExtractAsTiff) | **GET** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format
*PdfApi* | [**getImages**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImages) | **GET** /pdf/\{name}/pages/\{pageNumber}/images | Read document images.
*PdfApi* | [**getImportFieldsFromFdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImportFieldsFromFdfInStorage) | **GET** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
*PdfApi* | [**getImportFieldsFromXfdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImportFieldsFromXfdfInStorage) | **GET** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
*PdfApi* | [**getImportFieldsFromXmlInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getImportFieldsFromXmlInStorage) | **GET** /pdf/\{name}/import/xml | Import from XML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getInkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getInkAnnotation) | **GET** /pdf/\{name}/annotations/ink/\{annotationId} | Read document page ink annotation by ID.
*PdfApi* | [**getLaTeXInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getLaTeXInStorageToPdf) | **GET** /pdf/create/latex | Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getLineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getLineAnnotation) | **GET** /pdf/\{name}/annotations/line/\{annotationId} | Read document page line annotation by ID.
*PdfApi* | [**getLinkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getLinkAnnotation) | **GET** /pdf/\{name}/links/\{linkId} | Read document link annotation by ID.
*PdfApi* | [**getListBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getListBoxField) | **GET** /pdf/\{name}/fields/listbox/\{fieldName} | Read document listbox field by name.
*PdfApi* | [**getMarkdownInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getMarkdownInStorageToPdf) | **GET** /pdf/create/markdown | Convert MD file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getMhtInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getMhtInStorageToPdf) | **GET** /pdf/create/mht | Convert MHT file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getMovieAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getMovieAnnotation) | **GET** /pdf/\{name}/annotations/movie/\{annotationId} | Read document page movie annotation by ID.
*PdfApi* | [**getPage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPage) | **GET** /pdf/\{name}/pages/\{pageNumber} | Read document page info.
*PdfApi* | [**getPageAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*PdfApi* | [**getPageCaretAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageCaretAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Read document page caret annotations.
*PdfApi* | [**getPageCheckBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageCheckBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/checkbox | Read document page checkbox fields.
*PdfApi* | [**getPageCircleAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageCircleAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Read document page circle annotations.
*PdfApi* | [**getPageComboBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageComboBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/combobox | Read document page combobox fields.
*PdfApi* | [**getPageConvertToBmp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageConvertToBmp) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to Bmp image and return resulting file in response.
*PdfApi* | [**getPageConvertToEmf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageConvertToEmf) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to Emf image and return resulting file in response.
*PdfApi* | [**getPageConvertToGif**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageConvertToGif) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to Gif image and return resulting file in response.
*PdfApi* | [**getPageConvertToJpeg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageConvertToJpeg) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and return resulting file in response.
*PdfApi* | [**getPageConvertToPng**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageConvertToPng) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to Png image and return resulting file in response.
*PdfApi* | [**getPageConvertToTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageConvertToTiff) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and return resulting file in response.
*PdfApi* | [**getPageFileAttachmentAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageFileAttachmentAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Read document page FileAttachment annotations.
*PdfApi* | [**getPageFreeTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageFreeTextAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Read document page free text annotations.
*PdfApi* | [**getPageHighlightAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageHighlightAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Read document page highlight annotations.
*PdfApi* | [**getPageInkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageInkAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Read document page ink annotations.
*PdfApi* | [**getPageLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageLineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Read document page line annotations.
*PdfApi* | [**getPageLinkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageLinkAnnotation) | **GET** /pdf/\{name}/pages/\{pageNumber}/links/\{linkId} | Read document page link annotation by ID.
*PdfApi* | [**getPageLinkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageLinkAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/links | Read document page link annotations.
*PdfApi* | [**getPageListBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageListBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/listbox | Read document page listbox fields.
*PdfApi* | [**getPageMovieAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageMovieAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Read document page movie annotations.
*PdfApi* | [**getPagePolygonAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPagePolygonAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Read document page polygon annotations.
*PdfApi* | [**getPagePolyLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPagePolyLineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Read document page polyline annotations.
*PdfApi* | [**getPagePopupAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPagePopupAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/popup | Read document page popup annotations.
*PdfApi* | [**getPageRadioButtonFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageRadioButtonFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/radiobutton | Read document page radiobutton fields.
*PdfApi* | [**getPageRedactionAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageRedactionAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Read document page redaction annotations.
*PdfApi* | [**getPages**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPages) | **GET** /pdf/\{name}/pages | Read document pages info.
*PdfApi* | [**getPageScreenAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageScreenAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Read document page screen annotations.
*PdfApi* | [**getPageSignatureFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageSignatureFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/signature | Read document page signature fields.
*PdfApi* | [**getPageSoundAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageSoundAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Read document page sound annotations.
*PdfApi* | [**getPageSquareAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageSquareAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Read document page square annotations.
*PdfApi* | [**getPageSquigglyAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageSquigglyAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Read document page squiggly annotations.
*PdfApi* | [**getPageStampAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageStampAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Read document page stamp annotations.
*PdfApi* | [**getPageStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageStamps) | **GET** /pdf/\{name}/pages/\{pageNumber}/stamps | Read page document stamps.
*PdfApi* | [**getPageStrikeOutAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageStrikeOutAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Read document page StrikeOut annotations.
*PdfApi* | [**getPageTables**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageTables) | **GET** /pdf/\{name}/pages/\{pageNumber}/tables | Read document page tables.
*PdfApi* | [**getPageText**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageText) | **GET** /pdf/\{name}/pages/\{pageNumber}/text | Read page text items.
*PdfApi* | [**getPageTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageTextAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Read document page text annotations.
*PdfApi* | [**getPageTextBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageTextBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/textbox | Read document page text box fields.
*PdfApi* | [**getPageUnderlineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPageUnderlineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Read document page underline annotations.
*PdfApi* | [**getPclInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPclInStorageToPdf) | **GET** /pdf/create/pcl | Convert PCL file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getPdfInStorageToDoc**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToDoc) | **GET** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToEpub**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToEpub) | **GET** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToHtml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToHtml) | **GET** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToLaTeX**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToLaTeX) | **GET** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToMobiXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToMobiXml) | **GET** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToPdfA**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToPdfA) | **GET** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToPptx**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToPptx) | **GET** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToSvg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToSvg) | **GET** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToTiff) | **GET** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXls**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToXls) | **GET** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXlsx**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToXlsx) | **GET** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToXml) | **GET** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPdfInStorageToXps) | **GET** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and returns resulting file in response content
*PdfApi* | [**getPolygonAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPolygonAnnotation) | **GET** /pdf/\{name}/annotations/polygon/\{annotationId} | Read document page polygon annotation by ID.
*PdfApi* | [**getPolyLineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPolyLineAnnotation) | **GET** /pdf/\{name}/annotations/polyline/\{annotationId} | Read document page polyline annotation by ID.
*PdfApi* | [**getPopupAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPopupAnnotation) | **GET** /pdf/\{name}/annotations/popup/\{annotationId} | Read document page popup annotation by ID.
*PdfApi* | [**getPsInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getPsInStorageToPdf) | **GET** /pdf/create/ps | Convert PS file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getRadioButtonField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getRadioButtonField) | **GET** /pdf/\{name}/fields/radiobutton/\{fieldName} | Read document RadioButton field by name.
*PdfApi* | [**getRedactionAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getRedactionAnnotation) | **GET** /pdf/\{name}/annotations/redaction/\{annotationId} | Read document page redaction annotation by ID.
*PdfApi* | [**getScreenAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getScreenAnnotation) | **GET** /pdf/\{name}/annotations/screen/\{annotationId} | Read document page screen annotation by ID.
*PdfApi* | [**getScreenAnnotationData**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getScreenAnnotationData) | **GET** /pdf/\{name}/annotations/screen/\{annotationId}/data | Read document page screen annotation by ID.
*PdfApi* | [**getSignatureField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getSignatureField) | **GET** /pdf/\{name}/fields/signature/\{fieldName} | Read document signature field by name.
*PdfApi* | [**getSoundAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getSoundAnnotation) | **GET** /pdf/\{name}/annotations/sound/\{annotationId} | Read document page sound annotation by ID.
*PdfApi* | [**getSoundAnnotationData**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getSoundAnnotationData) | **GET** /pdf/\{name}/annotations/sound/\{annotationId}/data | Read document page sound annotation by ID.
*PdfApi* | [**getSquareAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getSquareAnnotation) | **GET** /pdf/\{name}/annotations/square/\{annotationId} | Read document page square annotation by ID.
*PdfApi* | [**getSquigglyAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getSquigglyAnnotation) | **GET** /pdf/\{name}/annotations/squiggly/\{annotationId} | Read document page squiggly annotation by ID.
*PdfApi* | [**getStampAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getStampAnnotation) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId} | Read document page stamp annotation by ID.
*PdfApi* | [**getStampAnnotationData**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getStampAnnotationData) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId}/data | Read document page stamp annotation by ID.
*PdfApi* | [**getStrikeOutAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getStrikeOutAnnotation) | **GET** /pdf/\{name}/annotations/strikeout/\{annotationId} | Read document page StrikeOut annotation by ID.
*PdfApi* | [**getSvgInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getSvgInStorageToPdf) | **GET** /pdf/create/svg | Convert SVG file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getTable**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getTable) | **GET** /pdf/\{name}/tables/\{tableId} | Read document page table by ID.
*PdfApi* | [**getText**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getText) | **GET** /pdf/\{name}/text | Read document text.
*PdfApi* | [**getTextAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getTextAnnotation) | **GET** /pdf/\{name}/annotations/text/\{annotationId} | Read document page text annotation by ID.
*PdfApi* | [**getTextBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getTextBoxField) | **GET** /pdf/\{name}/fields/textbox/\{fieldName} | Read document text box field by name.
*PdfApi* | [**getUnderlineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getUnderlineAnnotation) | **GET** /pdf/\{name}/annotations/underline/\{annotationId} | Read document page underline annotation by ID.
*PdfApi* | [**getVerifySignature**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getVerifySignature) | **GET** /pdf/\{name}/verifySignature | Verify signature document.
*PdfApi* | [**getWebInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getWebInStorageToPdf) | **GET** /pdf/create/web | Convert web page to PDF format and return resulting file in response. 
*PdfApi* | [**getWordsPerPage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getWordsPerPage) | **GET** /pdf/\{name}/pages/wordCount | Get number of words per document page.
*PdfApi* | [**getXfaPdfInStorageToAcroForm**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getXfaPdfInStorageToAcroForm) | **GET** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
*PdfApi* | [**getXmlInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getXmlInStorageToPdf) | **GET** /pdf/create/xml | Convert XML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getXpsInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getXpsInStorageToPdf) | **GET** /pdf/create/xps | Convert XPS file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getXslFoInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#getXslFoInStorageToPdf) | **GET** /pdf/create/xslfo | Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**moveFile**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#moveFile) | **PUT** /pdf/storage/file/move/\{srcPath} | Move file
*PdfApi* | [**moveFolder**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#moveFolder) | **PUT** /pdf/storage/folder/move/\{srcPath} | Move folder
*PdfApi* | [**objectExists**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#objectExists) | **GET** /pdf/storage/exist/\{path} | Check if file or folder exists
*PdfApi* | [**postAppendDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postAppendDocument) | **POST** /pdf/\{name}/appendDocument | Append document to existing one.
*PdfApi* | [**postBookmark**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postBookmark) | **POST** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Add document bookmarks.
*PdfApi* | [**postChangePasswordDocumentInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postChangePasswordDocumentInStorage) | **POST** /pdf/\{name}/changepassword | Change document password in storage.
*PdfApi* | [**postCheckBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postCheckBoxFields) | **POST** /pdf/\{name}/fields/checkbox | Add document checkbox fields.
*PdfApi* | [**postComboBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postComboBoxFields) | **POST** /pdf/\{name}/fields/combobox | Add document combobox fields.
*PdfApi* | [**postCreateDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postCreateDocument) | **POST** /pdf/\{name} | Create empty document.
*PdfApi* | [**postCreateField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postCreateField) | **POST** /pdf/\{name}/fields | Create field.
*PdfApi* | [**postDecryptDocumentInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDecryptDocumentInStorage) | **POST** /pdf/\{name}/decrypt | Decrypt document in storage.
*PdfApi* | [**postDocumentImageFooter**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDocumentImageFooter) | **POST** /pdf/\{name}/footer/image | Add document image footer.
*PdfApi* | [**postDocumentImageHeader**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDocumentImageHeader) | **POST** /pdf/\{name}/header/image | Add document image header.
*PdfApi* | [**postDocumentPageNumberStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDocumentPageNumberStamps) | **POST** /pdf/\{name}/stamps/pagenumber | Add document page number stamps.
*PdfApi* | [**postDocumentTextFooter**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDocumentTextFooter) | **POST** /pdf/\{name}/footer/text | Add document text footer.
*PdfApi* | [**postDocumentTextHeader**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDocumentTextHeader) | **POST** /pdf/\{name}/header/text | Add document text header.
*PdfApi* | [**postDocumentTextReplace**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postDocumentTextReplace) | **POST** /pdf/\{name}/text/replace | Document's replace text method.
*PdfApi* | [**postEncryptDocumentInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postEncryptDocumentInStorage) | **POST** /pdf/\{name}/encrypt | Encrypt document in storage.
*PdfApi* | [**postFlattenDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postFlattenDocument) | **POST** /pdf/\{name}/flatten | Flatten the document.
*PdfApi* | [**postImportFieldsFromFdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postImportFieldsFromFdf) | **POST** /pdf/\{name}/import/fdf | Update fields from FDF file in request.
*PdfApi* | [**postImportFieldsFromXfdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postImportFieldsFromXfdf) | **POST** /pdf/\{name}/import/xfdf | Update fields from XFDF file in request.
*PdfApi* | [**postImportFieldsFromXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postImportFieldsFromXml) | **POST** /pdf/\{name}/import/xml | Update fields from XML file in request.
*PdfApi* | [**postInsertImage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postInsertImage) | **POST** /pdf/\{name}/pages/\{pageNumber}/images | Insert image to document page.
*PdfApi* | [**postListBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postListBoxFields) | **POST** /pdf/\{name}/fields/listbox | Add document listbox fields.
*PdfApi* | [**postMovePage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postMovePage) | **POST** /pdf/\{name}/pages/\{pageNumber}/movePage | Move page to new position.
*PdfApi* | [**postOptimizeDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postOptimizeDocument) | **POST** /pdf/\{name}/optimize | Optimize document.
*PdfApi* | [**postPageCaretAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageCaretAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Add document page caret annotations.
*PdfApi* | [**postPageCertify**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageCertify) | **POST** /pdf/\{name}/pages/\{pageNumber}/certify | Certify document page.
*PdfApi* | [**postPageCircleAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageCircleAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Add document page circle annotations.
*PdfApi* | [**postPageFileAttachmentAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageFileAttachmentAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Add document page FileAttachment annotations.
*PdfApi* | [**postPageFreeTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageFreeTextAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Add document page free text annotations.
*PdfApi* | [**postPageHighlightAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageHighlightAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Add document page highlight annotations.
*PdfApi* | [**postPageImageStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageImageStamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/image | Add document page image stamps.
*PdfApi* | [**postPageInkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageInkAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Add document page ink annotations.
*PdfApi* | [**postPageLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageLineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Add document page line annotations.
*PdfApi* | [**postPageLinkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageLinkAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/links | Add document page link annotations.
*PdfApi* | [**postPageMovieAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageMovieAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Add document page movie annotations.
*PdfApi* | [**postPagePdfPageStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPagePdfPageStamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/pdfpage | Add document pdf page stamps.
*PdfApi* | [**postPagePolygonAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPagePolygonAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Add document page polygon annotations.
*PdfApi* | [**postPagePolyLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPagePolyLineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Add document page polyline annotations.
*PdfApi* | [**postPageRedactionAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageRedactionAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Add document page redaction annotations.
*PdfApi* | [**postPageScreenAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageScreenAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Add document page screen annotations.
*PdfApi* | [**postPageSoundAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageSoundAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Add document page sound annotations.
*PdfApi* | [**postPageSquareAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageSquareAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Add document page square annotations.
*PdfApi* | [**postPageSquigglyAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageSquigglyAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Add document page squiggly annotations.
*PdfApi* | [**postPageStampAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageStampAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Add document page stamp annotations.
*PdfApi* | [**postPageStrikeOutAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageStrikeOutAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Add document page StrikeOut annotations.
*PdfApi* | [**postPageTables**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageTables) | **POST** /pdf/\{name}/pages/\{pageNumber}/tables | Add document page tables.
*PdfApi* | [**postPageTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageTextAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Add document page text annotations.
*PdfApi* | [**postPageTextReplace**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageTextReplace) | **POST** /pdf/\{name}/pages/\{pageNumber}/text/replace | Page's replace text method.
*PdfApi* | [**postPageTextStamps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageTextStamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/text | Add document page text stamps.
*PdfApi* | [**postPageUnderlineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPageUnderlineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Add document page underline annotations.
*PdfApi* | [**postPopupAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postPopupAnnotation) | **POST** /pdf/\{name}/annotations/\{annotationId}/popup | Add document popup annotations.
*PdfApi* | [**postRadioButtonFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postRadioButtonFields) | **POST** /pdf/\{name}/fields/radiobutton | Add document RadioButton fields.
*PdfApi* | [**postSignDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postSignDocument) | **POST** /pdf/\{name}/sign | Sign document.
*PdfApi* | [**postSignPage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postSignPage) | **POST** /pdf/\{name}/pages/\{pageNumber}/sign | Sign page.
*PdfApi* | [**postSplitDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postSplitDocument) | **POST** /pdf/\{name}/split | Split document to parts.
*PdfApi* | [**postTextBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#postTextBoxFields) | **POST** /pdf/\{name}/fields/textbox | Add document text box fields.
*PdfApi* | [**putAddNewPage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putAddNewPage) | **PUT** /pdf/\{name}/pages | Add new page to end of the document.
*PdfApi* | [**putAddText**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putAddText) | **PUT** /pdf/\{name}/pages/\{pageNumber}/text | Add text to PDF document page.
*PdfApi* | [**putAnnotationsFlatten**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putAnnotationsFlatten) | **PUT** /pdf/\{name}/annotations/flatten | Flattens the annotations of the specified types
*PdfApi* | [**putBookmark**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putBookmark) | **PUT** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Update document bookmark.
*PdfApi* | [**putCaretAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putCaretAnnotation) | **PUT** /pdf/\{name}/annotations/caret/\{annotationId} | Replace document caret annotation
*PdfApi* | [**putChangePasswordDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putChangePasswordDocument) | **PUT** /pdf/changepassword | Change document password from content.
*PdfApi* | [**putCheckBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putCheckBoxField) | **PUT** /pdf/\{name}/fields/checkbox/\{fieldName} | Replace document checkbox field
*PdfApi* | [**putCircleAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putCircleAnnotation) | **PUT** /pdf/\{name}/annotations/circle/\{annotationId} | Replace document circle annotation
*PdfApi* | [**putComboBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putComboBoxField) | **PUT** /pdf/\{name}/fields/combobox/\{fieldName} | Replace document combobox field
*PdfApi* | [**putCreateDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putCreateDocument) | **PUT** /pdf/\{name} | Create empty document.
*PdfApi* | [**putDecryptDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putDecryptDocument) | **PUT** /pdf/decrypt | Decrypt document from content.
*PdfApi* | [**putDocumentDisplayProperties**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putDocumentDisplayProperties) | **PUT** /pdf/\{name}/displayproperties | Update document display properties.
*PdfApi* | [**putEncryptDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putEncryptDocument) | **PUT** /pdf/encrypt | Encrypt document from content.
*PdfApi* | [**putEpubInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putEpubInStorageToPdf) | **PUT** /pdf/\{name}/create/epub | Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putExportFieldsFromPdfToFdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putExportFieldsFromPdfToFdfInStorage) | **PUT** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file in storage.
*PdfApi* | [**putExportFieldsFromPdfToXfdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putExportFieldsFromPdfToXfdfInStorage) | **PUT** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file in storage.
*PdfApi* | [**putExportFieldsFromPdfToXmlInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putExportFieldsFromPdfToXmlInStorage) | **PUT** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file in storage.
*PdfApi* | [**putFieldsFlatten**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putFieldsFlatten) | **PUT** /pdf/\{name}/fields/flatten | Flatten form fields in document.
*PdfApi* | [**putFileAttachmentAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putFileAttachmentAnnotation) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Replace document FileAttachment annotation
*PdfApi* | [**putFileAttachmentAnnotationDataExtract**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putFileAttachmentAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data/extract | Extract document FileAttachment annotation content to storage
*PdfApi* | [**putFreeTextAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putFreeTextAnnotation) | **PUT** /pdf/\{name}/annotations/freetext/\{annotationId} | Replace document free text annotation
*PdfApi* | [**putHighlightAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putHighlightAnnotation) | **PUT** /pdf/\{name}/annotations/highlight/\{annotationId} | Replace document highlight annotation
*PdfApi* | [**putHtmlInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putHtmlInStorageToPdf) | **PUT** /pdf/\{name}/create/html | Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putImageExtractAsGif**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImageExtractAsGif) | **PUT** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format to folder
*PdfApi* | [**putImageExtractAsJpeg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImageExtractAsJpeg) | **PUT** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format to folder
*PdfApi* | [**putImageExtractAsPng**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImageExtractAsPng) | **PUT** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format to folder
*PdfApi* | [**putImageExtractAsTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImageExtractAsTiff) | **PUT** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format to folder
*PdfApi* | [**putImageInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImageInStorageToPdf) | **PUT** /pdf/\{name}/create/images | Convert image file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putImagesExtractAsGif**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImagesExtractAsGif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/gif | Extract document images in GIF format to folder.
*PdfApi* | [**putImagesExtractAsJpeg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImagesExtractAsJpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/jpeg | Extract document images in JPEG format to folder.
*PdfApi* | [**putImagesExtractAsPng**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImagesExtractAsPng) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/png | Extract document images in PNG format to folder.
*PdfApi* | [**putImagesExtractAsTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImagesExtractAsTiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/tiff | Extract document images in TIFF format to folder.
*PdfApi* | [**putImportFieldsFromFdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImportFieldsFromFdfInStorage) | **PUT** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
*PdfApi* | [**putImportFieldsFromXfdfInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImportFieldsFromXfdfInStorage) | **PUT** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
*PdfApi* | [**putImportFieldsFromXmlInStorage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putImportFieldsFromXmlInStorage) | **PUT** /pdf/\{name}/import/xml | Update fields from XML file in storage.
*PdfApi* | [**putInkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putInkAnnotation) | **PUT** /pdf/\{name}/annotations/ink/\{annotationId} | Replace document ink annotation
*PdfApi* | [**putLaTeXInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putLaTeXInStorageToPdf) | **PUT** /pdf/\{name}/create/latex | Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putLineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putLineAnnotation) | **PUT** /pdf/\{name}/annotations/line/\{annotationId} | Replace document line annotation
*PdfApi* | [**putLinkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putLinkAnnotation) | **PUT** /pdf/\{name}/links/\{linkId} | Replace document page link annotations
*PdfApi* | [**putListBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putListBoxField) | **PUT** /pdf/\{name}/fields/listbox/\{fieldName} | Replace document listbox field
*PdfApi* | [**putMarkdownInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putMarkdownInStorageToPdf) | **PUT** /pdf/\{name}/create/markdown | Convert MD file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putMergeDocuments**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putMergeDocuments) | **PUT** /pdf/\{name}/merge | Merge a list of documents.
*PdfApi* | [**putMhtInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putMhtInStorageToPdf) | **PUT** /pdf/\{name}/create/mht | Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putMovieAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putMovieAnnotation) | **PUT** /pdf/\{name}/annotations/movie/\{annotationId} | Replace document movie annotation
*PdfApi* | [**putPageAddStamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageAddStamp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/stamp | Add page stamp.
*PdfApi* | [**putPageConvertToBmp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageConvertToBmp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to bmp image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToEmf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageConvertToEmf) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to emf image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToGif**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageConvertToGif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to gif image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToJpeg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageConvertToJpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToPng**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageConvertToPng) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to png image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPageConvertToTiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and upload resulting file to storage.
*PdfApi* | [**putPclInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPclInStorageToPdf) | **PUT** /pdf/\{name}/create/pcl | Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putPdfInRequestToDoc**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToDoc) | **PUT** /pdf/convert/doc | Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToEpub**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToEpub) | **PUT** /pdf/convert/epub | Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToHtml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToHtml) | **PUT** /pdf/convert/html | Converts PDF document (in request content) to Html format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToLaTeX**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToLaTeX) | **PUT** /pdf/convert/latex | Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToMobiXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToMobiXml) | **PUT** /pdf/convert/mobixml | Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToPdfA**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToPdfA) | **PUT** /pdf/convert/pdfa | Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToPptx**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToPptx) | **PUT** /pdf/convert/pptx | Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToSvg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToSvg) | **PUT** /pdf/convert/svg | Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToTiff) | **PUT** /pdf/convert/tiff | Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXls**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToXls) | **PUT** /pdf/convert/xls | Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXlsx**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToXlsx) | **PUT** /pdf/convert/xlsx | Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToXml) | **PUT** /pdf/convert/xml | Converts PDF document (in request content) to XML format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInRequestToXps) | **PUT** /pdf/convert/xps | Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
*PdfApi* | [**putPdfInStorageToDoc**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToDoc) | **PUT** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToEpub**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToEpub) | **PUT** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToHtml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToHtml) | **PUT** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToLaTeX**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToLaTeX) | **PUT** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToMobiXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToMobiXml) | **PUT** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToPdfA**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToPdfA) | **PUT** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToPptx**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToPptx) | **PUT** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToSvg**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToSvg) | **PUT** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToTiff**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToTiff) | **PUT** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXls**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToXls) | **PUT** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXlsx**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToXlsx) | **PUT** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXml**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToXml) | **PUT** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXps**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPdfInStorageToXps) | **PUT** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
*PdfApi* | [**putPolygonAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPolygonAnnotation) | **PUT** /pdf/\{name}/annotations/polygon/\{annotationId} | Replace document polygon annotation
*PdfApi* | [**putPolyLineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPolyLineAnnotation) | **PUT** /pdf/\{name}/annotations/polyline/\{annotationId} | Replace document polyline annotation
*PdfApi* | [**putPopupAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPopupAnnotation) | **PUT** /pdf/\{name}/annotations/popup/\{annotationId} | Replace document popup annotation
*PdfApi* | [**putPrivileges**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPrivileges) | **PUT** /pdf/\{name}/privileges | Update privilege document.
*PdfApi* | [**putPsInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putPsInStorageToPdf) | **PUT** /pdf/\{name}/create/ps | Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putRadioButtonField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putRadioButtonField) | **PUT** /pdf/\{name}/fields/radiobutton/\{fieldName} | Replace document RadioButton field
*PdfApi* | [**putRedactionAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putRedactionAnnotation) | **PUT** /pdf/\{name}/annotations/redaction/\{annotationId} | Replace document redaction annotation
*PdfApi* | [**putReplaceImage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putReplaceImage) | **PUT** /pdf/\{name}/images/\{imageId} | Replace document image.
*PdfApi* | [**putScreenAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putScreenAnnotation) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId} | Replace document screen annotation
*PdfApi* | [**putScreenAnnotationDataExtract**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putScreenAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId}/data/extract | Extract document screen annotation content to storage
*PdfApi* | [**putSearchableDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSearchableDocument) | **PUT** /pdf/\{name}/ocr | Create searchable PDF document. Generate OCR layer for images in input PDF document.
*PdfApi* | [**putSetProperty**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSetProperty) | **PUT** /pdf/\{name}/documentproperties/\{propertyName} | Add/update document property.
*PdfApi* | [**putSoundAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSoundAnnotation) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId} | Replace document sound annotation
*PdfApi* | [**putSoundAnnotationDataExtract**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSoundAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId}/data/extract | Extract document sound annotation content to storage
*PdfApi* | [**putSquareAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSquareAnnotation) | **PUT** /pdf/\{name}/annotations/square/\{annotationId} | Replace document square annotation
*PdfApi* | [**putSquigglyAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSquigglyAnnotation) | **PUT** /pdf/\{name}/annotations/squiggly/\{annotationId} | Replace document squiggly annotation
*PdfApi* | [**putStampAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putStampAnnotation) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId} | Replace document stamp annotation
*PdfApi* | [**putStampAnnotationDataExtract**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putStampAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId}/data/extract | Extract document stamp annotation content to storage
*PdfApi* | [**putStrikeOutAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putStrikeOutAnnotation) | **PUT** /pdf/\{name}/annotations/strikeout/\{annotationId} | Replace document StrikeOut annotation
*PdfApi* | [**putSvgInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putSvgInStorageToPdf) | **PUT** /pdf/\{name}/create/svg | Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putTable**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putTable) | **PUT** /pdf/\{name}/tables/\{tableId} | Replace document page table.
*PdfApi* | [**putTextAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putTextAnnotation) | **PUT** /pdf/\{name}/annotations/text/\{annotationId} | Replace document text annotation
*PdfApi* | [**putTextBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putTextBoxField) | **PUT** /pdf/\{name}/fields/textbox/\{fieldName} | Replace document text box field
*PdfApi* | [**putUnderlineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putUnderlineAnnotation) | **PUT** /pdf/\{name}/annotations/underline/\{annotationId} | Replace document underline annotation
*PdfApi* | [**putUpdateField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putUpdateField) | **PUT** /pdf/\{name}/fields/\{fieldName} | Update field.
*PdfApi* | [**putUpdateFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putUpdateFields) | **PUT** /pdf/\{name}/fields | Update fields.
*PdfApi* | [**putWebInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putWebInStorageToPdf) | **PUT** /pdf/\{name}/create/web | Convert web page to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXfaPdfInRequestToAcroForm**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putXfaPdfInRequestToAcroForm) | **PUT** /pdf/convert/xfatoacroform | Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
*PdfApi* | [**putXfaPdfInStorageToAcroForm**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putXfaPdfInStorageToAcroForm) | **PUT** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
*PdfApi* | [**putXmlInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putXmlInStorageToPdf) | **PUT** /pdf/\{name}/create/xml | Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXpsInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putXpsInStorageToPdf) | **PUT** /pdf/\{name}/create/xps | Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXslFoInStorageToPdf**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#putXslFoInStorageToPdf) | **PUT** /pdf/\{name}/create/xslfo | Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**storageExists**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#storageExists) | **GET** /pdf/storage/\{storageName}/exist | Check if storage exists
*PdfApi* | [**uploadFile**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfApi.md#uploadFile) | **PUT** /pdf/storage/file/\{path} | Upload file

## Documentation for Models

Class | Description
----- | -----
[**Annotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Annotation.md) | Provides annotation.
[**AnnotationFlags**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AnnotationFlags.md) | A set of flags specifying various characteristics of the annotation.
[**AnnotationInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AnnotationInfo.md) | Provides annotation.
[**AnnotationsInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AnnotationsInfo.md) | Object representing a list of annotation info objects.
[**AnnotationsInfoResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AnnotationsInfoResponse.md) | Represents multiple annotations info reponse
[**AnnotationState**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AnnotationState.md) | The enumeration of states to which the original annotation can be set.
[**AnnotationType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AnnotationType.md) | 
[**AntialiasingProcessingType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AntialiasingProcessingType.md) | This enum describes possible antialiasing measures during conversion
[**AsposeResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AsposeResponse.md) | Base class for all responses.
[**Attachment**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Attachment.md) | Provides link to attachment.
[**AttachmentResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AttachmentResponse.md) | Represents response containing single attachment info
[**Attachments**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Attachments.md) | Represents list of attachment.
[**AttachmentsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/AttachmentsResponse.md) | Represents response containing multiple attachments info
[**Bookmark**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Bookmark.md) | Provides link to bookmark.
[**BookmarkResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BookmarkResponse.md) | Represents response containing single bookmark info
[**Bookmarks**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Bookmarks.md) | Represents list of bookmark.
[**BookmarksResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BookmarksResponse.md) | Represents response containing multiple bookmarks info
[**Border**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Border.md) | Class representing characteristics of annotation border.
[**BorderCornerStyle**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BorderCornerStyle.md) | Enumerates the border corner styles for border.
[**BorderEffect**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BorderEffect.md) | Describes effect which should be applied to the border of the annotations.
[**BorderInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BorderInfo.md) | This class represents border for graphics elements.
[**BorderStyle**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BorderStyle.md) | Describes style of the annotation border.
[**BoxStyle**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/BoxStyle.md) | Represents an enumeration of available BoxStyle types.
[**CapStyle**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CapStyle.md) | Style of line ending of Ink annotation line. 
[**CaptionPosition**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CaptionPosition.md) | Enumeration of the annotation’s caption positioning.
[**CaretAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CaretAnnotation.md) | Provides CaretAnnotation.
[**CaretAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CaretAnnotationResponse.md) | Represents response containing single caret annotation object
[**CaretAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CaretAnnotations.md) | Object representing a list of caret annotations.
[**CaretAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CaretAnnotationsResponse.md) | Represents response containing multiple caret annotation objects
[**CaretSymbol**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CaretSymbol.md) | A symbol to be associated with the caret.
[**Cell**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Cell.md) | Represents a cell of the table's row.
[**CellRecognized**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CellRecognized.md) | 
[**CheckBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CheckBoxField.md) | Provides CheckBoxField.
[**CheckBoxFieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CheckBoxFieldResponse.md) | Represents response containing single checkbox field object
[**CheckBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CheckBoxFields.md) | Object representing a list of checkbox fields.
[**CheckBoxFieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CheckBoxFieldsResponse.md) | Represents response containing multiple checkbox field objects
[**ChoiceField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ChoiceField.md) | Provides Choice field.
[**CircleAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CircleAnnotation.md) | Provides CircleAnnotation.
[**CircleAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CircleAnnotationResponse.md) | Represents response containing single circle annotation object
[**CircleAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CircleAnnotations.md) | Object representing a list of circle annotations.
[**CircleAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CircleAnnotationsResponse.md) | Represents response containing multiple circle annotation objects
[**Color**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Color.md) | Represents color DTO.
[**ColorDepth**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ColorDepth.md) | Used to specify the parameter value passed to a Tiff image device.
[**ColumnAdjustment**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ColumnAdjustment.md) | Enumerates column adjustment types.
[**ComboBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ComboBoxField.md) | Provides ComboBoxField.
[**ComboBoxFieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ComboBoxFieldResponse.md) | Represents response containing single combobox field object
[**ComboBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ComboBoxFields.md) | Object representing a list of combobox fields.
[**ComboBoxFieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ComboBoxFieldsResponse.md) | Represents response containing multiple combobox field objects
[**CommonFigureAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CommonFigureAnnotation.md) | Provides CommonFigureAnnotation.
[**CompressionType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CompressionType.md) | Used to specify the parameter value passed to a Tiff image device.
[**CryptoAlgorithm**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/CryptoAlgorithm.md) | Represent type of cryptographic algorithm that used in encryption/decryption routines.
[**Dash**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Dash.md) | Class representing line dash pattern.
[**DefaultPageConfig**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DefaultPageConfig.md) | Provides link to DefaultPageConfig.
[**Direction**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Direction.md) | Text direction.
[**DiscUsage**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DiscUsage.md) | Class for disc space information.
[**DisplayProperties**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DisplayProperties.md) | Provides link to DisplayProperties.
[**DisplayPropertiesResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DisplayPropertiesResponse.md) | Represents response containing DisplayProperties
[**DocFormat**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocFormat.md) | Allows to specify .doc or .docx file format.
[**DocMDPAccessPermissionType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocMDPAccessPermissionType.md) | The access permissions granted for this document. Valid values are: 1 - No changes to the document are permitted; any change to the document invalidates the signature. 2 - Permitted changes are filling in forms, instantiating page templates, and signing; other changes invalidate the signature. 3 - Permitted changes are the same as for 2, as well as annotation creation, deletion, and modification; other changes invalidate the signature.
[**DocRecognitionMode**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocRecognitionMode.md) | Allows to control how a PDF document is converted into a word processing document.
[**Document**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Document.md) | Represents document DTO.
[**DocumentConfig**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentConfig.md) | Provides link to DocumentConfig.
[**DocumentPageResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentPageResponse.md) | Represents response containing single page info
[**DocumentPagesResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentPagesResponse.md) | Represents response containing multiple pages info
[**DocumentPrivilege**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentPrivilege.md) | Represents the privileges for accessing Pdf file.
[**DocumentProperties**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentProperties.md) | Represents list of PDF document properties.
[**DocumentPropertiesResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentPropertiesResponse.md) | Represents response containing multiple document properties info
[**DocumentProperty**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentProperty.md) | Pdf document property.
[**DocumentPropertyResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentPropertyResponse.md) | Represents response containing single document property info
[**DocumentResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/DocumentResponse.md) | Represents response containing document info
[**EpubRecognitionMode**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/EpubRecognitionMode.md) | When PDF file (that usually has fixed layout) is being converted, the conversion engine tries to perform grouping and multi-level analysis to restore the original document author's intent and produce result in flow layout. This property tunes that conversion for this or that desirable method of recognition of content. 
[**Error**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Error.md) | Error
[**ErrorDetails**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ErrorDetails.md) | The error details
[**Field**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Field.md) | Represents form field.
[**FieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FieldResponse.md) | Represents response containing single field info
[**Fields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Fields.md) | Represents list of form fields.
[**FieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FieldsResponse.md) | Represents response containing multiple fields info
[**FieldType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FieldType.md) | Represents an enumeration of available field types.
[**FileAttachmentAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileAttachmentAnnotation.md) | Provides FileAttachmentAnnotation.
[**FileAttachmentAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileAttachmentAnnotationResponse.md) | Represents response containing single FileAttachment annotation object
[**FileAttachmentAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileAttachmentAnnotations.md) | Object representing a list of FileAttachment annotations.
[**FileAttachmentAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileAttachmentAnnotationsResponse.md) | Represents response containing multiple FileAttachment annotation objects
[**FileIcon**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileIcon.md) | An icon to be used in displaying the annotation.
[**FilesList**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FilesList.md) | Files list
[**FilesUploadResult**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FilesUploadResult.md) | File upload result
[**FileVersion**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileVersion.md) | File Version
[**FileVersions**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FileVersions.md) | File versions FileVersion.
[**FontEncodingRules**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FontEncodingRules.md) | This enumeration defines rules which tune encoding logic
[**FontSavingModes**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FontSavingModes.md) | Enumerates modes that can be used for saving of fonts referenced in saved PDF 
[**FontStyles**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FontStyles.md) | Specifies style information applied to text.
[**FormField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FormField.md) | Provides form field.
[**FreeTextAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FreeTextAnnotation.md) | Provides FreeTextAnnotation.
[**FreeTextAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FreeTextAnnotationResponse.md) | Represents response containing single free text annotation object
[**FreeTextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FreeTextAnnotations.md) | Object representing a list of free text annotations.
[**FreeTextAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FreeTextAnnotationsResponse.md) | Represents response containing multiple free text annotation objects
[**FreeTextIntent**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/FreeTextIntent.md) | Enumerates the intents of the free text annotation.
[**GraphInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/GraphInfo.md) | Represents graphics info.
[**HighlightAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HighlightAnnotation.md) | Provides HighlightAnnotation.
[**HighlightAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HighlightAnnotationResponse.md) | Represents response containing single highlight annotation object
[**HighlightAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HighlightAnnotations.md) | Object representing a list of highlight annotations.
[**HighlightAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HighlightAnnotationsResponse.md) | Represents response containing multiple highlight annotation objects
[**HorizontalAlignment**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HorizontalAlignment.md) | Describes horizontal alignment.
[**HtmlDocumentType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HtmlDocumentType.md) | Represents enumeration of the Html document types.
[**HtmlMarkupGenerationModes**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/HtmlMarkupGenerationModes.md) | Sometimes specific reqirments to created HTML are present. This enum defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. 
[**Image**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Image.md) | Represents image DTO.
[**ImageFooter**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageFooter.md) | Represents Pdf image footer.
[**ImageHeader**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageHeader.md) | Represents Pdf image header.
[**ImageResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageResponse.md) | Represents response containing single image info
[**Images**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Images.md) | Represents list of images.
[**ImageSrcType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageSrcType.md) | Allows to specify image file format.
[**ImagesResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImagesResponse.md) | Represents response containing multiple images info
[**ImageStamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageStamp.md) | Represents Pdf stamps.
[**ImageTemplate**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageTemplate.md) | Template of image.
[**ImageTemplatesRequest**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ImageTemplatesRequest.md) | Create document from images request.
[**InkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/InkAnnotation.md) | Provides InkAnnotation.
[**InkAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/InkAnnotationResponse.md) | Represents response containing single ink annotation object
[**InkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/InkAnnotations.md) | Object representing a list of ink annotations.
[**InkAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/InkAnnotationsResponse.md) | Represents response containing multiple ink annotation objects
[**Justification**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Justification.md) | Enumerates the forms of quadding (justification) to be used in displaying the annotation’s text.
[**LettersPositioningMethods**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LettersPositioningMethods.md) | It enumerates possible modes of positioning of letters in words in result HTML 
[**LineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineAnnotation.md) | Provides LineAnnotation.
[**LineAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineAnnotationResponse.md) | Represents response containing single line annotation object
[**LineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineAnnotations.md) | Object representing a list of line annotations.
[**LineAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineAnnotationsResponse.md) | Represents response containing multiple line annotation objects
[**LineEnding**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineEnding.md) | Enumerates the line ending styles to be used in drawing the line.
[**LineIntent**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineIntent.md) | Enumerates the intents of the line annotation.
[**LineSpacing**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LineSpacing.md) | Defines line spacing specifics
[**Link**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Link.md) | Provides information for the object link. This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7
[**LinkActionType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkActionType.md) | Represents list of link action types.
[**LinkAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkAnnotation.md) | Provides link to linkAnnotation.
[**LinkAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkAnnotationResponse.md) | Represents response containing single link info
[**LinkAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkAnnotations.md) | Object representing a list of link annotations.
[**LinkAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkAnnotationsResponse.md) | Represents response containing multiple links info
[**LinkElement**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkElement.md) | Represents base DTO object.
[**LinkHighlightingMode**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/LinkHighlightingMode.md) | Enumerates the annotation’s highlighting mode, the visual effect to be used when the mouse button is pressed or held down inside its active area.
[**ListBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ListBoxField.md) | Provides ListBoxField.
[**ListBoxFieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ListBoxFieldResponse.md) | Represents response containing single listbox field object
[**ListBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ListBoxFields.md) | Object representing a list of listbox fields.
[**ListBoxFieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ListBoxFieldsResponse.md) | Represents response containing multiple listbox field objects
[**MarginInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MarginInfo.md) | This class represents a margin for different objects.
[**MarkupAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MarkupAnnotation.md) | Provides MarkupAnnotation.
[**MergeDocuments**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MergeDocuments.md) | Documents for merging.
[**MovieAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MovieAnnotation.md) | Provides MovieAnnotation.
[**MovieAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MovieAnnotationResponse.md) | Represents response containing single movie annotation object
[**MovieAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MovieAnnotations.md) | Object representing a list of movie annotations.
[**MovieAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/MovieAnnotationsResponse.md) | Represents response containing multiple movie annotation objects
[**ObjectExist**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ObjectExist.md) | Object exists
[**OptimizeOptions**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/OptimizeOptions.md) | Represents Pdf optimize options.
[**Option**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Option.md) | Provides form option.
[**Page**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Page.md) | Provides link to page.
[**PageLayout**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PageLayout.md) | Descibes page layout.
[**PageMode**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PageMode.md) | Class descibes used components of the document page.
[**PageNumberStamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PageNumberStamp.md) | Represents Pdf stamps.
[**Pages**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Pages.md) | Represents list of pages.
[**PageWordCount**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PageWordCount.md) | Page words count.
[**Paragraph**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Paragraph.md) | Represents text paragraphs as multiline text object.
[**PartsEmbeddingModes**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PartsEmbeddingModes.md) | This enum enumerates possible modes of embedding of files referenced in HTML It allows to control whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities 
[**PdfAType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfAType.md) | Allows to specify PdfA file format.
[**PdfPageStamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PdfPageStamp.md) | Represents Pdf stamps.
[**PermissionsFlags**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PermissionsFlags.md) | This enum represents user's permissions for a pdf.
[**Point**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Point.md) | Represent point with fractional coordinates.
[**PolyAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolyAnnotation.md) | Provides PolyAnnotation.
[**PolygonAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolygonAnnotation.md) | Provides PolygonAnnotation.
[**PolygonAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolygonAnnotationResponse.md) | Represents response containing single polygon annotation object
[**PolygonAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolygonAnnotations.md) | Object representing a list of polygon annotations.
[**PolygonAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolygonAnnotationsResponse.md) | Represents response containing multiple polygon annotation objects
[**PolyIntent**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolyIntent.md) | Enumerates the intents of the polygon or polyline annotation.
[**PolyLineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolyLineAnnotation.md) | Provides PolyLineAnnotation.
[**PolyLineAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolyLineAnnotationResponse.md) | Represents response containing single polyline annotation object
[**PolyLineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolyLineAnnotations.md) | Object representing a list of polyline annotations.
[**PolyLineAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PolyLineAnnotationsResponse.md) | Represents response containing multiple polyline annotation objects
[**PopupAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PopupAnnotation.md) | Provides PopupAnnotation.
[**PopupAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PopupAnnotationResponse.md) | Represents response containing single popup annotation object
[**PopupAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PopupAnnotations.md) | Object representing a list of popup annotations.
[**PopupAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PopupAnnotationsResponse.md) | Represents response containing multiple popup annotation objects
[**PopupAnnotationWithParent**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/PopupAnnotationWithParent.md) | Provides PopupAnnotation.
[**Position**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Position.md) | Represents a position object
[**RadioButtonField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RadioButtonField.md) | Provides RadioButtonField.
[**RadioButtonFieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RadioButtonFieldResponse.md) | Represents response containing single RadioButton field object
[**RadioButtonFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RadioButtonFields.md) | Object representing a list of radiobox fields.
[**RadioButtonFieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RadioButtonFieldsResponse.md) | Represents response containing multiple RadioButton field objects
[**RadioButtonOptionField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RadioButtonOptionField.md) | Provides RadioButtonField.
[**RasterImagesSavingModes**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RasterImagesSavingModes.md) | Converted PDF can contain raster images(.png, *.jpeg etc.) This enum defines methods of how raster images can be handled during conversion of PDF to HTML 
[**Rectangle**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Rectangle.md) | Represents rectangle DTO.
[**RedactionAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RedactionAnnotation.md) | Provides RedactionAnnotation.
[**RedactionAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RedactionAnnotationResponse.md) | Represents response containing single redaction annotation object
[**RedactionAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RedactionAnnotations.md) | Object representing a list of redaction annotations.
[**RedactionAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RedactionAnnotationsResponse.md) | Represents response containing multiple redaction annotation objects
[**Rotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Rotation.md) | Enumeration of possible rotation values.
[**Row**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Row.md) | Represents a row of the table.
[**RowRecognized**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/RowRecognized.md) | 
[**ScreenAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ScreenAnnotation.md) | Provides ScreenAnnotation.
[**ScreenAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ScreenAnnotationResponse.md) | Represents response containing single screen annotation object
[**ScreenAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ScreenAnnotations.md) | Object representing a list of screen annotations.
[**ScreenAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ScreenAnnotationsResponse.md) | Represents response containing multiple screen annotation objects
[**Segment**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Segment.md) | Represents segment of Pdf text.
[**ShapeType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/ShapeType.md) | This enum represents shape type for the extracted images.
[**Signature**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Signature.md) | Represents signature.
[**SignatureCustomAppearance**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureCustomAppearance.md) | An abstract class which represents signature custon appearance object.
[**SignatureField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureField.md) | Provides SignatureField.
[**SignatureFieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureFieldResponse.md) | Represents response containing single signature field object
[**SignatureFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureFields.md) | Object representing a list of signature fields.
[**SignatureFieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureFieldsResponse.md) | Represents response containing multiple signature field objects
[**SignatureType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureType.md) | The type of signature.
[**SignatureVerifyResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SignatureVerifyResponse.md) | Represent responce containing signature verification result
[**SoundAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SoundAnnotation.md) | Provides SoundAnnotation.
[**SoundAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SoundAnnotationResponse.md) | Represents response containing single Sound annotation object
[**SoundAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SoundAnnotations.md) | Object representing a list of Sound annotations.
[**SoundAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SoundAnnotationsResponse.md) | Represents response containing multiple sound annotation objects
[**SoundEncoding**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SoundEncoding.md) | The encoding format for the sample data. 
[**SoundIcon**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SoundIcon.md) | An icon to be used in displaying the annotation.
[**SplitResult**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SplitResult.md) | Represents split result object.
[**SplitResultDocument**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SplitResultDocument.md) | Represents split result document,
[**SplitResultResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SplitResultResponse.md) | Represents responce containing split result.
[**SquareAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquareAnnotation.md) | Provides SquareAnnotation.
[**SquareAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquareAnnotationResponse.md) | Represents response containing single square annotation object
[**SquareAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquareAnnotations.md) | Object representing a list of square annotations.
[**SquareAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquareAnnotationsResponse.md) | Represents response containing multiple square annotation objects
[**SquigglyAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquigglyAnnotation.md) | Provides SquigglyAnnotation.
[**SquigglyAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquigglyAnnotationResponse.md) | Represents response containing single squiggly-underline annotation object
[**SquigglyAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquigglyAnnotations.md) | Object representing a list of squiggly-underline annotations.
[**SquigglyAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/SquigglyAnnotationsResponse.md) | Represents response containing multiple squiggly-underline annotation objects
[**Stamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Stamp.md) | Represents Pdf stamps.
[**StampAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampAnnotation.md) | Provides StampAnnotation.
[**StampAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampAnnotationResponse.md) | Represents response containing single stamp annotation object
[**StampAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampAnnotations.md) | Object representing a list of stamp annotations.
[**StampAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampAnnotationsResponse.md) | Represents response containing multiple stamp annotation objects
[**StampBase**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampBase.md) | Represents Pdf stamps.
[**StampIcon**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampIcon.md) | Enumerates the icons to be used in displaying the annotation.
[**StampInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampInfo.md) | Provides stamp info.
[**StampsInfo**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampsInfo.md) | Object representing a list of stamps.
[**StampsInfoResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampsInfoResponse.md) | Represents multiple stamps info reponse
[**StampType**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StampType.md) | Represents enumeration of the stamp types.
[**StorageExist**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StorageExist.md) | Storage exists
[**StorageFile**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StorageFile.md) | File or folder information
[**StrikeOutAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StrikeOutAnnotation.md) | Provides StrikeOutAnnotation.
[**StrikeOutAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StrikeOutAnnotationResponse.md) | Represents response containing single strikeout annotation object
[**StrikeOutAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StrikeOutAnnotations.md) | Object representing a list of strikeout annotations.
[**StrikeOutAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/StrikeOutAnnotationsResponse.md) | Represents response containing multiple strikeout annotation objects
[**Table**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/Table.md) | Represents a table that can be added to the page.
[**TableBroken**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TableBroken.md) | Enumerates the table broken.
[**TableRecognized**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TableRecognized.md) | 
[**TableRecognizedResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TableRecognizedResponse.md) | Represents response containing single recognized table
[**TablesRecognized**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TablesRecognized.md) | Represents list of recognized tables.
[**TablesRecognizedResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TablesRecognizedResponse.md) | Represents response containing multiple tables info
[**TextAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextAnnotation.md) | Provides TextAnnotation.
[**TextAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextAnnotationResponse.md) | Represents response containing single text annotation object
[**TextAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextAnnotations.md) | Object representing a list of text annotations.
[**TextAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextAnnotationsResponse.md) | Represents response containing multiple text annotation objects
[**TextBoxField**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextBoxField.md) | Provides TextBoxField.
[**TextBoxFieldResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextBoxFieldResponse.md) | Represents response containing single text box field object
[**TextBoxFields**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextBoxFields.md) | Object representing a list of text box fields.
[**TextBoxFieldsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextBoxFieldsResponse.md) | Represents response containing multiple text box field objects
[**TextFooter**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextFooter.md) | Represents Pdf text header.
[**TextHeader**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextHeader.md) | Represents Pdf text header.
[**TextHorizontalAlignment**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextHorizontalAlignment.md) | Describes text horizontal alignment.
[**TextIcon**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextIcon.md) | Enumerates the icons to be used in displaying the annotation.
[**TextLine**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextLine.md) | A line of text to be inserted into paragraph.
[**TextRect**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextRect.md) | Represents text occurrence.
[**TextRects**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextRects.md) | Represents multiple text occurrences DTO.
[**TextRectsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextRectsResponse.md) | Represents response containing multiple text occurrences info
[**TextReplace**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextReplace.md) | Single text replacement setting.
[**TextReplaceListRequest**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextReplaceListRequest.md) | Multiple text replacements request.
[**TextReplaceResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextReplaceResponse.md) | Represents response containing the result of text replacement
[**TextStamp**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextStamp.md) | Represents Pdf stamps.
[**TextState**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextState.md) | Represents a text state of a text
[**TextStyle**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TextStyle.md) | Represents a text style of a text
[**TimestampSettings**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/TimestampSettings.md) | Represents the ocsp settings using during signing process.
[**UnderlineAnnotation**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/UnderlineAnnotation.md) | Provides UnderlineAnnotation.
[**UnderlineAnnotationResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/UnderlineAnnotationResponse.md) | Represents response containing single underline annotation object
[**UnderlineAnnotations**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/UnderlineAnnotations.md) | Object representing a list of underline annotations.
[**UnderlineAnnotationsResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/UnderlineAnnotationsResponse.md) | Represents response containing multiple underline annotation objects
[**VerticalAlignment**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/VerticalAlignment.md) | Enumeration of possible vertical alignment values.
[**WordCount**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/WordCount.md) | Number of words per document pages.
[**WordCountResponse**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/WordCountResponse.md) | Number of words per document pages.
[**WrapMode**](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift/tree/master/docs/WrapMode.md) | Defines word wrapping strategies
