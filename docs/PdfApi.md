# PdfApi

All URIs are relative to *https://api.aspose.cloud/v2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
*PdfApi* | [**copyFile**](PdfApi.md#copyFile) | **PUT** /pdf/storage/file/copy/\{srcPath} | Copy file
*PdfApi* | [**copyFolder**](PdfApi.md#copyFolder) | **PUT** /pdf/storage/folder/copy/\{srcPath} | Copy folder
*PdfApi* | [**createFolder**](PdfApi.md#createFolder) | **PUT** /pdf/storage/folder/\{path} | Create the folder
*PdfApi* | [**deleteAnnotation**](PdfApi.md#deleteAnnotation) | **DELETE** /pdf/\{name}/annotations/\{annotationId} | Delete document annotation by ID
*PdfApi* | [**deleteBookmark**](PdfApi.md#deleteBookmark) | **DELETE** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Delete document bookmark by ID.
*PdfApi* | [**deleteDocumentAnnotations**](PdfApi.md#deleteDocumentAnnotations) | **DELETE** /pdf/\{name}/annotations | Delete all annotations from the document
*PdfApi* | [**deleteDocumentBookmarks**](PdfApi.md#deleteDocumentBookmarks) | **DELETE** /pdf/\{name}/bookmarks/tree | Delete all document bookmarks.
*PdfApi* | [**deleteDocumentLinkAnnotations**](PdfApi.md#deleteDocumentLinkAnnotations) | **DELETE** /pdf/\{name}/links | Delete all link annotations from the document
*PdfApi* | [**deleteDocumentStamps**](PdfApi.md#deleteDocumentStamps) | **DELETE** /pdf/\{name}/stamps | Delete all stamps from the document
*PdfApi* | [**deleteDocumentTables**](PdfApi.md#deleteDocumentTables) | **DELETE** /pdf/\{name}/tables | Delete all tables from the document
*PdfApi* | [**deleteField**](PdfApi.md#deleteField) | **DELETE** /pdf/\{name}/fields/\{fieldName} | Delete document field by name.
*PdfApi* | [**deleteFile**](PdfApi.md#deleteFile) | **DELETE** /pdf/storage/file/\{path} | Delete file
*PdfApi* | [**deleteFolder**](PdfApi.md#deleteFolder) | **DELETE** /pdf/storage/folder/\{path} | Delete folder
*PdfApi* | [**deleteImage**](PdfApi.md#deleteImage) | **DELETE** /pdf/\{name}/images/\{imageId} | Delete image from document page.
*PdfApi* | [**deleteLinkAnnotation**](PdfApi.md#deleteLinkAnnotation) | **DELETE** /pdf/\{name}/links/\{linkId} | Delete document page link annotation by ID
*PdfApi* | [**deletePage**](PdfApi.md#deletePage) | **DELETE** /pdf/\{name}/pages/\{pageNumber} | Delete document page by its number.
*PdfApi* | [**deletePageAnnotations**](PdfApi.md#deletePageAnnotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/annotations | Delete all annotations from the page
*PdfApi* | [**deletePageLinkAnnotations**](PdfApi.md#deletePageLinkAnnotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/links | Delete all link annotations from the page
*PdfApi* | [**deletePageStamps**](PdfApi.md#deletePageStamps) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/stamps | Delete all stamps from the page
*PdfApi* | [**deletePageTables**](PdfApi.md#deletePageTables) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/tables | Delete all tables from the page
*PdfApi* | [**deleteProperties**](PdfApi.md#deleteProperties) | **DELETE** /pdf/\{name}/documentproperties | Delete custom document properties.
*PdfApi* | [**deleteProperty**](PdfApi.md#deleteProperty) | **DELETE** /pdf/\{name}/documentproperties/\{propertyName} | Delete document property.
*PdfApi* | [**deleteStamp**](PdfApi.md#deleteStamp) | **DELETE** /pdf/\{name}/stamps/\{stampId} | Delete document stamp by ID
*PdfApi* | [**deleteTable**](PdfApi.md#deleteTable) | **DELETE** /pdf/\{name}/tables/\{tableId} | Delete document table by ID
*PdfApi* | [**downloadFile**](PdfApi.md#downloadFile) | **GET** /pdf/storage/file/\{path} | Download file
*PdfApi* | [**getApiInfo**](PdfApi.md#getApiInfo) | **GET** /pdf/info | 
*PdfApi* | [**getBookmark**](PdfApi.md#getBookmark) | **GET** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Read document bookmark.
*PdfApi* | [**getBookmarks**](PdfApi.md#getBookmarks) | **GET** /pdf/\{name}/bookmarks/list/\{bookmarkPath} | Read document bookmarks node list.
*PdfApi* | [**getCaretAnnotation**](PdfApi.md#getCaretAnnotation) | **GET** /pdf/\{name}/annotations/caret/\{annotationId} | Read document page caret annotation by ID.
*PdfApi* | [**getCheckBoxField**](PdfApi.md#getCheckBoxField) | **GET** /pdf/\{name}/fields/checkbox/\{fieldName} | Read document checkbox field by name.
*PdfApi* | [**getCircleAnnotation**](PdfApi.md#getCircleAnnotation) | **GET** /pdf/\{name}/annotations/circle/\{annotationId} | Read document page circle annotation by ID.
*PdfApi* | [**getComboBoxField**](PdfApi.md#getComboBoxField) | **GET** /pdf/\{name}/fields/combobox/\{fieldName} | Read document combobox field by name.
*PdfApi* | [**getDiscUsage**](PdfApi.md#getDiscUsage) | **GET** /pdf/storage/disc | Get disc usage
*PdfApi* | [**getDocument**](PdfApi.md#getDocument) | **GET** /pdf/\{name} | Read common document info.
*PdfApi* | [**getDocumentAnnotations**](PdfApi.md#getDocumentAnnotations) | **GET** /pdf/\{name}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*PdfApi* | [**getDocumentAttachmentByIndex**](PdfApi.md#getDocumentAttachmentByIndex) | **GET** /pdf/\{name}/attachments/\{attachmentIndex} | Read document attachment info by its index.
*PdfApi* | [**getDocumentAttachments**](PdfApi.md#getDocumentAttachments) | **GET** /pdf/\{name}/attachments | Read document attachments info.
*PdfApi* | [**getDocumentBookmarks**](PdfApi.md#getDocumentBookmarks) | **GET** /pdf/\{name}/bookmarks/tree | Read document bookmarks tree.
*PdfApi* | [**getDocumentCaretAnnotations**](PdfApi.md#getDocumentCaretAnnotations) | **GET** /pdf/\{name}/annotations/caret | Read document caret annotations.
*PdfApi* | [**getDocumentCheckBoxFields**](PdfApi.md#getDocumentCheckBoxFields) | **GET** /pdf/\{name}/fields/checkbox | Read document checkbox fields.
*PdfApi* | [**getDocumentCircleAnnotations**](PdfApi.md#getDocumentCircleAnnotations) | **GET** /pdf/\{name}/annotations/circle | Read document circle annotations.
*PdfApi* | [**getDocumentComboBoxFields**](PdfApi.md#getDocumentComboBoxFields) | **GET** /pdf/\{name}/fields/combobox | Read document combobox fields.
*PdfApi* | [**getDocumentDisplayProperties**](PdfApi.md#getDocumentDisplayProperties) | **GET** /pdf/\{name}/displayproperties | Read document display properties.
*PdfApi* | [**getDocumentFileAttachmentAnnotations**](PdfApi.md#getDocumentFileAttachmentAnnotations) | **GET** /pdf/\{name}/annotations/fileattachment | Read document FileAttachment annotations.
*PdfApi* | [**getDocumentFreeTextAnnotations**](PdfApi.md#getDocumentFreeTextAnnotations) | **GET** /pdf/\{name}/annotations/freetext | Read document free text annotations.
*PdfApi* | [**getDocumentHighlightAnnotations**](PdfApi.md#getDocumentHighlightAnnotations) | **GET** /pdf/\{name}/annotations/highlight | Read document highlight annotations.
*PdfApi* | [**getDocumentInkAnnotations**](PdfApi.md#getDocumentInkAnnotations) | **GET** /pdf/\{name}/annotations/ink | Read document ink annotations.
*PdfApi* | [**getDocumentLineAnnotations**](PdfApi.md#getDocumentLineAnnotations) | **GET** /pdf/\{name}/annotations/line | Read document line annotations.
*PdfApi* | [**getDocumentListBoxFields**](PdfApi.md#getDocumentListBoxFields) | **GET** /pdf/\{name}/fields/listbox | Read document listbox fields.
*PdfApi* | [**getDocumentMovieAnnotations**](PdfApi.md#getDocumentMovieAnnotations) | **GET** /pdf/\{name}/annotations/movie | Read document movie annotations.
*PdfApi* | [**getDocumentPolygonAnnotations**](PdfApi.md#getDocumentPolygonAnnotations) | **GET** /pdf/\{name}/annotations/polygon | Read document polygon annotations.
*PdfApi* | [**getDocumentPolyLineAnnotations**](PdfApi.md#getDocumentPolyLineAnnotations) | **GET** /pdf/\{name}/annotations/polyline | Read document polyline annotations.
*PdfApi* | [**getDocumentPopupAnnotations**](PdfApi.md#getDocumentPopupAnnotations) | **GET** /pdf/\{name}/annotations/popup | Read document popup annotations.
*PdfApi* | [**getDocumentPopupAnnotationsByParent**](PdfApi.md#getDocumentPopupAnnotationsByParent) | **GET** /pdf/\{name}/annotations/\{annotationId}/popup | Read document popup annotations by parent id.
*PdfApi* | [**getDocumentProperties**](PdfApi.md#getDocumentProperties) | **GET** /pdf/\{name}/documentproperties | Read document properties.
*PdfApi* | [**getDocumentProperty**](PdfApi.md#getDocumentProperty) | **GET** /pdf/\{name}/documentproperties/\{propertyName} | Read document property by name.
*PdfApi* | [**getDocumentRadioButtonFields**](PdfApi.md#getDocumentRadioButtonFields) | **GET** /pdf/\{name}/fields/radiobutton | Read document radiobutton fields.
*PdfApi* | [**getDocumentRedactionAnnotations**](PdfApi.md#getDocumentRedactionAnnotations) | **GET** /pdf/\{name}/annotations/redaction | Read document redaction annotations.
*PdfApi* | [**getDocumentScreenAnnotations**](PdfApi.md#getDocumentScreenAnnotations) | **GET** /pdf/\{name}/annotations/screen | Read document screen annotations.
*PdfApi* | [**getDocumentSignatureFields**](PdfApi.md#getDocumentSignatureFields) | **GET** /pdf/\{name}/fields/signature | Read document signature fields.
*PdfApi* | [**getDocumentSoundAnnotations**](PdfApi.md#getDocumentSoundAnnotations) | **GET** /pdf/\{name}/annotations/sound | Read document sound annotations.
*PdfApi* | [**getDocumentSquareAnnotations**](PdfApi.md#getDocumentSquareAnnotations) | **GET** /pdf/\{name}/annotations/square | Read document square annotations.
*PdfApi* | [**getDocumentSquigglyAnnotations**](PdfApi.md#getDocumentSquigglyAnnotations) | **GET** /pdf/\{name}/annotations/squiggly | Read document squiggly annotations.
*PdfApi* | [**getDocumentStampAnnotations**](PdfApi.md#getDocumentStampAnnotations) | **GET** /pdf/\{name}/annotations/stamp | Read document stamp annotations.
*PdfApi* | [**getDocumentStamps**](PdfApi.md#getDocumentStamps) | **GET** /pdf/\{name}/stamps | Read document stamps.
*PdfApi* | [**getDocumentStrikeOutAnnotations**](PdfApi.md#getDocumentStrikeOutAnnotations) | **GET** /pdf/\{name}/annotations/strikeout | Read document StrikeOut annotations.
*PdfApi* | [**getDocumentTables**](PdfApi.md#getDocumentTables) | **GET** /pdf/\{name}/tables | Read document tables.
*PdfApi* | [**getDocumentTextAnnotations**](PdfApi.md#getDocumentTextAnnotations) | **GET** /pdf/\{name}/annotations/text | Read document text annotations.
*PdfApi* | [**getDocumentTextBoxFields**](PdfApi.md#getDocumentTextBoxFields) | **GET** /pdf/\{name}/fields/textbox | Read document text box fields.
*PdfApi* | [**getDocumentUnderlineAnnotations**](PdfApi.md#getDocumentUnderlineAnnotations) | **GET** /pdf/\{name}/annotations/underline | Read document underline annotations.
*PdfApi* | [**getDownloadDocumentAttachmentByIndex**](PdfApi.md#getDownloadDocumentAttachmentByIndex) | **GET** /pdf/\{name}/attachments/\{attachmentIndex}/download | Download document attachment content by its index.
*PdfApi* | [**getEpubInStorageToPdf**](PdfApi.md#getEpubInStorageToPdf) | **GET** /pdf/create/epub | Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getExportFieldsFromPdfToFdfInStorage**](PdfApi.md#getExportFieldsFromPdfToFdfInStorage) | **GET** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file.
*PdfApi* | [**getExportFieldsFromPdfToXfdfInStorage**](PdfApi.md#getExportFieldsFromPdfToXfdfInStorage) | **GET** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file.
*PdfApi* | [**getExportFieldsFromPdfToXmlInStorage**](PdfApi.md#getExportFieldsFromPdfToXmlInStorage) | **GET** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file.
*PdfApi* | [**getField**](PdfApi.md#getField) | **GET** /pdf/\{name}/fields/\{fieldName} | Get document field by name.
*PdfApi* | [**getFields**](PdfApi.md#getFields) | **GET** /pdf/\{name}/fields | Get document fields.
*PdfApi* | [**getFileAttachmentAnnotation**](PdfApi.md#getFileAttachmentAnnotation) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Read document page FileAttachment annotation by ID.
*PdfApi* | [**getFileAttachmentAnnotationData**](PdfApi.md#getFileAttachmentAnnotationData) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data | Read document page FileAttachment annotation by ID.
*PdfApi* | [**getFilesList**](PdfApi.md#getFilesList) | **GET** /pdf/storage/folder/\{path} | Get all files and folders within a folder
*PdfApi* | [**getFileVersions**](PdfApi.md#getFileVersions) | **GET** /pdf/storage/version/\{path} | Get file versions
*PdfApi* | [**getFreeTextAnnotation**](PdfApi.md#getFreeTextAnnotation) | **GET** /pdf/\{name}/annotations/freetext/\{annotationId} | Read document page free text annotation by ID.
*PdfApi* | [**getHighlightAnnotation**](PdfApi.md#getHighlightAnnotation) | **GET** /pdf/\{name}/annotations/highlight/\{annotationId} | Read document page highlight annotation by ID.
*PdfApi* | [**getHtmlInStorageToPdf**](PdfApi.md#getHtmlInStorageToPdf) | **GET** /pdf/create/html | Convert HTML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getImage**](PdfApi.md#getImage) | **GET** /pdf/\{name}/images/\{imageId} | Read document image by ID.
*PdfApi* | [**getImageExtractAsGif**](PdfApi.md#getImageExtractAsGif) | **GET** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format
*PdfApi* | [**getImageExtractAsJpeg**](PdfApi.md#getImageExtractAsJpeg) | **GET** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format
*PdfApi* | [**getImageExtractAsPng**](PdfApi.md#getImageExtractAsPng) | **GET** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format
*PdfApi* | [**getImageExtractAsTiff**](PdfApi.md#getImageExtractAsTiff) | **GET** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format
*PdfApi* | [**getImages**](PdfApi.md#getImages) | **GET** /pdf/\{name}/pages/\{pageNumber}/images | Read document images.
*PdfApi* | [**getImportFieldsFromFdfInStorage**](PdfApi.md#getImportFieldsFromFdfInStorage) | **GET** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
*PdfApi* | [**getImportFieldsFromXfdfInStorage**](PdfApi.md#getImportFieldsFromXfdfInStorage) | **GET** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
*PdfApi* | [**getImportFieldsFromXmlInStorage**](PdfApi.md#getImportFieldsFromXmlInStorage) | **GET** /pdf/\{name}/import/xml | Import from XML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getInkAnnotation**](PdfApi.md#getInkAnnotation) | **GET** /pdf/\{name}/annotations/ink/\{annotationId} | Read document page ink annotation by ID.
*PdfApi* | [**getLaTeXInStorageToPdf**](PdfApi.md#getLaTeXInStorageToPdf) | **GET** /pdf/create/latex | Convert TeX file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getLineAnnotation**](PdfApi.md#getLineAnnotation) | **GET** /pdf/\{name}/annotations/line/\{annotationId} | Read document page line annotation by ID.
*PdfApi* | [**getLinkAnnotation**](PdfApi.md#getLinkAnnotation) | **GET** /pdf/\{name}/links/\{linkId} | Read document link annotation by ID.
*PdfApi* | [**getListBoxField**](PdfApi.md#getListBoxField) | **GET** /pdf/\{name}/fields/listbox/\{fieldName} | Read document listbox field by name.
*PdfApi* | [**getMarkdownInStorageToPdf**](PdfApi.md#getMarkdownInStorageToPdf) | **GET** /pdf/create/markdown | Convert MD file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getMhtInStorageToPdf**](PdfApi.md#getMhtInStorageToPdf) | **GET** /pdf/create/mht | Convert MHT file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getMovieAnnotation**](PdfApi.md#getMovieAnnotation) | **GET** /pdf/\{name}/annotations/movie/\{annotationId} | Read document page movie annotation by ID.
*PdfApi* | [**getPage**](PdfApi.md#getPage) | **GET** /pdf/\{name}/pages/\{pageNumber} | Read document page info.
*PdfApi* | [**getPageAnnotations**](PdfApi.md#getPageAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*PdfApi* | [**getPageCaretAnnotations**](PdfApi.md#getPageCaretAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Read document page caret annotations.
*PdfApi* | [**getPageCheckBoxFields**](PdfApi.md#getPageCheckBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/checkbox | Read document page checkbox fields.
*PdfApi* | [**getPageCircleAnnotations**](PdfApi.md#getPageCircleAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Read document page circle annotations.
*PdfApi* | [**getPageComboBoxFields**](PdfApi.md#getPageComboBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/combobox | Read document page combobox fields.
*PdfApi* | [**getPageConvertToBmp**](PdfApi.md#getPageConvertToBmp) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to Bmp image and return resulting file in response.
*PdfApi* | [**getPageConvertToEmf**](PdfApi.md#getPageConvertToEmf) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to Emf image and return resulting file in response.
*PdfApi* | [**getPageConvertToGif**](PdfApi.md#getPageConvertToGif) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to Gif image and return resulting file in response.
*PdfApi* | [**getPageConvertToJpeg**](PdfApi.md#getPageConvertToJpeg) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and return resulting file in response.
*PdfApi* | [**getPageConvertToPng**](PdfApi.md#getPageConvertToPng) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to Png image and return resulting file in response.
*PdfApi* | [**getPageConvertToTiff**](PdfApi.md#getPageConvertToTiff) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and return resulting file in response.
*PdfApi* | [**getPageFileAttachmentAnnotations**](PdfApi.md#getPageFileAttachmentAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Read document page FileAttachment annotations.
*PdfApi* | [**getPageFreeTextAnnotations**](PdfApi.md#getPageFreeTextAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Read document page free text annotations.
*PdfApi* | [**getPageHighlightAnnotations**](PdfApi.md#getPageHighlightAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Read document page highlight annotations.
*PdfApi* | [**getPageInkAnnotations**](PdfApi.md#getPageInkAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Read document page ink annotations.
*PdfApi* | [**getPageLineAnnotations**](PdfApi.md#getPageLineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Read document page line annotations.
*PdfApi* | [**getPageLinkAnnotation**](PdfApi.md#getPageLinkAnnotation) | **GET** /pdf/\{name}/pages/\{pageNumber}/links/\{linkId} | Read document page link annotation by ID.
*PdfApi* | [**getPageLinkAnnotations**](PdfApi.md#getPageLinkAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/links | Read document page link annotations.
*PdfApi* | [**getPageListBoxFields**](PdfApi.md#getPageListBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/listbox | Read document page listbox fields.
*PdfApi* | [**getPageMovieAnnotations**](PdfApi.md#getPageMovieAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Read document page movie annotations.
*PdfApi* | [**getPagePolygonAnnotations**](PdfApi.md#getPagePolygonAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Read document page polygon annotations.
*PdfApi* | [**getPagePolyLineAnnotations**](PdfApi.md#getPagePolyLineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Read document page polyline annotations.
*PdfApi* | [**getPagePopupAnnotations**](PdfApi.md#getPagePopupAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/popup | Read document page popup annotations.
*PdfApi* | [**getPageRadioButtonFields**](PdfApi.md#getPageRadioButtonFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/radiobutton | Read document page radiobutton fields.
*PdfApi* | [**getPageRedactionAnnotations**](PdfApi.md#getPageRedactionAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Read document page redaction annotations.
*PdfApi* | [**getPages**](PdfApi.md#getPages) | **GET** /pdf/\{name}/pages | Read document pages info.
*PdfApi* | [**getPageScreenAnnotations**](PdfApi.md#getPageScreenAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Read document page screen annotations.
*PdfApi* | [**getPageSignatureFields**](PdfApi.md#getPageSignatureFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/signature | Read document page signature fields.
*PdfApi* | [**getPageSoundAnnotations**](PdfApi.md#getPageSoundAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Read document page sound annotations.
*PdfApi* | [**getPageSquareAnnotations**](PdfApi.md#getPageSquareAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Read document page square annotations.
*PdfApi* | [**getPageSquigglyAnnotations**](PdfApi.md#getPageSquigglyAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Read document page squiggly annotations.
*PdfApi* | [**getPageStampAnnotations**](PdfApi.md#getPageStampAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Read document page stamp annotations.
*PdfApi* | [**getPageStamps**](PdfApi.md#getPageStamps) | **GET** /pdf/\{name}/pages/\{pageNumber}/stamps | Read page document stamps.
*PdfApi* | [**getPageStrikeOutAnnotations**](PdfApi.md#getPageStrikeOutAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Read document page StrikeOut annotations.
*PdfApi* | [**getPageTables**](PdfApi.md#getPageTables) | **GET** /pdf/\{name}/pages/\{pageNumber}/tables | Read document page tables.
*PdfApi* | [**getPageText**](PdfApi.md#getPageText) | **GET** /pdf/\{name}/pages/\{pageNumber}/text | Read page text items.
*PdfApi* | [**getPageTextAnnotations**](PdfApi.md#getPageTextAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Read document page text annotations.
*PdfApi* | [**getPageTextBoxFields**](PdfApi.md#getPageTextBoxFields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/textbox | Read document page text box fields.
*PdfApi* | [**getPageUnderlineAnnotations**](PdfApi.md#getPageUnderlineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Read document page underline annotations.
*PdfApi* | [**getPclInStorageToPdf**](PdfApi.md#getPclInStorageToPdf) | **GET** /pdf/create/pcl | Convert PCL file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getPdfAInStorageToPdf**](PdfApi.md#getPdfAInStorageToPdf) | **GET** /pdf/create/pdfa | Convert PDFA file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getPdfInStorageToDoc**](PdfApi.md#getPdfInStorageToDoc) | **GET** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToEpub**](PdfApi.md#getPdfInStorageToEpub) | **GET** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToHtml**](PdfApi.md#getPdfInStorageToHtml) | **GET** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToLaTeX**](PdfApi.md#getPdfInStorageToLaTeX) | **GET** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to TeX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToMobiXml**](PdfApi.md#getPdfInStorageToMobiXml) | **GET** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToPdfA**](PdfApi.md#getPdfInStorageToPdfA) | **GET** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToPptx**](PdfApi.md#getPdfInStorageToPptx) | **GET** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToSvg**](PdfApi.md#getPdfInStorageToSvg) | **GET** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToTeX**](PdfApi.md#getPdfInStorageToTeX) | **GET** /pdf/\{name}/convert/tex | Converts PDF document (located on storage) to TeX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToTiff**](PdfApi.md#getPdfInStorageToTiff) | **GET** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXls**](PdfApi.md#getPdfInStorageToXls) | **GET** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXlsx**](PdfApi.md#getPdfInStorageToXlsx) | **GET** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXml**](PdfApi.md#getPdfInStorageToXml) | **GET** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXps**](PdfApi.md#getPdfInStorageToXps) | **GET** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and returns resulting file in response content
*PdfApi* | [**getPolygonAnnotation**](PdfApi.md#getPolygonAnnotation) | **GET** /pdf/\{name}/annotations/polygon/\{annotationId} | Read document page polygon annotation by ID.
*PdfApi* | [**getPolyLineAnnotation**](PdfApi.md#getPolyLineAnnotation) | **GET** /pdf/\{name}/annotations/polyline/\{annotationId} | Read document page polyline annotation by ID.
*PdfApi* | [**getPopupAnnotation**](PdfApi.md#getPopupAnnotation) | **GET** /pdf/\{name}/annotations/popup/\{annotationId} | Read document page popup annotation by ID.
*PdfApi* | [**getPsInStorageToPdf**](PdfApi.md#getPsInStorageToPdf) | **GET** /pdf/create/ps | Convert PS file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getRadioButtonField**](PdfApi.md#getRadioButtonField) | **GET** /pdf/\{name}/fields/radiobutton/\{fieldName} | Read document RadioButton field by name.
*PdfApi* | [**getRedactionAnnotation**](PdfApi.md#getRedactionAnnotation) | **GET** /pdf/\{name}/annotations/redaction/\{annotationId} | Read document page redaction annotation by ID.
*PdfApi* | [**getScreenAnnotation**](PdfApi.md#getScreenAnnotation) | **GET** /pdf/\{name}/annotations/screen/\{annotationId} | Read document page screen annotation by ID.
*PdfApi* | [**getScreenAnnotationData**](PdfApi.md#getScreenAnnotationData) | **GET** /pdf/\{name}/annotations/screen/\{annotationId}/data | Read document page screen annotation by ID.
*PdfApi* | [**getSignatureField**](PdfApi.md#getSignatureField) | **GET** /pdf/\{name}/fields/signature/\{fieldName} | Read document signature field by name.
*PdfApi* | [**getSoundAnnotation**](PdfApi.md#getSoundAnnotation) | **GET** /pdf/\{name}/annotations/sound/\{annotationId} | Read document page sound annotation by ID.
*PdfApi* | [**getSoundAnnotationData**](PdfApi.md#getSoundAnnotationData) | **GET** /pdf/\{name}/annotations/sound/\{annotationId}/data | Read document page sound annotation by ID.
*PdfApi* | [**getSquareAnnotation**](PdfApi.md#getSquareAnnotation) | **GET** /pdf/\{name}/annotations/square/\{annotationId} | Read document page square annotation by ID.
*PdfApi* | [**getSquigglyAnnotation**](PdfApi.md#getSquigglyAnnotation) | **GET** /pdf/\{name}/annotations/squiggly/\{annotationId} | Read document page squiggly annotation by ID.
*PdfApi* | [**getStampAnnotation**](PdfApi.md#getStampAnnotation) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId} | Read document page stamp annotation by ID.
*PdfApi* | [**getStampAnnotationData**](PdfApi.md#getStampAnnotationData) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId}/data | Read document page stamp annotation by ID.
*PdfApi* | [**getStrikeOutAnnotation**](PdfApi.md#getStrikeOutAnnotation) | **GET** /pdf/\{name}/annotations/strikeout/\{annotationId} | Read document page StrikeOut annotation by ID.
*PdfApi* | [**getSvgInStorageToPdf**](PdfApi.md#getSvgInStorageToPdf) | **GET** /pdf/create/svg | Convert SVG file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getTable**](PdfApi.md#getTable) | **GET** /pdf/\{name}/tables/\{tableId} | Read document page table by ID.
*PdfApi* | [**getTeXInStorageToPdf**](PdfApi.md#getTeXInStorageToPdf) | **GET** /pdf/create/tex | Convert TeX file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getText**](PdfApi.md#getText) | **GET** /pdf/\{name}/text | Read document text.
*PdfApi* | [**getTextAnnotation**](PdfApi.md#getTextAnnotation) | **GET** /pdf/\{name}/annotations/text/\{annotationId} | Read document page text annotation by ID.
*PdfApi* | [**getTextBoxField**](PdfApi.md#getTextBoxField) | **GET** /pdf/\{name}/fields/textbox/\{fieldName} | Read document text box field by name.
*PdfApi* | [**getUnderlineAnnotation**](PdfApi.md#getUnderlineAnnotation) | **GET** /pdf/\{name}/annotations/underline/\{annotationId} | Read document page underline annotation by ID.
*PdfApi* | [**getVerifySignature**](PdfApi.md#getVerifySignature) | **GET** /pdf/\{name}/verifySignature | Verify signature document.
*PdfApi* | [**getWebInStorageToPdf**](PdfApi.md#getWebInStorageToPdf) | **GET** /pdf/create/web | Convert web page to PDF format and return resulting file in response. 
*PdfApi* | [**getWordsPerPage**](PdfApi.md#getWordsPerPage) | **GET** /pdf/\{name}/pages/wordCount | Get number of words per document page.
*PdfApi* | [**getXfaPdfInStorageToAcroForm**](PdfApi.md#getXfaPdfInStorageToAcroForm) | **GET** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
*PdfApi* | [**getXmlInStorageToPdf**](PdfApi.md#getXmlInStorageToPdf) | **GET** /pdf/create/xml | Convert XML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getXpsInStorageToPdf**](PdfApi.md#getXpsInStorageToPdf) | **GET** /pdf/create/xps | Convert XPS file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getXslFoInStorageToPdf**](PdfApi.md#getXslFoInStorageToPdf) | **GET** /pdf/create/xslfo | Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**moveFile**](PdfApi.md#moveFile) | **PUT** /pdf/storage/file/move/\{srcPath} | Move file
*PdfApi* | [**moveFolder**](PdfApi.md#moveFolder) | **PUT** /pdf/storage/folder/move/\{srcPath} | Move folder
*PdfApi* | [**objectExists**](PdfApi.md#objectExists) | **GET** /pdf/storage/exist/\{path} | Check if file or folder exists
*PdfApi* | [**postAppendDocument**](PdfApi.md#postAppendDocument) | **POST** /pdf/\{name}/appendDocument | Append document to existing one.
*PdfApi* | [**postBookmark**](PdfApi.md#postBookmark) | **POST** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Add document bookmarks.
*PdfApi* | [**postChangePasswordDocumentInStorage**](PdfApi.md#postChangePasswordDocumentInStorage) | **POST** /pdf/\{name}/changepassword | Change document password in storage.
*PdfApi* | [**postCheckBoxFields**](PdfApi.md#postCheckBoxFields) | **POST** /pdf/\{name}/fields/checkbox | Add document checkbox fields.
*PdfApi* | [**postComboBoxFields**](PdfApi.md#postComboBoxFields) | **POST** /pdf/\{name}/fields/combobox | Add document combobox fields.
*PdfApi* | [**postCreateDocument**](PdfApi.md#postCreateDocument) | **POST** /pdf/\{name} | Create empty document.
*PdfApi* | [**postCreateField**](PdfApi.md#postCreateField) | **POST** /pdf/\{name}/fields | Create field.
*PdfApi* | [**postDecryptDocumentInStorage**](PdfApi.md#postDecryptDocumentInStorage) | **POST** /pdf/\{name}/decrypt | Decrypt document in storage.
*PdfApi* | [**postDocumentImageFooter**](PdfApi.md#postDocumentImageFooter) | **POST** /pdf/\{name}/footer/image | Add document image footer.
*PdfApi* | [**postDocumentImageHeader**](PdfApi.md#postDocumentImageHeader) | **POST** /pdf/\{name}/header/image | Add document image header.
*PdfApi* | [**postDocumentPageNumberStamps**](PdfApi.md#postDocumentPageNumberStamps) | **POST** /pdf/\{name}/stamps/pagenumber | Add document page number stamps.
*PdfApi* | [**postDocumentTextFooter**](PdfApi.md#postDocumentTextFooter) | **POST** /pdf/\{name}/footer/text | Add document text footer.
*PdfApi* | [**postDocumentTextHeader**](PdfApi.md#postDocumentTextHeader) | **POST** /pdf/\{name}/header/text | Add document text header.
*PdfApi* | [**postDocumentTextReplace**](PdfApi.md#postDocumentTextReplace) | **POST** /pdf/\{name}/text/replace | Document's replace text method.
*PdfApi* | [**postEncryptDocumentInStorage**](PdfApi.md#postEncryptDocumentInStorage) | **POST** /pdf/\{name}/encrypt | Encrypt document in storage.
*PdfApi* | [**postFlattenDocument**](PdfApi.md#postFlattenDocument) | **POST** /pdf/\{name}/flatten | Flatten the document.
*PdfApi* | [**postImportFieldsFromFdf**](PdfApi.md#postImportFieldsFromFdf) | **POST** /pdf/\{name}/import/fdf | Update fields from FDF file in request.
*PdfApi* | [**postImportFieldsFromXfdf**](PdfApi.md#postImportFieldsFromXfdf) | **POST** /pdf/\{name}/import/xfdf | Update fields from XFDF file in request.
*PdfApi* | [**postImportFieldsFromXml**](PdfApi.md#postImportFieldsFromXml) | **POST** /pdf/\{name}/import/xml | Update fields from XML file in request.
*PdfApi* | [**postInsertImage**](PdfApi.md#postInsertImage) | **POST** /pdf/\{name}/pages/\{pageNumber}/images | Insert image to document page.
*PdfApi* | [**postListBoxFields**](PdfApi.md#postListBoxFields) | **POST** /pdf/\{name}/fields/listbox | Add document listbox fields.
*PdfApi* | [**postMovePage**](PdfApi.md#postMovePage) | **POST** /pdf/\{name}/pages/\{pageNumber}/movePage | Move page to new position.
*PdfApi* | [**postOptimizeDocument**](PdfApi.md#postOptimizeDocument) | **POST** /pdf/\{name}/optimize | Optimize document.
*PdfApi* | [**postPageCaretAnnotations**](PdfApi.md#postPageCaretAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Add document page caret annotations.
*PdfApi* | [**postPageCertify**](PdfApi.md#postPageCertify) | **POST** /pdf/\{name}/pages/\{pageNumber}/certify | Certify document page.
*PdfApi* | [**postPageCircleAnnotations**](PdfApi.md#postPageCircleAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Add document page circle annotations.
*PdfApi* | [**postPageFileAttachmentAnnotations**](PdfApi.md#postPageFileAttachmentAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Add document page FileAttachment annotations.
*PdfApi* | [**postPageFreeTextAnnotations**](PdfApi.md#postPageFreeTextAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Add document page free text annotations.
*PdfApi* | [**postPageHighlightAnnotations**](PdfApi.md#postPageHighlightAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Add document page highlight annotations.
*PdfApi* | [**postPageImageStamps**](PdfApi.md#postPageImageStamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/image | Add document page image stamps.
*PdfApi* | [**postPageInkAnnotations**](PdfApi.md#postPageInkAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Add document page ink annotations.
*PdfApi* | [**postPageLineAnnotations**](PdfApi.md#postPageLineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Add document page line annotations.
*PdfApi* | [**postPageLinkAnnotations**](PdfApi.md#postPageLinkAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/links | Add document page link annotations.
*PdfApi* | [**postPageMovieAnnotations**](PdfApi.md#postPageMovieAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Add document page movie annotations.
*PdfApi* | [**postPagePdfPageStamps**](PdfApi.md#postPagePdfPageStamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/pdfpage | Add document pdf page stamps.
*PdfApi* | [**postPagePolygonAnnotations**](PdfApi.md#postPagePolygonAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Add document page polygon annotations.
*PdfApi* | [**postPagePolyLineAnnotations**](PdfApi.md#postPagePolyLineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Add document page polyline annotations.
*PdfApi* | [**postPageRedactionAnnotations**](PdfApi.md#postPageRedactionAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Add document page redaction annotations.
*PdfApi* | [**postPageScreenAnnotations**](PdfApi.md#postPageScreenAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Add document page screen annotations.
*PdfApi* | [**postPageSoundAnnotations**](PdfApi.md#postPageSoundAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Add document page sound annotations.
*PdfApi* | [**postPageSquareAnnotations**](PdfApi.md#postPageSquareAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Add document page square annotations.
*PdfApi* | [**postPageSquigglyAnnotations**](PdfApi.md#postPageSquigglyAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Add document page squiggly annotations.
*PdfApi* | [**postPageStampAnnotations**](PdfApi.md#postPageStampAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Add document page stamp annotations.
*PdfApi* | [**postPageStrikeOutAnnotations**](PdfApi.md#postPageStrikeOutAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Add document page StrikeOut annotations.
*PdfApi* | [**postPageTables**](PdfApi.md#postPageTables) | **POST** /pdf/\{name}/pages/\{pageNumber}/tables | Add document page tables.
*PdfApi* | [**postPageTextAnnotations**](PdfApi.md#postPageTextAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Add document page text annotations.
*PdfApi* | [**postPageTextReplace**](PdfApi.md#postPageTextReplace) | **POST** /pdf/\{name}/pages/\{pageNumber}/text/replace | Page's replace text method.
*PdfApi* | [**postPageTextStamps**](PdfApi.md#postPageTextStamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/text | Add document page text stamps.
*PdfApi* | [**postPageUnderlineAnnotations**](PdfApi.md#postPageUnderlineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Add document page underline annotations.
*PdfApi* | [**postPopupAnnotation**](PdfApi.md#postPopupAnnotation) | **POST** /pdf/\{name}/annotations/\{annotationId}/popup | Add document popup annotations.
*PdfApi* | [**postRadioButtonFields**](PdfApi.md#postRadioButtonFields) | **POST** /pdf/\{name}/fields/radiobutton | Add document RadioButton fields.
*PdfApi* | [**postSignatureField**](PdfApi.md#postSignatureField) | **POST** /pdf/\{name}/fields/signature | Add document signature field.
*PdfApi* | [**postSignDocument**](PdfApi.md#postSignDocument) | **POST** /pdf/\{name}/sign | Sign document.
*PdfApi* | [**postSignPage**](PdfApi.md#postSignPage) | **POST** /pdf/\{name}/pages/\{pageNumber}/sign | Sign page.
*PdfApi* | [**postSplitDocument**](PdfApi.md#postSplitDocument) | **POST** /pdf/\{name}/split | Split document to parts.
*PdfApi* | [**postTextBoxFields**](PdfApi.md#postTextBoxFields) | **POST** /pdf/\{name}/fields/textbox | Add document text box fields.
*PdfApi* | [**putAddNewPage**](PdfApi.md#putAddNewPage) | **PUT** /pdf/\{name}/pages | Add new page to end of the document.
*PdfApi* | [**putAddText**](PdfApi.md#putAddText) | **PUT** /pdf/\{name}/pages/\{pageNumber}/text | Add text to PDF document page.
*PdfApi* | [**putAnnotationsFlatten**](PdfApi.md#putAnnotationsFlatten) | **PUT** /pdf/\{name}/annotations/flatten | Flattens the annotations of the specified types
*PdfApi* | [**putBookmark**](PdfApi.md#putBookmark) | **PUT** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Update document bookmark.
*PdfApi* | [**putCaretAnnotation**](PdfApi.md#putCaretAnnotation) | **PUT** /pdf/\{name}/annotations/caret/\{annotationId} | Replace document caret annotation
*PdfApi* | [**putChangePasswordDocument**](PdfApi.md#putChangePasswordDocument) | **PUT** /pdf/changepassword | Change document password from content.
*PdfApi* | [**putCheckBoxField**](PdfApi.md#putCheckBoxField) | **PUT** /pdf/\{name}/fields/checkbox/\{fieldName} | Replace document checkbox field
*PdfApi* | [**putCircleAnnotation**](PdfApi.md#putCircleAnnotation) | **PUT** /pdf/\{name}/annotations/circle/\{annotationId} | Replace document circle annotation
*PdfApi* | [**putComboBoxField**](PdfApi.md#putComboBoxField) | **PUT** /pdf/\{name}/fields/combobox/\{fieldName} | Replace document combobox field
*PdfApi* | [**putCreateDocument**](PdfApi.md#putCreateDocument) | **PUT** /pdf/\{name} | Create empty document.
*PdfApi* | [**putDecryptDocument**](PdfApi.md#putDecryptDocument) | **PUT** /pdf/decrypt | Decrypt document from content.
*PdfApi* | [**putDocumentDisplayProperties**](PdfApi.md#putDocumentDisplayProperties) | **PUT** /pdf/\{name}/displayproperties | Update document display properties.
*PdfApi* | [**putEncryptDocument**](PdfApi.md#putEncryptDocument) | **PUT** /pdf/encrypt | Encrypt document from content.
*PdfApi* | [**putEpubInStorageToPdf**](PdfApi.md#putEpubInStorageToPdf) | **PUT** /pdf/\{name}/create/epub | Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putExportFieldsFromPdfToFdfInStorage**](PdfApi.md#putExportFieldsFromPdfToFdfInStorage) | **PUT** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file in storage.
*PdfApi* | [**putExportFieldsFromPdfToXfdfInStorage**](PdfApi.md#putExportFieldsFromPdfToXfdfInStorage) | **PUT** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file in storage.
*PdfApi* | [**putExportFieldsFromPdfToXmlInStorage**](PdfApi.md#putExportFieldsFromPdfToXmlInStorage) | **PUT** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file in storage.
*PdfApi* | [**putFieldsFlatten**](PdfApi.md#putFieldsFlatten) | **PUT** /pdf/\{name}/fields/flatten | Flatten form fields in document.
*PdfApi* | [**putFileAttachmentAnnotation**](PdfApi.md#putFileAttachmentAnnotation) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Replace document FileAttachment annotation
*PdfApi* | [**putFileAttachmentAnnotationDataExtract**](PdfApi.md#putFileAttachmentAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data/extract | Extract document FileAttachment annotation content to storage
*PdfApi* | [**putFreeTextAnnotation**](PdfApi.md#putFreeTextAnnotation) | **PUT** /pdf/\{name}/annotations/freetext/\{annotationId} | Replace document free text annotation
*PdfApi* | [**putHighlightAnnotation**](PdfApi.md#putHighlightAnnotation) | **PUT** /pdf/\{name}/annotations/highlight/\{annotationId} | Replace document highlight annotation
*PdfApi* | [**putHtmlInStorageToPdf**](PdfApi.md#putHtmlInStorageToPdf) | **PUT** /pdf/\{name}/create/html | Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putImageExtractAsGif**](PdfApi.md#putImageExtractAsGif) | **PUT** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format to folder
*PdfApi* | [**putImageExtractAsJpeg**](PdfApi.md#putImageExtractAsJpeg) | **PUT** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format to folder
*PdfApi* | [**putImageExtractAsPng**](PdfApi.md#putImageExtractAsPng) | **PUT** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format to folder
*PdfApi* | [**putImageExtractAsTiff**](PdfApi.md#putImageExtractAsTiff) | **PUT** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format to folder
*PdfApi* | [**putImageInStorageToPdf**](PdfApi.md#putImageInStorageToPdf) | **PUT** /pdf/\{name}/create/images | Convert image file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putImagesExtractAsGif**](PdfApi.md#putImagesExtractAsGif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/gif | Extract document images in GIF format to folder.
*PdfApi* | [**putImagesExtractAsJpeg**](PdfApi.md#putImagesExtractAsJpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/jpeg | Extract document images in JPEG format to folder.
*PdfApi* | [**putImagesExtractAsPng**](PdfApi.md#putImagesExtractAsPng) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/png | Extract document images in PNG format to folder.
*PdfApi* | [**putImagesExtractAsTiff**](PdfApi.md#putImagesExtractAsTiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/tiff | Extract document images in TIFF format to folder.
*PdfApi* | [**putImportFieldsFromFdfInStorage**](PdfApi.md#putImportFieldsFromFdfInStorage) | **PUT** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
*PdfApi* | [**putImportFieldsFromXfdfInStorage**](PdfApi.md#putImportFieldsFromXfdfInStorage) | **PUT** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
*PdfApi* | [**putImportFieldsFromXmlInStorage**](PdfApi.md#putImportFieldsFromXmlInStorage) | **PUT** /pdf/\{name}/import/xml | Update fields from XML file in storage.
*PdfApi* | [**putInkAnnotation**](PdfApi.md#putInkAnnotation) | **PUT** /pdf/\{name}/annotations/ink/\{annotationId} | Replace document ink annotation
*PdfApi* | [**putLaTeXInStorageToPdf**](PdfApi.md#putLaTeXInStorageToPdf) | **PUT** /pdf/\{name}/create/latex | Convert TeX file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putLineAnnotation**](PdfApi.md#putLineAnnotation) | **PUT** /pdf/\{name}/annotations/line/\{annotationId} | Replace document line annotation
*PdfApi* | [**putLinkAnnotation**](PdfApi.md#putLinkAnnotation) | **PUT** /pdf/\{name}/links/\{linkId} | Replace document page link annotations
*PdfApi* | [**putListBoxField**](PdfApi.md#putListBoxField) | **PUT** /pdf/\{name}/fields/listbox/\{fieldName} | Replace document listbox field
*PdfApi* | [**putMarkdownInStorageToPdf**](PdfApi.md#putMarkdownInStorageToPdf) | **PUT** /pdf/\{name}/create/markdown | Convert MD file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putMergeDocuments**](PdfApi.md#putMergeDocuments) | **PUT** /pdf/\{name}/merge | Merge a list of documents.
*PdfApi* | [**putMhtInStorageToPdf**](PdfApi.md#putMhtInStorageToPdf) | **PUT** /pdf/\{name}/create/mht | Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putMovieAnnotation**](PdfApi.md#putMovieAnnotation) | **PUT** /pdf/\{name}/annotations/movie/\{annotationId} | Replace document movie annotation
*PdfApi* | [**putPageAddStamp**](PdfApi.md#putPageAddStamp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/stamp | Add page stamp.
*PdfApi* | [**putPageConvertToBmp**](PdfApi.md#putPageConvertToBmp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to bmp image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToEmf**](PdfApi.md#putPageConvertToEmf) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to emf image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToGif**](PdfApi.md#putPageConvertToGif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to gif image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToJpeg**](PdfApi.md#putPageConvertToJpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToPng**](PdfApi.md#putPageConvertToPng) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to png image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToTiff**](PdfApi.md#putPageConvertToTiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and upload resulting file to storage.
*PdfApi* | [**putPclInStorageToPdf**](PdfApi.md#putPclInStorageToPdf) | **PUT** /pdf/\{name}/create/pcl | Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putPdfAInStorageToPdf**](PdfApi.md#putPdfAInStorageToPdf) | **PUT** /pdf/\{name}/create/pdfa | Convert PDFA file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putPdfInRequestToDoc**](PdfApi.md#putPdfInRequestToDoc) | **PUT** /pdf/convert/doc | Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToEpub**](PdfApi.md#putPdfInRequestToEpub) | **PUT** /pdf/convert/epub | Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToHtml**](PdfApi.md#putPdfInRequestToHtml) | **PUT** /pdf/convert/html | Converts PDF document (in request content) to Html format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToLaTeX**](PdfApi.md#putPdfInRequestToLaTeX) | **PUT** /pdf/convert/latex | Converts PDF document (in request content) to TeX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToMobiXml**](PdfApi.md#putPdfInRequestToMobiXml) | **PUT** /pdf/convert/mobixml | Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToPdfA**](PdfApi.md#putPdfInRequestToPdfA) | **PUT** /pdf/convert/pdfa | Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToPptx**](PdfApi.md#putPdfInRequestToPptx) | **PUT** /pdf/convert/pptx | Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToSvg**](PdfApi.md#putPdfInRequestToSvg) | **PUT** /pdf/convert/svg | Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToTeX**](PdfApi.md#putPdfInRequestToTeX) | **PUT** /pdf/convert/tex | Converts PDF document (in request content) to TeX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToTiff**](PdfApi.md#putPdfInRequestToTiff) | **PUT** /pdf/convert/tiff | Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXls**](PdfApi.md#putPdfInRequestToXls) | **PUT** /pdf/convert/xls | Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXlsx**](PdfApi.md#putPdfInRequestToXlsx) | **PUT** /pdf/convert/xlsx | Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXml**](PdfApi.md#putPdfInRequestToXml) | **PUT** /pdf/convert/xml | Converts PDF document (in request content) to XML format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXps**](PdfApi.md#putPdfInRequestToXps) | **PUT** /pdf/convert/xps | Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
*PdfApi* | [**putPdfInStorageToDoc**](PdfApi.md#putPdfInStorageToDoc) | **PUT** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToEpub**](PdfApi.md#putPdfInStorageToEpub) | **PUT** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToHtml**](PdfApi.md#putPdfInStorageToHtml) | **PUT** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToLaTeX**](PdfApi.md#putPdfInStorageToLaTeX) | **PUT** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to TeX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToMobiXml**](PdfApi.md#putPdfInStorageToMobiXml) | **PUT** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToPdfA**](PdfApi.md#putPdfInStorageToPdfA) | **PUT** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToPptx**](PdfApi.md#putPdfInStorageToPptx) | **PUT** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToSvg**](PdfApi.md#putPdfInStorageToSvg) | **PUT** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToTeX**](PdfApi.md#putPdfInStorageToTeX) | **PUT** /pdf/\{name}/convert/tex | Converts PDF document (located on storage) to TeX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToTiff**](PdfApi.md#putPdfInStorageToTiff) | **PUT** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXls**](PdfApi.md#putPdfInStorageToXls) | **PUT** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXlsx**](PdfApi.md#putPdfInStorageToXlsx) | **PUT** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXml**](PdfApi.md#putPdfInStorageToXml) | **PUT** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXps**](PdfApi.md#putPdfInStorageToXps) | **PUT** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
*PdfApi* | [**putPolygonAnnotation**](PdfApi.md#putPolygonAnnotation) | **PUT** /pdf/\{name}/annotations/polygon/\{annotationId} | Replace document polygon annotation
*PdfApi* | [**putPolyLineAnnotation**](PdfApi.md#putPolyLineAnnotation) | **PUT** /pdf/\{name}/annotations/polyline/\{annotationId} | Replace document polyline annotation
*PdfApi* | [**putPopupAnnotation**](PdfApi.md#putPopupAnnotation) | **PUT** /pdf/\{name}/annotations/popup/\{annotationId} | Replace document popup annotation
*PdfApi* | [**putPrivileges**](PdfApi.md#putPrivileges) | **PUT** /pdf/\{name}/privileges | Update privilege document.
*PdfApi* | [**putPsInStorageToPdf**](PdfApi.md#putPsInStorageToPdf) | **PUT** /pdf/\{name}/create/ps | Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putRadioButtonField**](PdfApi.md#putRadioButtonField) | **PUT** /pdf/\{name}/fields/radiobutton/\{fieldName} | Replace document RadioButton field
*PdfApi* | [**putRedactionAnnotation**](PdfApi.md#putRedactionAnnotation) | **PUT** /pdf/\{name}/annotations/redaction/\{annotationId} | Replace document redaction annotation
*PdfApi* | [**putReplaceImage**](PdfApi.md#putReplaceImage) | **PUT** /pdf/\{name}/images/\{imageId} | Replace document image.
*PdfApi* | [**putScreenAnnotation**](PdfApi.md#putScreenAnnotation) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId} | Replace document screen annotation
*PdfApi* | [**putScreenAnnotationDataExtract**](PdfApi.md#putScreenAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId}/data/extract | Extract document screen annotation content to storage
*PdfApi* | [**putSearchableDocument**](PdfApi.md#putSearchableDocument) | **PUT** /pdf/\{name}/ocr | Create searchable PDF document. Generate OCR layer for images in input PDF document.
*PdfApi* | [**putSetProperty**](PdfApi.md#putSetProperty) | **PUT** /pdf/\{name}/documentproperties/\{propertyName} | Add/update document property.
*PdfApi* | [**putSignatureField**](PdfApi.md#putSignatureField) | **PUT** /pdf/\{name}/fields/signature/\{fieldName} | Replace document signature field.
*PdfApi* | [**putSoundAnnotation**](PdfApi.md#putSoundAnnotation) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId} | Replace document sound annotation
*PdfApi* | [**putSoundAnnotationDataExtract**](PdfApi.md#putSoundAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId}/data/extract | Extract document sound annotation content to storage
*PdfApi* | [**putSquareAnnotation**](PdfApi.md#putSquareAnnotation) | **PUT** /pdf/\{name}/annotations/square/\{annotationId} | Replace document square annotation
*PdfApi* | [**putSquigglyAnnotation**](PdfApi.md#putSquigglyAnnotation) | **PUT** /pdf/\{name}/annotations/squiggly/\{annotationId} | Replace document squiggly annotation
*PdfApi* | [**putStampAnnotation**](PdfApi.md#putStampAnnotation) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId} | Replace document stamp annotation
*PdfApi* | [**putStampAnnotationDataExtract**](PdfApi.md#putStampAnnotationDataExtract) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId}/data/extract | Extract document stamp annotation content to storage
*PdfApi* | [**putStrikeOutAnnotation**](PdfApi.md#putStrikeOutAnnotation) | **PUT** /pdf/\{name}/annotations/strikeout/\{annotationId} | Replace document StrikeOut annotation
*PdfApi* | [**putSvgInStorageToPdf**](PdfApi.md#putSvgInStorageToPdf) | **PUT** /pdf/\{name}/create/svg | Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putTable**](PdfApi.md#putTable) | **PUT** /pdf/\{name}/tables/\{tableId} | Replace document page table.
*PdfApi* | [**putTeXInStorageToPdf**](PdfApi.md#putTeXInStorageToPdf) | **PUT** /pdf/\{name}/create/tex | Convert TeX file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putTextAnnotation**](PdfApi.md#putTextAnnotation) | **PUT** /pdf/\{name}/annotations/text/\{annotationId} | Replace document text annotation
*PdfApi* | [**putTextBoxField**](PdfApi.md#putTextBoxField) | **PUT** /pdf/\{name}/fields/textbox/\{fieldName} | Replace document text box field
*PdfApi* | [**putUnderlineAnnotation**](PdfApi.md#putUnderlineAnnotation) | **PUT** /pdf/\{name}/annotations/underline/\{annotationId} | Replace document underline annotation
*PdfApi* | [**putUpdateField**](PdfApi.md#putUpdateField) | **PUT** /pdf/\{name}/fields/\{fieldName} | Update field.
*PdfApi* | [**putUpdateFields**](PdfApi.md#putUpdateFields) | **PUT** /pdf/\{name}/fields | Update fields.
*PdfApi* | [**putWebInStorageToPdf**](PdfApi.md#putWebInStorageToPdf) | **PUT** /pdf/\{name}/create/web | Convert web page to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXfaPdfInRequestToAcroForm**](PdfApi.md#putXfaPdfInRequestToAcroForm) | **PUT** /pdf/convert/xfatoacroform | Converts PDF document which contains XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
*PdfApi* | [**putXfaPdfInStorageToAcroForm**](PdfApi.md#putXfaPdfInStorageToAcroForm) | **PUT** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
*PdfApi* | [**putXmlInStorageToPdf**](PdfApi.md#putXmlInStorageToPdf) | **PUT** /pdf/\{name}/create/xml | Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXpsInStorageToPdf**](PdfApi.md#putXpsInStorageToPdf) | **PUT** /pdf/\{name}/create/xps | Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXslFoInStorageToPdf**](PdfApi.md#putXslFoInStorageToPdf) | **PUT** /pdf/\{name}/create/xslfo | Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**storageExists**](PdfApi.md#storageExists) | **GET** /pdf/storage/\{storageName}/exist | Check if storage exists
*PdfApi* | [**uploadFile**](PdfApi.md#uploadFile) | **PUT** /pdf/storage/file/\{path} | Upload file
<a name="copyFile"></a>
## **copyFile**
> copyFile(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Copy file

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Source file path e.g. '/folder/file.ext' | 
**destPath** | **String** | Destination file path | 
**srcStorageName** | **String?** | Source storage name | [optional]
**destStorageName** | **String?** | Destination storage name | [optional]
**versionId** | **String?** | File version ID to copy | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="copyFolder"></a>
## **copyFolder**
> copyFolder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Copy folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Source folder path e.g. '/src' | 
**destPath** | **String** | Destination folder path e.g. '/dst' | 
**srcStorageName** | **String?** | Source storage name | [optional]
**destStorageName** | **String?** | Destination storage name | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createFolder"></a>
## **createFolder**
> createFolder(path: String, storageName: String? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Create the folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | Folder path to create e.g. 'folder_1/folder_2/' | 
**storageName** | **String?** | Storage name | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteAnnotation"></a>
## **deleteAnnotation**
> deleteAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document annotation by ID

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteBookmark"></a>
## **deleteBookmark**
> deleteBookmark(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document bookmark by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**bookmarkPath** | **String** | The bookmark path. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteDocumentAnnotations"></a>
## **deleteDocumentAnnotations**
> deleteDocumentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all annotations from the document

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteDocumentBookmarks"></a>
## **deleteDocumentBookmarks**
> deleteDocumentBookmarks(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all document bookmarks.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteDocumentLinkAnnotations"></a>
## **deleteDocumentLinkAnnotations**
> deleteDocumentLinkAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all link annotations from the document

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteDocumentStamps"></a>
## **deleteDocumentStamps**
> deleteDocumentStamps(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all stamps from the document

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteDocumentTables"></a>
## **deleteDocumentTables**
> deleteDocumentTables(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all tables from the document

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteField"></a>
## **deleteField**
> deleteField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name/ | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteFile"></a>
## **deleteFile**
> deleteFile(path: String, storageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Delete file

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | File path e.g. '/folder/file.ext' | 
**storageName** | **String?** | Storage name | [optional]
**versionId** | **String?** | File version ID to delete | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteFolder"></a>
## **deleteFolder**
> deleteFolder(path: String, storageName: String? = nil, recursive: Bool? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Delete folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | Folder path e.g. '/folder' | 
**storageName** | **String?** | Storage name | [optional]
**recursive** | **Bool?** | Enable to delete folders, subfolders and files | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteImage"></a>
## **deleteImage**
> deleteImage(name: String, imageId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete image from document page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteLinkAnnotation"></a>
## **deleteLinkAnnotation**
> deleteLinkAnnotation(name: String, linkId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document page link annotation by ID

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**linkId** | **String** | The link ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePage"></a>
## **deletePage**
> deletePage(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document page by its number.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePageAnnotations"></a>
## **deletePageAnnotations**
> deletePageAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all annotations from the page

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePageLinkAnnotations"></a>
## **deletePageLinkAnnotations**
> deletePageLinkAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all link annotations from the page

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePageStamps"></a>
## **deletePageStamps**
> deletePageStamps(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all stamps from the page

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePageTables"></a>
## **deletePageTables**
> deletePageTables(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete all tables from the page

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteProperties"></a>
## **deleteProperties**
> deleteProperties(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete custom document properties.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteProperty"></a>
## **deleteProperty**
> deleteProperty(name: String, propertyName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document property.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**propertyName** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteStamp"></a>
## **deleteStamp**
> deleteStamp(name: String, stampId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document stamp by ID

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**stampId** | **String** | The stamp ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteTable"></a>
## **deleteTable**
> deleteTable(name: String, tableId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Delete document table by ID

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**tableId** | **String** | The table ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="downloadFile"></a>
## **downloadFile**
> downloadFile(path: String, storageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Download file

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | File path e.g. '/folder/file.ext' | 
**storageName** | **String?** | Storage name | [optional]
**versionId** | **String?** | File version ID to download | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getApiInfo"></a>
## **getApiInfo**
> getApiInfo(, completion: @escaping ((_ data: ApiInfo?, _ error: Error?) -> Void))



### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ApiInfo**](ApiInfo.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBookmark"></a>
## **getBookmark**
> getBookmark(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarkResponse?, _ error: Error?) -> Void))

Read document bookmark.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**bookmarkPath** | **String** | The bookmark path. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**BookmarkResponse**](BookmarkResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getBookmarks"></a>
## **getBookmarks**
> getBookmarks(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarksResponse?, _ error: Error?) -> Void))

Read document bookmarks node list.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**bookmarkPath** | **String** | The bookmark path. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**BookmarksResponse**](BookmarksResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCaretAnnotation"></a>
## **getCaretAnnotation**
> getCaretAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationResponse?, _ error: Error?) -> Void))

Read document page caret annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CaretAnnotationResponse**](CaretAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCheckBoxField"></a>
## **getCheckBoxField**
> getCheckBoxField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CheckBoxFieldResponse?, _ error: Error?) -> Void))

Read document checkbox field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CheckBoxFieldResponse**](CheckBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getCircleAnnotation"></a>
## **getCircleAnnotation**
> getCircleAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationResponse?, _ error: Error?) -> Void))

Read document page circle annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CircleAnnotationResponse**](CircleAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getComboBoxField"></a>
## **getComboBoxField**
> getComboBoxField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ComboBoxFieldResponse?, _ error: Error?) -> Void))

Read document combobox field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ComboBoxFieldResponse**](ComboBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDiscUsage"></a>
## **getDiscUsage**
> getDiscUsage(storageName: String? = nil, completion: @escaping ((_ data: DiscUsage?, _ error: Error?) -> Void))

Get disc usage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**storageName** | **String?** | Storage name | [optional]

### Return type

[**DiscUsage**](DiscUsage.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocument"></a>
## **getDocument**
> getDocument(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?, _ error: Error?) -> Void))

Read common document info.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentAnnotations"></a>
## **getDocumentAnnotations**
> getDocumentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationsInfoResponse?, _ error: Error?) -> Void))

Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AnnotationsInfoResponse**](AnnotationsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentAttachmentByIndex"></a>
## **getDocumentAttachmentByIndex**
> getDocumentAttachmentByIndex(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AttachmentResponse?, _ error: Error?) -> Void))

Read document attachment info by its index.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**attachmentIndex** | **Int** | The attachment index. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AttachmentResponse**](AttachmentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentAttachments"></a>
## **getDocumentAttachments**
> getDocumentAttachments(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AttachmentsResponse?, _ error: Error?) -> Void))

Read document attachments info.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AttachmentsResponse**](AttachmentsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentBookmarks"></a>
## **getDocumentBookmarks**
> getDocumentBookmarks(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarksResponse?, _ error: Error?) -> Void))

Read document bookmarks tree.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**BookmarksResponse**](BookmarksResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentCaretAnnotations"></a>
## **getDocumentCaretAnnotations**
> getDocumentCaretAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationsResponse?, _ error: Error?) -> Void))

Read document caret annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CaretAnnotationsResponse**](CaretAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentCheckBoxFields"></a>
## **getDocumentCheckBoxFields**
> getDocumentCheckBoxFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CheckBoxFieldsResponse?, _ error: Error?) -> Void))

Read document checkbox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CheckBoxFieldsResponse**](CheckBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentCircleAnnotations"></a>
## **getDocumentCircleAnnotations**
> getDocumentCircleAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationsResponse?, _ error: Error?) -> Void))

Read document circle annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CircleAnnotationsResponse**](CircleAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentComboBoxFields"></a>
## **getDocumentComboBoxFields**
> getDocumentComboBoxFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ComboBoxFieldsResponse?, _ error: Error?) -> Void))

Read document combobox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ComboBoxFieldsResponse**](ComboBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentDisplayProperties"></a>
## **getDocumentDisplayProperties**
> getDocumentDisplayProperties(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DisplayPropertiesResponse?, _ error: Error?) -> Void))

Read document display properties.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**DisplayPropertiesResponse**](DisplayPropertiesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentFileAttachmentAnnotations"></a>
## **getDocumentFileAttachmentAnnotations**
> getDocumentFileAttachmentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationsResponse?, _ error: Error?) -> Void))

Read document FileAttachment annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FileAttachmentAnnotationsResponse**](FileAttachmentAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentFreeTextAnnotations"></a>
## **getDocumentFreeTextAnnotations**
> getDocumentFreeTextAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationsResponse?, _ error: Error?) -> Void))

Read document free text annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FreeTextAnnotationsResponse**](FreeTextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentHighlightAnnotations"></a>
## **getDocumentHighlightAnnotations**
> getDocumentHighlightAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationsResponse?, _ error: Error?) -> Void))

Read document highlight annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**HighlightAnnotationsResponse**](HighlightAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentInkAnnotations"></a>
## **getDocumentInkAnnotations**
> getDocumentInkAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationsResponse?, _ error: Error?) -> Void))

Read document ink annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**InkAnnotationsResponse**](InkAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentLineAnnotations"></a>
## **getDocumentLineAnnotations**
> getDocumentLineAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationsResponse?, _ error: Error?) -> Void))

Read document line annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LineAnnotationsResponse**](LineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentListBoxFields"></a>
## **getDocumentListBoxFields**
> getDocumentListBoxFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ListBoxFieldsResponse?, _ error: Error?) -> Void))

Read document listbox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ListBoxFieldsResponse**](ListBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentMovieAnnotations"></a>
## **getDocumentMovieAnnotations**
> getDocumentMovieAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationsResponse?, _ error: Error?) -> Void))

Read document movie annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**MovieAnnotationsResponse**](MovieAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentPolygonAnnotations"></a>
## **getDocumentPolygonAnnotations**
> getDocumentPolygonAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationsResponse?, _ error: Error?) -> Void))

Read document polygon annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolygonAnnotationsResponse**](PolygonAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentPolyLineAnnotations"></a>
## **getDocumentPolyLineAnnotations**
> getDocumentPolyLineAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationsResponse?, _ error: Error?) -> Void))

Read document polyline annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolyLineAnnotationsResponse**](PolyLineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentPopupAnnotations"></a>
## **getDocumentPopupAnnotations**
> getDocumentPopupAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationsResponse?, _ error: Error?) -> Void))

Read document popup annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PopupAnnotationsResponse**](PopupAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentPopupAnnotationsByParent"></a>
## **getDocumentPopupAnnotationsByParent**
> getDocumentPopupAnnotationsByParent(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationsResponse?, _ error: Error?) -> Void))

Read document popup annotations by parent id.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The parent annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PopupAnnotationsResponse**](PopupAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentProperties"></a>
## **getDocumentProperties**
> getDocumentProperties(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertiesResponse?, _ error: Error?) -> Void))

Read document properties.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**DocumentPropertiesResponse**](DocumentPropertiesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentProperty"></a>
## **getDocumentProperty**
> getDocumentProperty(name: String, propertyName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertyResponse?, _ error: Error?) -> Void))

Read document property by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**propertyName** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentRadioButtonFields"></a>
## **getDocumentRadioButtonFields**
> getDocumentRadioButtonFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RadioButtonFieldsResponse?, _ error: Error?) -> Void))

Read document radiobutton fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RadioButtonFieldsResponse**](RadioButtonFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentRedactionAnnotations"></a>
## **getDocumentRedactionAnnotations**
> getDocumentRedactionAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationsResponse?, _ error: Error?) -> Void))

Read document redaction annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RedactionAnnotationsResponse**](RedactionAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentScreenAnnotations"></a>
## **getDocumentScreenAnnotations**
> getDocumentScreenAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationsResponse?, _ error: Error?) -> Void))

Read document screen annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ScreenAnnotationsResponse**](ScreenAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentSignatureFields"></a>
## **getDocumentSignatureFields**
> getDocumentSignatureFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SignatureFieldsResponse?, _ error: Error?) -> Void))

Read document signature fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SignatureFieldsResponse**](SignatureFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentSoundAnnotations"></a>
## **getDocumentSoundAnnotations**
> getDocumentSoundAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationsResponse?, _ error: Error?) -> Void))

Read document sound annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SoundAnnotationsResponse**](SoundAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentSquareAnnotations"></a>
## **getDocumentSquareAnnotations**
> getDocumentSquareAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationsResponse?, _ error: Error?) -> Void))

Read document square annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquareAnnotationsResponse**](SquareAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentSquigglyAnnotations"></a>
## **getDocumentSquigglyAnnotations**
> getDocumentSquigglyAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationsResponse?, _ error: Error?) -> Void))

Read document squiggly annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquigglyAnnotationsResponse**](SquigglyAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentStampAnnotations"></a>
## **getDocumentStampAnnotations**
> getDocumentStampAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationsResponse?, _ error: Error?) -> Void))

Read document stamp annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StampAnnotationsResponse**](StampAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentStamps"></a>
## **getDocumentStamps**
> getDocumentStamps(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampsInfoResponse?, _ error: Error?) -> Void))

Read document stamps.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StampsInfoResponse**](StampsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentStrikeOutAnnotations"></a>
## **getDocumentStrikeOutAnnotations**
> getDocumentStrikeOutAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationsResponse?, _ error: Error?) -> Void))

Read document StrikeOut annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StrikeOutAnnotationsResponse**](StrikeOutAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentTables"></a>
## **getDocumentTables**
> getDocumentTables(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TablesRecognizedResponse?, _ error: Error?) -> Void))

Read document tables.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**TablesRecognizedResponse**](TablesRecognizedResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentTextAnnotations"></a>
## **getDocumentTextAnnotations**
> getDocumentTextAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationsResponse?, _ error: Error?) -> Void))

Read document text annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextAnnotationsResponse**](TextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentTextBoxFields"></a>
## **getDocumentTextBoxFields**
> getDocumentTextBoxFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextBoxFieldsResponse?, _ error: Error?) -> Void))

Read document text box fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextBoxFieldsResponse**](TextBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDocumentUnderlineAnnotations"></a>
## **getDocumentUnderlineAnnotations**
> getDocumentUnderlineAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationsResponse?, _ error: Error?) -> Void))

Read document underline annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**UnderlineAnnotationsResponse**](UnderlineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getDownloadDocumentAttachmentByIndex"></a>
## **getDownloadDocumentAttachmentByIndex**
> getDownloadDocumentAttachmentByIndex(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Download document attachment content by its index.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**attachmentIndex** | **Int** | The attachment index. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getEpubInStorageToPdf"></a>
## **getEpubInStorageToPdf**
> getEpubInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert EPUB file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.epub) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getExportFieldsFromPdfToFdfInStorage"></a>
## **getExportFieldsFromPdfToFdfInStorage**
> getExportFieldsFromPdfToFdfInStorage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Export fields from from PDF in storage to FDF file.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getExportFieldsFromPdfToXfdfInStorage"></a>
## **getExportFieldsFromPdfToXfdfInStorage**
> getExportFieldsFromPdfToXfdfInStorage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Export fields from from PDF in storage to XFDF file.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getExportFieldsFromPdfToXmlInStorage"></a>
## **getExportFieldsFromPdfToXmlInStorage**
> getExportFieldsFromPdfToXmlInStorage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Export fields from from PDF in storage to XML file.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getField"></a>
## **getField**
> getField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldResponse?, _ error: Error?) -> Void))

Get document field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name (name should be encoded). | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FieldResponse**](FieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFields"></a>
## **getFields**
> getFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldsResponse?, _ error: Error?) -> Void))

Get document fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FieldsResponse**](FieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFileAttachmentAnnotation"></a>
## **getFileAttachmentAnnotation**
> getFileAttachmentAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationResponse?, _ error: Error?) -> Void))

Read document page FileAttachment annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FileAttachmentAnnotationResponse**](FileAttachmentAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFileAttachmentAnnotationData"></a>
## **getFileAttachmentAnnotationData**
> getFileAttachmentAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Read document page FileAttachment annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getFilesList"></a>
## **getFilesList**
> getFilesList(path: String, storageName: String? = nil, completion: @escaping ((_ data: FilesList?, _ error: Error?) -> Void))

Get all files and folders within a folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | Folder path e.g. '/folder' | 
**storageName** | **String?** | Storage name | [optional]

### Return type

[**FilesList**](FilesList.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFileVersions"></a>
## **getFileVersions**
> getFileVersions(path: String, storageName: String? = nil, completion: @escaping ((_ data: FileVersions?, _ error: Error?) -> Void))

Get file versions

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | File path e.g. '/file.ext' | 
**storageName** | **String?** | Storage name | [optional]

### Return type

[**FileVersions**](FileVersions.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getFreeTextAnnotation"></a>
## **getFreeTextAnnotation**
> getFreeTextAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationResponse?, _ error: Error?) -> Void))

Read document page free text annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FreeTextAnnotationResponse**](FreeTextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getHighlightAnnotation"></a>
## **getHighlightAnnotation**
> getHighlightAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationResponse?, _ error: Error?) -> Void))

Read document page highlight annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**HighlightAnnotationResponse**](HighlightAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getHtmlInStorageToPdf"></a>
## **getHtmlInStorageToPdf**
> getHtmlInStorageToPdf(srcPath: String, htmlFileName: String? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert HTML file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.zip) | 
**htmlFileName** | **String?** | Name of HTML file in ZIP. | [optional]
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImage"></a>
## **getImage**
> getImage(name: String, imageId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ImageResponse?, _ error: Error?) -> Void))

Read document image by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ImageResponse**](ImageResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getImageExtractAsGif"></a>
## **getImageExtractAsGif**
> getImageExtractAsGif(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Extract document image in GIF format

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImageExtractAsJpeg"></a>
## **getImageExtractAsJpeg**
> getImageExtractAsJpeg(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Extract document image in JPEG format

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImageExtractAsPng"></a>
## **getImageExtractAsPng**
> getImageExtractAsPng(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Extract document image in PNG format

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImageExtractAsTiff"></a>
## **getImageExtractAsTiff**
> getImageExtractAsTiff(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Extract document image in TIFF format

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImages"></a>
## **getImages**
> getImages(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ImagesResponse?, _ error: Error?) -> Void))

Read document images.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ImagesResponse**](ImagesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getImportFieldsFromFdfInStorage"></a>
## **getImportFieldsFromFdfInStorage**
> getImportFieldsFromFdfInStorage(name: String, fdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Update fields from FDF file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fdfFilePath** | **String** | The Fdf file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImportFieldsFromXfdfInStorage"></a>
## **getImportFieldsFromXfdfInStorage**
> getImportFieldsFromXfdfInStorage(name: String, xfdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Update fields from XFDF file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**xfdfFilePath** | **String** | The XFDF file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getImportFieldsFromXmlInStorage"></a>
## **getImportFieldsFromXmlInStorage**
> getImportFieldsFromXmlInStorage(name: String, xmlFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Import from XML file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**xmlFilePath** | **String** | Full source filename (ex. /folder1/folder2/template.xml) | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getInkAnnotation"></a>
## **getInkAnnotation**
> getInkAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationResponse?, _ error: Error?) -> Void))

Read document page ink annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**InkAnnotationResponse**](InkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getLaTeXInStorageToPdf"></a>
## **getLaTeXInStorageToPdf**
> getLaTeXInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert TeX file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.tex) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getLineAnnotation"></a>
## **getLineAnnotation**
> getLineAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationResponse?, _ error: Error?) -> Void))

Read document page line annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LineAnnotationResponse**](LineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getLinkAnnotation"></a>
## **getLinkAnnotation**
> getLinkAnnotation(name: String, linkId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?, _ error: Error?) -> Void))

Read document link annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**linkId** | **String** | The link ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getListBoxField"></a>
## **getListBoxField**
> getListBoxField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ListBoxFieldResponse?, _ error: Error?) -> Void))

Read document listbox field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ListBoxFieldResponse**](ListBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getMarkdownInStorageToPdf"></a>
## **getMarkdownInStorageToPdf**
> getMarkdownInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert MD file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.md) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getMhtInStorageToPdf"></a>
## **getMhtInStorageToPdf**
> getMhtInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert MHT file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.mht) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getMovieAnnotation"></a>
## **getMovieAnnotation**
> getMovieAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationResponse?, _ error: Error?) -> Void))

Read document page movie annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**MovieAnnotationResponse**](MovieAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPage"></a>
## **getPage**
> getPage(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPageResponse?, _ error: Error?) -> Void))

Read document page info.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**DocumentPageResponse**](DocumentPageResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageAnnotations"></a>
## **getPageAnnotations**
> getPageAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationsInfoResponse?, _ error: Error?) -> Void))

Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AnnotationsInfoResponse**](AnnotationsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageCaretAnnotations"></a>
## **getPageCaretAnnotations**
> getPageCaretAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationsResponse?, _ error: Error?) -> Void))

Read document page caret annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CaretAnnotationsResponse**](CaretAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageCheckBoxFields"></a>
## **getPageCheckBoxFields**
> getPageCheckBoxFields(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CheckBoxFieldsResponse?, _ error: Error?) -> Void))

Read document page checkbox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CheckBoxFieldsResponse**](CheckBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageCircleAnnotations"></a>
## **getPageCircleAnnotations**
> getPageCircleAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationsResponse?, _ error: Error?) -> Void))

Read document page circle annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CircleAnnotationsResponse**](CircleAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageComboBoxFields"></a>
## **getPageComboBoxFields**
> getPageComboBoxFields(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ComboBoxFieldsResponse?, _ error: Error?) -> Void))

Read document page combobox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ComboBoxFieldsResponse**](ComboBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageConvertToBmp"></a>
## **getPageConvertToBmp**
> getPageConvertToBmp(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert document page to Bmp image and return resulting file in response.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPageConvertToEmf"></a>
## **getPageConvertToEmf**
> getPageConvertToEmf(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert document page to Emf image and return resulting file in response.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPageConvertToGif"></a>
## **getPageConvertToGif**
> getPageConvertToGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert document page to Gif image and return resulting file in response.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPageConvertToJpeg"></a>
## **getPageConvertToJpeg**
> getPageConvertToJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert document page to Jpeg image and return resulting file in response.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPageConvertToPng"></a>
## **getPageConvertToPng**
> getPageConvertToPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert document page to Png image and return resulting file in response.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPageConvertToTiff"></a>
## **getPageConvertToTiff**
> getPageConvertToTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert document page to Tiff image and return resulting file in response.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPageFileAttachmentAnnotations"></a>
## **getPageFileAttachmentAnnotations**
> getPageFileAttachmentAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationsResponse?, _ error: Error?) -> Void))

Read document page FileAttachment annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FileAttachmentAnnotationsResponse**](FileAttachmentAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageFreeTextAnnotations"></a>
## **getPageFreeTextAnnotations**
> getPageFreeTextAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationsResponse?, _ error: Error?) -> Void))

Read document page free text annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FreeTextAnnotationsResponse**](FreeTextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageHighlightAnnotations"></a>
## **getPageHighlightAnnotations**
> getPageHighlightAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationsResponse?, _ error: Error?) -> Void))

Read document page highlight annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**HighlightAnnotationsResponse**](HighlightAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageInkAnnotations"></a>
## **getPageInkAnnotations**
> getPageInkAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationsResponse?, _ error: Error?) -> Void))

Read document page ink annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**InkAnnotationsResponse**](InkAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageLineAnnotations"></a>
## **getPageLineAnnotations**
> getPageLineAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationsResponse?, _ error: Error?) -> Void))

Read document page line annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LineAnnotationsResponse**](LineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageLinkAnnotation"></a>
## **getPageLinkAnnotation**
> getPageLinkAnnotation(name: String, pageNumber: Int, linkId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?, _ error: Error?) -> Void))

Read document page link annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**linkId** | **String** | The link ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageLinkAnnotations"></a>
## **getPageLinkAnnotations**
> getPageLinkAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationsResponse?, _ error: Error?) -> Void))

Read document page link annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LinkAnnotationsResponse**](LinkAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageListBoxFields"></a>
## **getPageListBoxFields**
> getPageListBoxFields(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ListBoxFieldsResponse?, _ error: Error?) -> Void))

Read document page listbox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ListBoxFieldsResponse**](ListBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageMovieAnnotations"></a>
## **getPageMovieAnnotations**
> getPageMovieAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationsResponse?, _ error: Error?) -> Void))

Read document page movie annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**MovieAnnotationsResponse**](MovieAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPagePolygonAnnotations"></a>
## **getPagePolygonAnnotations**
> getPagePolygonAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationsResponse?, _ error: Error?) -> Void))

Read document page polygon annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolygonAnnotationsResponse**](PolygonAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPagePolyLineAnnotations"></a>
## **getPagePolyLineAnnotations**
> getPagePolyLineAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationsResponse?, _ error: Error?) -> Void))

Read document page polyline annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolyLineAnnotationsResponse**](PolyLineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPagePopupAnnotations"></a>
## **getPagePopupAnnotations**
> getPagePopupAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationsResponse?, _ error: Error?) -> Void))

Read document page popup annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PopupAnnotationsResponse**](PopupAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageRadioButtonFields"></a>
## **getPageRadioButtonFields**
> getPageRadioButtonFields(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RadioButtonFieldsResponse?, _ error: Error?) -> Void))

Read document page radiobutton fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RadioButtonFieldsResponse**](RadioButtonFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageRedactionAnnotations"></a>
## **getPageRedactionAnnotations**
> getPageRedactionAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationsResponse?, _ error: Error?) -> Void))

Read document page redaction annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RedactionAnnotationsResponse**](RedactionAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPages"></a>
## **getPages**
> getPages(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPagesResponse?, _ error: Error?) -> Void))

Read document pages info.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**DocumentPagesResponse**](DocumentPagesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageScreenAnnotations"></a>
## **getPageScreenAnnotations**
> getPageScreenAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationsResponse?, _ error: Error?) -> Void))

Read document page screen annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ScreenAnnotationsResponse**](ScreenAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageSignatureFields"></a>
## **getPageSignatureFields**
> getPageSignatureFields(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SignatureFieldsResponse?, _ error: Error?) -> Void))

Read document page signature fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SignatureFieldsResponse**](SignatureFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageSoundAnnotations"></a>
## **getPageSoundAnnotations**
> getPageSoundAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationsResponse?, _ error: Error?) -> Void))

Read document page sound annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SoundAnnotationsResponse**](SoundAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageSquareAnnotations"></a>
## **getPageSquareAnnotations**
> getPageSquareAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationsResponse?, _ error: Error?) -> Void))

Read document page square annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquareAnnotationsResponse**](SquareAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageSquigglyAnnotations"></a>
## **getPageSquigglyAnnotations**
> getPageSquigglyAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationsResponse?, _ error: Error?) -> Void))

Read document page squiggly annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquigglyAnnotationsResponse**](SquigglyAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageStampAnnotations"></a>
## **getPageStampAnnotations**
> getPageStampAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationsResponse?, _ error: Error?) -> Void))

Read document page stamp annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StampAnnotationsResponse**](StampAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageStamps"></a>
## **getPageStamps**
> getPageStamps(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampsInfoResponse?, _ error: Error?) -> Void))

Read page document stamps.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StampsInfoResponse**](StampsInfoResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageStrikeOutAnnotations"></a>
## **getPageStrikeOutAnnotations**
> getPageStrikeOutAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationsResponse?, _ error: Error?) -> Void))

Read document page StrikeOut annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StrikeOutAnnotationsResponse**](StrikeOutAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageTables"></a>
## **getPageTables**
> getPageTables(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TablesRecognizedResponse?, _ error: Error?) -> Void))

Read document page tables.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**pageNumber** | **Int** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**TablesRecognizedResponse**](TablesRecognizedResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageText"></a>
## **getPageText**
> getPageText(name: String, pageNumber: Int, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: TextRectsResponse?, _ error: Error?) -> Void))

Read page text items.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | Number of page (starting from 1). | 
**LLX** | **Double** | X-coordinate of lower - left corner. | 
**LLY** | **Double** | Y - coordinate of lower-left corner. | 
**URX** | **Double** | X - coordinate of upper-right corner. | 
**URY** | **Double** | Y - coordinate of upper-right corner. | 
**format** | **[String]?** | List of formats for search. | [optional]
**regex** | **String?** | Formats are specified as a regular expression. | [optional]
**splitRects** | **Bool?** | Split result fragments (default is true). | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**TextRectsResponse**](TextRectsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageTextAnnotations"></a>
## **getPageTextAnnotations**
> getPageTextAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationsResponse?, _ error: Error?) -> Void))

Read document page text annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextAnnotationsResponse**](TextAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageTextBoxFields"></a>
## **getPageTextBoxFields**
> getPageTextBoxFields(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextBoxFieldsResponse?, _ error: Error?) -> Void))

Read document page text box fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextBoxFieldsResponse**](TextBoxFieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageUnderlineAnnotations"></a>
## **getPageUnderlineAnnotations**
> getPageUnderlineAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationsResponse?, _ error: Error?) -> Void))

Read document page underline annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**UnderlineAnnotationsResponse**](UnderlineAnnotationsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPclInStorageToPdf"></a>
## **getPclInStorageToPdf**
> getPclInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert PCL file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.pcl) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfAInStorageToPdf"></a>
## **getPdfAInStorageToPdf**
> getPdfAInStorageToPdf(srcPath: String, dontOptimize: Bool? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert PDFA file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.pdf) | 
**dontOptimize** | **Bool?** | If set, document resources will not be optimized. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToDoc"></a>
## **getPdfInStorageToDoc**
> getPdfInStorageToDoc(name: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to DOC format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**addReturnToLineEnd** | **Bool?** | Add return to line end. | [optional]
**format** | **String?** | Allows to specify .doc or .docx file format. | [optional]
**imageResolutionX** | **Int?** | Image resolution X. | [optional]
**imageResolutionY** | **Int?** | Image resolution Y. | [optional]
**maxDistanceBetweenTextLines** | **Double?** | Max distance between text lines. | [optional]
**mode** | **String?** | Allows to control how a PDF document is converted into a word processing document. | [optional]
**recognizeBullets** | **Bool?** | Recognize bullets. | [optional]
**relativeHorizontalProximity** | **Double?** | Relative horizontal proximity. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToEpub"></a>
## **getPdfInStorageToEpub**
> getPdfInStorageToEpub(name: String, contentRecognitionMode: String? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to EPUB format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**contentRecognitionMode** | **String?** | Property tunes conversion for this or that desirable method of recognition of content. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToHtml"></a>
## **getPdfInStorageToHtml**
> getPdfInStorageToHtml(name: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil, flowLayoutParagraphFullWidth: Bool? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to Html format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**additionalMarginWidthInPoints** | **Int?** | Defines width of margin that will be forcibly left around that output HTML-areas. | [optional]
**compressSvgGraphicsIfAny** | **Bool?** | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional]
**convertMarkedContentToLayers** | **Bool?** | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with "data-pdflayer" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional]
**defaultFontName** | **String?** | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional]
**documentType** | **String?** | Result document type. | [optional]
**fixedLayout** | **Bool?** | The value indicating whether that HTML is created as fixed layout. | [optional]
**imageResolution** | **Int?** | Resolution for image rendering. | [optional]
**minimalLineWidth** | **Int?** | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional]
**preventGlyphsGrouping** | **Bool?** | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional]
**splitCssIntoPages** | **Bool?** | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional]
**splitIntoPages** | **Bool?** | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional]
**useZOrder** | **Bool?** | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional]
**antialiasingProcessing** | **String?** | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional]
**cssClassNamesPrefix** | **String?** | When PDFtoHTML converter generates result CSSs, CSS class names (something like ".stl_01 {}" ... ".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional]
**explicitListOfSavedPages** | **[Int]?** | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional]
**fontEncodingStrategy** | **String?** | Defines encoding special rule to tune PDF decoding for current document. | [optional]
**fontSavingMode** | **String?** | Defines font saving mode that will be used during saving of PDF to desirable format. | [optional]
**htmlMarkupGenerationMode** | **String?** | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional]
**lettersPositioningMethod** | **String?** | The mode of positioning of letters in words in result HTML. | [optional]
**pagesFlowTypeDependsOnViewersScreenSize** | **Bool?** | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional]
**partsEmbeddingMode** | **String?** | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional]
**rasterImagesSavingMode** | **String?** | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional]
**removeEmptyAreasOnTopAndBottom** | **Bool?** | Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional]
**saveShadowedTextsAsTransparentTexts** | **Bool?** | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional]
**saveTransparentTexts** | **Bool?** | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional]
**specialFolderForAllImages** | **String?** | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**specialFolderForSvgImages** | **String?** | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**trySaveTextUnderliningAndStrikeoutingInCss** | **Bool?** | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]
**flowLayoutParagraphFullWidth** | **Bool?** | This attribute specifies full width paragraph text for Flow mode, FixedLayout = false. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToLaTeX"></a>
## **getPdfInStorageToLaTeX**
> getPdfInStorageToLaTeX(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TeX format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToMobiXml"></a>
## **getPdfInStorageToMobiXml**
> getPdfInStorageToMobiXml(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToPdfA"></a>
## **getPdfInStorageToPdfA**
> getPdfInStorageToPdfA(name: String, type: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to PdfA format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**type** | **String** | Type of PdfA format. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToPptx"></a>
## **getPdfInStorageToPptx**
> getPdfInStorageToPptx(name: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to PPTX format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**separateImages** | **Bool?** | Separate images. | [optional]
**slidesAsImages** | **Bool?** | Slides as images. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToSvg"></a>
## **getPdfInStorageToSvg**
> getPdfInStorageToSvg(name: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to SVG format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**compressOutputToZipArchive** | **Bool?** | Specifies whether output will be created as one zip-archive. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToTeX"></a>
## **getPdfInStorageToTeX**
> getPdfInStorageToTeX(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TeX format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToTiff"></a>
## **getPdfInStorageToTiff**
> getPdfInStorageToTiff(name: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TIFF format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**brightness** | **Double?** | Image brightness. | [optional]
**compression** | **String?** | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional]
**colorDepth** | **String?** | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional]
**leftMargin** | **Int?** | Left image margin. | [optional]
**rightMargin** | **Int?** | Right image margin. | [optional]
**topMargin** | **Int?** | Top image margin. | [optional]
**bottomMargin** | **Int?** | Bottom image margin. | [optional]
**orientation** | **String?** | Image orientation. Possible values are: None, Landscape, Portait. | [optional]
**skipBlankPages** | **Bool?** | Skip blank pages flag. | [optional]
**width** | **Int?** | Image width. | [optional]
**height** | **Int?** | Image height. | [optional]
**xResolution** | **Int?** | Horizontal resolution. | [optional]
**yResolution** | **Int?** | Vertical resolution. | [optional]
**pageIndex** | **Int?** | Start page to export. | [optional]
**pageCount** | **Int?** | Number of pages to export. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXls"></a>
## **getPdfInStorageToXls**
> getPdfInStorageToXls(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XLS format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**insertBlankColumnAtFirst** | **Bool?** | Insert blank column at first | [optional]
**minimizeTheNumberOfWorksheets** | **Bool?** | Minimize the number of worksheets | [optional]
**scaleFactor** | **Double?** | Scale factor | [optional]
**uniformWorksheets** | **Bool?** | Uniform worksheets | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXlsx"></a>
## **getPdfInStorageToXlsx**
> getPdfInStorageToXlsx(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XLSX format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**insertBlankColumnAtFirst** | **Bool?** | Insert blank column at first | [optional]
**minimizeTheNumberOfWorksheets** | **Bool?** | Minimize the number of worksheets | [optional]
**scaleFactor** | **Double?** | Scale factor | [optional]
**uniformWorksheets** | **Bool?** | Uniform worksheets | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXml"></a>
## **getPdfInStorageToXml**
> getPdfInStorageToXml(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XML format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXps"></a>
## **getPdfInStorageToXps**
> getPdfInStorageToXps(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XPS format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPolygonAnnotation"></a>
## **getPolygonAnnotation**
> getPolygonAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationResponse?, _ error: Error?) -> Void))

Read document page polygon annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolygonAnnotationResponse**](PolygonAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPolyLineAnnotation"></a>
## **getPolyLineAnnotation**
> getPolyLineAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationResponse?, _ error: Error?) -> Void))

Read document page polyline annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolyLineAnnotationResponse**](PolyLineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPopupAnnotation"></a>
## **getPopupAnnotation**
> getPopupAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationResponse?, _ error: Error?) -> Void))

Read document page popup annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PopupAnnotationResponse**](PopupAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPsInStorageToPdf"></a>
## **getPsInStorageToPdf**
> getPsInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert PS file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.ps) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getRadioButtonField"></a>
## **getRadioButtonField**
> getRadioButtonField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RadioButtonFieldResponse?, _ error: Error?) -> Void))

Read document RadioButton field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RadioButtonFieldResponse**](RadioButtonFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getRedactionAnnotation"></a>
## **getRedactionAnnotation**
> getRedactionAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationResponse?, _ error: Error?) -> Void))

Read document page redaction annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RedactionAnnotationResponse**](RedactionAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getScreenAnnotation"></a>
## **getScreenAnnotation**
> getScreenAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationResponse?, _ error: Error?) -> Void))

Read document page screen annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ScreenAnnotationResponse**](ScreenAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getScreenAnnotationData"></a>
## **getScreenAnnotationData**
> getScreenAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Read document page screen annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getSignatureField"></a>
## **getSignatureField**
> getSignatureField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SignatureFieldResponse?, _ error: Error?) -> Void))

Read document signature field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SignatureFieldResponse**](SignatureFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSoundAnnotation"></a>
## **getSoundAnnotation**
> getSoundAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationResponse?, _ error: Error?) -> Void))

Read document page sound annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SoundAnnotationResponse**](SoundAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSoundAnnotationData"></a>
## **getSoundAnnotationData**
> getSoundAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Read document page sound annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getSquareAnnotation"></a>
## **getSquareAnnotation**
> getSquareAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationResponse?, _ error: Error?) -> Void))

Read document page square annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquareAnnotationResponse**](SquareAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSquigglyAnnotation"></a>
## **getSquigglyAnnotation**
> getSquigglyAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationResponse?, _ error: Error?) -> Void))

Read document page squiggly annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquigglyAnnotationResponse**](SquigglyAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStampAnnotation"></a>
## **getStampAnnotation**
> getStampAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationResponse?, _ error: Error?) -> Void))

Read document page stamp annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StampAnnotationResponse**](StampAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStampAnnotationData"></a>
## **getStampAnnotationData**
> getStampAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Read document page stamp annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStrikeOutAnnotation"></a>
## **getStrikeOutAnnotation**
> getStrikeOutAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationResponse?, _ error: Error?) -> Void))

Read document page StrikeOut annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StrikeOutAnnotationResponse**](StrikeOutAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSvgInStorageToPdf"></a>
## **getSvgInStorageToPdf**
> getSvgInStorageToPdf(srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert SVG file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.svg) | 
**adjustPageSize** | **Bool?** | Adjust page size | [optional]
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getTable"></a>
## **getTable**
> getTable(name: String, tableId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TableRecognizedResponse?, _ error: Error?) -> Void))

Read document page table by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**tableId** | **String** | The table ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TableRecognizedResponse**](TableRecognizedResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getTeXInStorageToPdf"></a>
## **getTeXInStorageToPdf**
> getTeXInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert TeX file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.tex) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getText"></a>
## **getText**
> getText(name: String, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: TextRectsResponse?, _ error: Error?) -> Void))

Read document text.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**LLX** | **Double** | X-coordinate of lower - left corner. | 
**LLY** | **Double** | Y - coordinate of lower-left corner. | 
**URX** | **Double** | X - coordinate of upper-right corner. | 
**URY** | **Double** | Y - coordinate of upper-right corner. | 
**format** | **[String]?** | List of formats for search. | [optional]
**regex** | **String?** | Formats are specified as a regular expression. | [optional]
**splitRects** | **Bool?** | Split result fragments (default is true). | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**TextRectsResponse**](TextRectsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getTextAnnotation"></a>
## **getTextAnnotation**
> getTextAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationResponse?, _ error: Error?) -> Void))

Read document page text annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextAnnotationResponse**](TextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getTextBoxField"></a>
## **getTextBoxField**
> getTextBoxField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextBoxFieldResponse?, _ error: Error?) -> Void))

Read document text box field by name.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextBoxFieldResponse**](TextBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUnderlineAnnotation"></a>
## **getUnderlineAnnotation**
> getUnderlineAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationResponse?, _ error: Error?) -> Void))

Read document page underline annotation by ID.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**UnderlineAnnotationResponse**](UnderlineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getVerifySignature"></a>
## **getVerifySignature**
> getVerifySignature(name: String, signName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SignatureVerifyResponse?, _ error: Error?) -> Void))

Verify signature document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**signName** | **String** | Sign name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SignatureVerifyResponse**](SignatureVerifyResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getWebInStorageToPdf"></a>
## **getWebInStorageToPdf**
> getWebInStorageToPdf(url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert web page to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**url** | **String** | Source url | 
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getWordsPerPage"></a>
## **getWordsPerPage**
> getWordsPerPage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: WordCountResponse?, _ error: Error?) -> Void))

Get number of words per document page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**WordCountResponse**](WordCountResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getXfaPdfInStorageToAcroForm"></a>
## **getXfaPdfInStorageToAcroForm**
> getXfaPdfInStorageToAcroForm(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and returns resulting file response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getXmlInStorageToPdf"></a>
## **getXmlInStorageToPdf**
> getXmlInStorageToPdf(srcPath: String, xslFilePath: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert XML file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xml) | 
**xslFilePath** | **String?** | Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getXpsInStorageToPdf"></a>
## **getXpsInStorageToPdf**
> getXpsInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert XPS file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xps) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getXslFoInStorageToPdf"></a>
## **getXslFoInStorageToPdf**
> getXslFoInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?, _ error: Error?) -> Void))

Convert XslFo file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xslfo) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**Data**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="moveFile"></a>
## **moveFile**
> moveFile(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Move file

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Source file path e.g. '/src.ext' | 
**destPath** | **String** | Destination file path e.g. '/dest.ext' | 
**srcStorageName** | **String?** | Source storage name | [optional]
**destStorageName** | **String?** | Destination storage name | [optional]
**versionId** | **String?** | File version ID to move | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="moveFolder"></a>
## **moveFolder**
> moveFolder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, completion: @escaping ((_ data: ?, _ error: Error?) -> Void))

Move folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Folder path to move e.g. '/folder' | 
**destPath** | **String** | Destination folder path to move to e.g '/dst' | 
**srcStorageName** | **String?** | Source storage name | [optional]
**destStorageName** | **String?** | Destination storage name | [optional]

### Return type

****

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="objectExists"></a>
## **objectExists**
> objectExists(path: String, storageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: ObjectExist?, _ error: Error?) -> Void))

Check if file or folder exists

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | File or folder path e.g. '/file.ext' or '/folder' | 
**storageName** | **String?** | Storage name | [optional]
**versionId** | **String?** | File version ID | [optional]

### Return type

[**ObjectExist**](ObjectExist.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postAppendDocument"></a>
## **postAppendDocument**
> postAppendDocument(name: String, appendFile: String, startPage: Int? = nil, endPage: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?, _ error: Error?) -> Void))

Append document to existing one.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The original document name. | 
**appendFile** | **String** | Append file server path. | 
**startPage** | **Int?** | Appending start page. | [optional]
**endPage** | **Int?** | Appending end page. | [optional]
**storage** | **String?** | The documents storage. | [optional]
**folder** | **String?** | The original document folder. | [optional]

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postBookmark"></a>
## **postBookmark**
> postBookmark(name: String, bookmarkPath: String, bookmarks: [Bookmark], folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarksResponse?, _ error: Error?) -> Void))

Add document bookmarks.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**bookmarkPath** | **String** | The parent bookmark path. Specify an empty string when adding a bookmark to the root. | 
**bookmarks** | [**[Bookmark]**](Bookmark.md) | The array of bookmark. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**BookmarksResponse**](BookmarksResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postChangePasswordDocumentInStorage"></a>
## **postChangePasswordDocumentInStorage**
> postChangePasswordDocumentInStorage(name: String, ownerPassword: String, newUserPassword: String, newOwnerPassword: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Change document password in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | Document name. | 
**ownerPassword** | **String** | Owner password (encrypted Base64). | 
**newUserPassword** | **String** | New user password (encrypted Base64). | 
**newOwnerPassword** | **String** | New owner password (encrypted Base64). | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postCheckBoxFields"></a>
## **postCheckBoxFields**
> postCheckBoxFields(name: String, fields: [CheckBoxField], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document checkbox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**[CheckBoxField]**](CheckBoxField.md) | The array of field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postComboBoxFields"></a>
## **postComboBoxFields**
> postComboBoxFields(name: String, fields: [ComboBoxField], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document combobox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**[ComboBoxField]**](ComboBoxField.md) | The array of field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postCreateDocument"></a>
## **postCreateDocument**
> postCreateDocument(name: String, documentConfig: DocumentConfig, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?, _ error: Error?) -> Void))

Create empty document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The new document name. | 
**documentConfig** | [**DocumentConfig**](DocumentConfig.md) | The document config for new document. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The new document folder. | [optional]

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postCreateField"></a>
## **postCreateField**
> postCreateField(name: String, page: Int, field: Field, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Create field.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**page** | **Int** | Document page number. | 
**field** | [**Field**](Field.md) | Field with the field data. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDecryptDocumentInStorage"></a>
## **postDecryptDocumentInStorage**
> postDecryptDocumentInStorage(name: String, password: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Decrypt document in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | Document name. | 
**password** | **String** | The password (encrypted Base64). | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDocumentImageFooter"></a>
## **postDocumentImageFooter**
> postDocumentImageFooter(name: String, imageFooter: ImageFooter, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document image footer.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageFooter** | [**ImageFooter**](ImageFooter.md) | The image footer. | 
**startPageNumber** | **Int?** | The start page number. | [optional]
**endPageNumber** | **Int?** | The end page number. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDocumentImageHeader"></a>
## **postDocumentImageHeader**
> postDocumentImageHeader(name: String, imageHeader: ImageHeader, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document image header.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageHeader** | [**ImageHeader**](ImageHeader.md) | The image header. | 
**startPageNumber** | **Int?** | The start page number. | [optional]
**endPageNumber** | **Int?** | The end page number. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDocumentPageNumberStamps"></a>
## **postDocumentPageNumberStamps**
> postDocumentPageNumberStamps(name: String, stamp: PageNumberStamp, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page number stamps.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**stamp** | [**PageNumberStamp**](PageNumberStamp.md) | The stamp. | 
**startPageNumber** | **Int?** | The start page number. | [optional]
**endPageNumber** | **Int?** | The end page number. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDocumentTextFooter"></a>
## **postDocumentTextFooter**
> postDocumentTextFooter(name: String, textFooter: TextFooter, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document text footer.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**textFooter** | [**TextFooter**](TextFooter.md) | The text footer. | 
**startPageNumber** | **Int?** | The start page number. | [optional]
**endPageNumber** | **Int?** | The end page number. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDocumentTextHeader"></a>
## **postDocumentTextHeader**
> postDocumentTextHeader(name: String, textHeader: TextHeader, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document text header.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**textHeader** | [**TextHeader**](TextHeader.md) | The text header. | 
**startPageNumber** | **Int?** | The start page number. | [optional]
**endPageNumber** | **Int?** | The end page number. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDocumentTextReplace"></a>
## **postDocumentTextReplace**
> postDocumentTextReplace(name: String, textReplace: TextReplaceListRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextReplaceResponse?, _ error: Error?) -> Void))

Document's replace text method.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**textReplace** | [**TextReplaceListRequest**](TextReplaceListRequest.md) |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**TextReplaceResponse**](TextReplaceResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postEncryptDocumentInStorage"></a>
## **postEncryptDocumentInStorage**
> postEncryptDocumentInStorage(name: String, userPassword: String, ownerPassword: String, cryptoAlgorithm: String, permissionsFlags: []? = nil, usePdf20: Bool? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Encrypt document in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | Document name. | 
**userPassword** | **String** | User password (encrypted Base64). | 
**ownerPassword** | **String** | Owner password (encrypted Base64). | 
**cryptoAlgorithm** | **String** | Cryptographic algorithm, see CryptoAlgorithm for details. | 
**permissionsFlags** | **[]?** | Array of document permissions, see PermissionsFlags for details. | [optional]
**usePdf20** | **Bool?** | Support for revision 6 (Extension 8). | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postFlattenDocument"></a>
## **postFlattenDocument**
> postFlattenDocument(name: String, updateAppearances: Bool? = nil, callEvents: Bool? = nil, hideButtons: Bool? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Flatten the document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**updateAppearances** | **Bool?** | If set, all field appearances will be regenerated before flattening. This option may help if field is incorrectly flattened. This option may decrease performance.. | [optional]
**callEvents** | **Bool?** | If set, formatting and other JavaScript events will be called. | [optional]
**hideButtons** | **Bool?** | If set, buttons will be removed from flattened document. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postImportFieldsFromFdf"></a>
## **postImportFieldsFromFdf**
> postImportFieldsFromFdf(name: String, storage: String? = nil, folder: String? = nil, fdfData: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update fields from FDF file in request.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**fdfData** | **Data?** | Fdf file. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="postImportFieldsFromXfdf"></a>
## **postImportFieldsFromXfdf**
> postImportFieldsFromXfdf(name: String, storage: String? = nil, folder: String? = nil, xfdfData: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update fields from XFDF file in request.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**xfdfData** | **Data?** | Xfdf file. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="postImportFieldsFromXml"></a>
## **postImportFieldsFromXml**
> postImportFieldsFromXml(name: String, storage: String? = nil, folder: String? = nil, xmlData: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update fields from XML file in request.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**xmlData** | **Data?** | Xml file. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="postInsertImage"></a>
## **postInsertImage**
> postInsertImage(name: String, pageNumber: Int, llx: Double, lly: Double, urx: Double, ury: Double, imageFilePath: String? = nil, storage: String? = nil, folder: String? = nil, image: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Insert image to document page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**llx** | **Double** | Coordinate lower left X. | 
**lly** | **Double** | Coordinate lower left Y. | 
**urx** | **Double** | Coordinate upper right X. | 
**ury** | **Double** | Coordinate upper right Y. | 
**imageFilePath** | **String?** | Path to image file if specified. Request content is used otherwise. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**image** | **Data?** | Image file. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="postListBoxFields"></a>
## **postListBoxFields**
> postListBoxFields(name: String, fields: [ListBoxField], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document listbox fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**[ListBoxField]**](ListBoxField.md) | The array of field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postMovePage"></a>
## **postMovePage**
> postMovePage(name: String, pageNumber: Int, newIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Move page to new position.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**newIndex** | **Int** | The new page position/index. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postOptimizeDocument"></a>
## **postOptimizeDocument**
> postOptimizeDocument(name: String, options: OptimizeOptions, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Optimize document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**options** | [**OptimizeOptions**](OptimizeOptions.md) | The optimization options. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageCaretAnnotations"></a>
## **postPageCaretAnnotations**
> postPageCaretAnnotations(name: String, pageNumber: Int, annotations: [CaretAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page caret annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[CaretAnnotation]**](CaretAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageCertify"></a>
## **postPageCertify**
> postPageCertify(name: String, pageNumber: Int, sign: Signature, docMdpAccessPermissionType: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Certify document page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**sign** | [**Signature**](Signature.md) | Signature object containing signature data. | 
**docMdpAccessPermissionType** | **String** | The access permissions granted for this document. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageCircleAnnotations"></a>
## **postPageCircleAnnotations**
> postPageCircleAnnotations(name: String, pageNumber: Int, annotations: [CircleAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page circle annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[CircleAnnotation]**](CircleAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageFileAttachmentAnnotations"></a>
## **postPageFileAttachmentAnnotations**
> postPageFileAttachmentAnnotations(name: String, pageNumber: Int, annotations: [FileAttachmentAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page FileAttachment annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[FileAttachmentAnnotation]**](FileAttachmentAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageFreeTextAnnotations"></a>
## **postPageFreeTextAnnotations**
> postPageFreeTextAnnotations(name: String, pageNumber: Int, annotations: [FreeTextAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page free text annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[FreeTextAnnotation]**](FreeTextAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageHighlightAnnotations"></a>
## **postPageHighlightAnnotations**
> postPageHighlightAnnotations(name: String, pageNumber: Int, annotations: [HighlightAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page highlight annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[HighlightAnnotation]**](HighlightAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageImageStamps"></a>
## **postPageImageStamps**
> postPageImageStamps(name: String, pageNumber: Int, stamps: [ImageStamp], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page image stamps.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**stamps** | [**[ImageStamp]**](ImageStamp.md) | The array of stamp. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageInkAnnotations"></a>
## **postPageInkAnnotations**
> postPageInkAnnotations(name: String, pageNumber: Int, annotations: [InkAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page ink annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[InkAnnotation]**](InkAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageLineAnnotations"></a>
## **postPageLineAnnotations**
> postPageLineAnnotations(name: String, pageNumber: Int, annotations: [LineAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page line annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[LineAnnotation]**](LineAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageLinkAnnotations"></a>
## **postPageLinkAnnotations**
> postPageLinkAnnotations(name: String, pageNumber: Int, links: [LinkAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page link annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**links** | [**[LinkAnnotation]**](LinkAnnotation.md) | Array of link annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageMovieAnnotations"></a>
## **postPageMovieAnnotations**
> postPageMovieAnnotations(name: String, pageNumber: Int, annotations: [MovieAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page movie annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[MovieAnnotation]**](MovieAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPagePdfPageStamps"></a>
## **postPagePdfPageStamps**
> postPagePdfPageStamps(name: String, pageNumber: Int, stamps: [PdfPageStamp], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document pdf page stamps.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**stamps** | [**[PdfPageStamp]**](PdfPageStamp.md) | The array of stamp. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPagePolygonAnnotations"></a>
## **postPagePolygonAnnotations**
> postPagePolygonAnnotations(name: String, pageNumber: Int, annotations: [PolygonAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page polygon annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[PolygonAnnotation]**](PolygonAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPagePolyLineAnnotations"></a>
## **postPagePolyLineAnnotations**
> postPagePolyLineAnnotations(name: String, pageNumber: Int, annotations: [PolyLineAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page polyline annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[PolyLineAnnotation]**](PolyLineAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageRedactionAnnotations"></a>
## **postPageRedactionAnnotations**
> postPageRedactionAnnotations(name: String, pageNumber: Int, annotations: [RedactionAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page redaction annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[RedactionAnnotation]**](RedactionAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageScreenAnnotations"></a>
## **postPageScreenAnnotations**
> postPageScreenAnnotations(name: String, pageNumber: Int, annotations: [ScreenAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page screen annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[ScreenAnnotation]**](ScreenAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageSoundAnnotations"></a>
## **postPageSoundAnnotations**
> postPageSoundAnnotations(name: String, pageNumber: Int, annotations: [SoundAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page sound annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[SoundAnnotation]**](SoundAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageSquareAnnotations"></a>
## **postPageSquareAnnotations**
> postPageSquareAnnotations(name: String, pageNumber: Int, annotations: [SquareAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page square annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[SquareAnnotation]**](SquareAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageSquigglyAnnotations"></a>
## **postPageSquigglyAnnotations**
> postPageSquigglyAnnotations(name: String, pageNumber: Int, annotations: [SquigglyAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page squiggly annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[SquigglyAnnotation]**](SquigglyAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageStampAnnotations"></a>
## **postPageStampAnnotations**
> postPageStampAnnotations(name: String, pageNumber: Int, annotations: [StampAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page stamp annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[StampAnnotation]**](StampAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageStrikeOutAnnotations"></a>
## **postPageStrikeOutAnnotations**
> postPageStrikeOutAnnotations(name: String, pageNumber: Int, annotations: [StrikeOutAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page StrikeOut annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[StrikeOutAnnotation]**](StrikeOutAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageTables"></a>
## **postPageTables**
> postPageTables(name: String, pageNumber: Int, tables: [Table], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page tables.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**tables** | [**[Table]**](Table.md) | The array of table. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageTextAnnotations"></a>
## **postPageTextAnnotations**
> postPageTextAnnotations(name: String, pageNumber: Int, annotations: [TextAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page text annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[TextAnnotation]**](TextAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageTextReplace"></a>
## **postPageTextReplace**
> postPageTextReplace(name: String, pageNumber: Int, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextReplaceResponse?, _ error: Error?) -> Void))

Page's replace text method.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**pageNumber** | **Int** |  | 
**textReplaceListRequest** | [**TextReplaceListRequest**](TextReplaceListRequest.md) |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**TextReplaceResponse**](TextReplaceResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageTextStamps"></a>
## **postPageTextStamps**
> postPageTextStamps(name: String, pageNumber: Int, stamps: [TextStamp], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page text stamps.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**stamps** | [**[TextStamp]**](TextStamp.md) | The array of stamp. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPageUnderlineAnnotations"></a>
## **postPageUnderlineAnnotations**
> postPageUnderlineAnnotations(name: String, pageNumber: Int, annotations: [UnderlineAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document page underline annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**annotations** | [**[UnderlineAnnotation]**](UnderlineAnnotation.md) | The array of annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPopupAnnotation"></a>
## **postPopupAnnotation**
> postPopupAnnotation(name: String, annotationId: String, annotation: PopupAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document popup annotations.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The parent annotation ID. | 
**annotation** | [**PopupAnnotation**](PopupAnnotation.md) | The annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postRadioButtonFields"></a>
## **postRadioButtonFields**
> postRadioButtonFields(name: String, fields: [RadioButtonField], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document RadioButton fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**[RadioButtonField]**](RadioButtonField.md) | The array of field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSignatureField"></a>
## **postSignatureField**
> postSignatureField(name: String, field: SignatureField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document signature field.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**field** | [**SignatureField**](SignatureField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSignDocument"></a>
## **postSignDocument**
> postSignDocument(name: String, sign: Signature, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Sign document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**sign** | [**Signature**](Signature.md) | Signature object containing signature data. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSignPage"></a>
## **postSignPage**
> postSignPage(name: String, pageNumber: Int, sign: Signature, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Sign page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**sign** | [**Signature**](Signature.md) | Signature object containing signature data. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSplitDocument"></a>
## **postSplitDocument**
> postSplitDocument(name: String, format: String? = nil, from: Int? = nil, to: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SplitResultResponse?, _ error: Error?) -> Void))

Split document to parts.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | Document name. | 
**format** | **String?** | Resulting documents format. | [optional]
**from** | **Int?** | Start page if defined. | [optional]
**to** | **Int?** | End page if defined. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SplitResultResponse**](SplitResultResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postTextBoxFields"></a>
## **postTextBoxFields**
> postTextBoxFields(name: String, fields: [TextBoxField], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add document text box fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**[TextBoxField]**](TextBoxField.md) | The array of field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putAddNewPage"></a>
## **putAddNewPage**
> putAddNewPage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPagesResponse?, _ error: Error?) -> Void))

Add new page to end of the document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**DocumentPagesResponse**](DocumentPagesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putAddText"></a>
## **putAddText**
> putAddText(name: String, pageNumber: Int, paragraph: Paragraph, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add text to PDF document page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | Number of page (starting from 1). | 
**paragraph** | [**Paragraph**](Paragraph.md) | Paragraph data. | 
**folder** | **String?** | Document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putAnnotationsFlatten"></a>
## **putAnnotationsFlatten**
> putAnnotationsFlatten(name: String, startPage: Int? = nil, endPage: Int? = nil, annotationTypes: []? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Flattens the annotations of the specified types

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**startPage** | **Int?** | The start page number. | [optional]
**endPage** | **Int?** | The end page number. | [optional]
**annotationTypes** | **[]?** | Array of annotation types. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putBookmark"></a>
## **putBookmark**
> putBookmark(name: String, bookmarkPath: String, bookmark: Bookmark, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarkResponse?, _ error: Error?) -> Void))

Update document bookmark.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**bookmarkPath** | **String** | The bookmark path. | 
**bookmark** | [**Bookmark**](Bookmark.md) | The bookmark. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**BookmarkResponse**](BookmarkResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putCaretAnnotation"></a>
## **putCaretAnnotation**
> putCaretAnnotation(name: String, annotationId: String, annotation: CaretAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationResponse?, _ error: Error?) -> Void))

Replace document caret annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**CaretAnnotation**](CaretAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CaretAnnotationResponse**](CaretAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putChangePasswordDocument"></a>
## **putChangePasswordDocument**
> putChangePasswordDocument(outPath: String, ownerPassword: String, newUserPassword: String, newOwnerPassword: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Change document password from content.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**ownerPassword** | **String** | Owner password (encrypted Base64). | 
**newUserPassword** | **String** | New user password (encrypted Base64). | 
**newOwnerPassword** | **String** | New owner password (encrypted Base64). | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be changed password. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putCheckBoxField"></a>
## **putCheckBoxField**
> putCheckBoxField(name: String, fieldName: String, field: CheckBoxField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CheckBoxFieldResponse?, _ error: Error?) -> Void))

Replace document checkbox field

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**field** | [**CheckBoxField**](CheckBoxField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CheckBoxFieldResponse**](CheckBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putCircleAnnotation"></a>
## **putCircleAnnotation**
> putCircleAnnotation(name: String, annotationId: String, annotation: CircleAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationResponse?, _ error: Error?) -> Void))

Replace document circle annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**CircleAnnotation**](CircleAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**CircleAnnotationResponse**](CircleAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putComboBoxField"></a>
## **putComboBoxField**
> putComboBoxField(name: String, fieldName: String, field: ComboBoxField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ComboBoxFieldResponse?, _ error: Error?) -> Void))

Replace document combobox field

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**field** | [**ComboBoxField**](ComboBoxField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ComboBoxFieldResponse**](ComboBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putCreateDocument"></a>
## **putCreateDocument**
> putCreateDocument(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?, _ error: Error?) -> Void))

Create empty document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The new document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The new document folder. | [optional]

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putDecryptDocument"></a>
## **putDecryptDocument**
> putDecryptDocument(outPath: String, password: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Decrypt document from content.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**password** | **String** | The password (encrypted Base64). | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be decrypted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putDocumentDisplayProperties"></a>
## **putDocumentDisplayProperties**
> putDocumentDisplayProperties(name: String, displayProperties: DisplayProperties, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DisplayPropertiesResponse?, _ error: Error?) -> Void))

Update document display properties.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**displayProperties** | [**DisplayProperties**](DisplayProperties.md) | The display properties. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**DisplayPropertiesResponse**](DisplayPropertiesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putEncryptDocument"></a>
## **putEncryptDocument**
> putEncryptDocument(outPath: String, userPassword: String, ownerPassword: String, cryptoAlgorithm: String, permissionsFlags: []? = nil, usePdf20: Bool? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Encrypt document from content.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**userPassword** | **String** | User password (encrypted Base64). | 
**ownerPassword** | **String** | Owner password (encrypted Base64). | 
**cryptoAlgorithm** | **String** | Cryptographic algorithm, see CryptoAlgorithm for details. | 
**permissionsFlags** | **[]?** | Array of document permissions, see PermissionsFlags for details. | [optional]
**usePdf20** | **Bool?** | Support for revision 6 (Extension 8). | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be encrypted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putEpubInStorageToPdf"></a>
## **putEpubInStorageToPdf**
> putEpubInStorageToPdf(name: String, srcPath: String, storage: String? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.epub) | 
**storage** | **String?** | The document storage. | [optional]
**dstFolder** | **String?** | The destination document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putExportFieldsFromPdfToFdfInStorage"></a>
## **putExportFieldsFromPdfToFdfInStorage**
> putExportFieldsFromPdfToFdfInStorage(name: String, fdfOutputFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Export fields from from PDF in storage to FDF file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fdfOutputFilePath** | **String** | The output Fdf file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putExportFieldsFromPdfToXfdfInStorage"></a>
## **putExportFieldsFromPdfToXfdfInStorage**
> putExportFieldsFromPdfToXfdfInStorage(name: String, xfdfOutputFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Export fields from from PDF in storage to XFDF file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**xfdfOutputFilePath** | **String** | The output xfdf file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putExportFieldsFromPdfToXmlInStorage"></a>
## **putExportFieldsFromPdfToXmlInStorage**
> putExportFieldsFromPdfToXmlInStorage(name: String, xmlOutputFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Export fields from from PDF in storage to XML file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**xmlOutputFilePath** | **String** | The output xml file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putFieldsFlatten"></a>
## **putFieldsFlatten**
> putFieldsFlatten(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Flatten form fields in document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putFileAttachmentAnnotation"></a>
## **putFileAttachmentAnnotation**
> putFileAttachmentAnnotation(name: String, annotationId: String, annotation: FileAttachmentAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationResponse?, _ error: Error?) -> Void))

Replace document FileAttachment annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**FileAttachmentAnnotation**](FileAttachmentAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FileAttachmentAnnotationResponse**](FileAttachmentAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putFileAttachmentAnnotationDataExtract"></a>
## **putFileAttachmentAnnotationDataExtract**
> putFileAttachmentAnnotationDataExtract(name: String, annotationId: String, outFolder: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document FileAttachment annotation content to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**outFolder** | **String?** | The output folder. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putFreeTextAnnotation"></a>
## **putFreeTextAnnotation**
> putFreeTextAnnotation(name: String, annotationId: String, annotation: FreeTextAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationResponse?, _ error: Error?) -> Void))

Replace document free text annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**FreeTextAnnotation**](FreeTextAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FreeTextAnnotationResponse**](FreeTextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putHighlightAnnotation"></a>
## **putHighlightAnnotation**
> putHighlightAnnotation(name: String, annotationId: String, annotation: HighlightAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationResponse?, _ error: Error?) -> Void))

Replace document highlight annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**HighlightAnnotation**](HighlightAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**HighlightAnnotationResponse**](HighlightAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putHtmlInStorageToPdf"></a>
## **putHtmlInStorageToPdf**
> putHtmlInStorageToPdf(name: String, srcPath: String, htmlFileName: String? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.zip) | 
**htmlFileName** | **String?** | Name of HTML file in ZIP. | [optional]
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImageExtractAsGif"></a>
## **putImageExtractAsGif**
> putImageExtractAsGif(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document image in GIF format to folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImageExtractAsJpeg"></a>
## **putImageExtractAsJpeg**
> putImageExtractAsJpeg(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document image in JPEG format to folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImageExtractAsPng"></a>
## **putImageExtractAsPng**
> putImageExtractAsPng(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document image in PNG format to folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImageExtractAsTiff"></a>
## **putImageExtractAsTiff**
> putImageExtractAsTiff(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document image in TIFF format to folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | Image ID. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImageInStorageToPdf"></a>
## **putImageInStorageToPdf**
> putImageInStorageToPdf(name: String, imageTemplates: ImageTemplatesRequest, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert image file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageTemplates** | [**ImageTemplatesRequest**](ImageTemplatesRequest.md) | ImageTemplatesRequestImage templates | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImagesExtractAsGif"></a>
## **putImagesExtractAsGif**
> putImagesExtractAsGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document images in GIF format to folder.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImagesExtractAsJpeg"></a>
## **putImagesExtractAsJpeg**
> putImagesExtractAsJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document images in JPEG format to folder.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImagesExtractAsPng"></a>
## **putImagesExtractAsPng**
> putImagesExtractAsPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document images in PNG format to folder.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImagesExtractAsTiff"></a>
## **putImagesExtractAsTiff**
> putImagesExtractAsTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document images in TIFF format to folder.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**destFolder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImportFieldsFromFdfInStorage"></a>
## **putImportFieldsFromFdfInStorage**
> putImportFieldsFromFdfInStorage(name: String, fdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update fields from FDF file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fdfFilePath** | **String** | The Fdf file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImportFieldsFromXfdfInStorage"></a>
## **putImportFieldsFromXfdfInStorage**
> putImportFieldsFromXfdfInStorage(name: String, xfdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update fields from XFDF file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**xfdfFilePath** | **String** | The XFDF file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putImportFieldsFromXmlInStorage"></a>
## **putImportFieldsFromXmlInStorage**
> putImportFieldsFromXmlInStorage(name: String, xmlFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update fields from XML file in storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**xmlFilePath** | **String** | Full source filename (ex. /folder1/folder2/template.xml) | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putInkAnnotation"></a>
## **putInkAnnotation**
> putInkAnnotation(name: String, annotationId: String, annotation: InkAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationResponse?, _ error: Error?) -> Void))

Replace document ink annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**InkAnnotation**](InkAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**InkAnnotationResponse**](InkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putLaTeXInStorageToPdf"></a>
## **putLaTeXInStorageToPdf**
> putLaTeXInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert TeX file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.tex) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putLineAnnotation"></a>
## **putLineAnnotation**
> putLineAnnotation(name: String, annotationId: String, annotation: LineAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationResponse?, _ error: Error?) -> Void))

Replace document line annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**LineAnnotation**](LineAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LineAnnotationResponse**](LineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putLinkAnnotation"></a>
## **putLinkAnnotation**
> putLinkAnnotation(name: String, linkId: String, link: LinkAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?, _ error: Error?) -> Void))

Replace document page link annotations

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**linkId** | **String** | The link ID. | 
**link** | [**LinkAnnotation**](LinkAnnotation.md) | Link annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putListBoxField"></a>
## **putListBoxField**
> putListBoxField(name: String, fieldName: String, field: ListBoxField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ListBoxFieldResponse?, _ error: Error?) -> Void))

Replace document listbox field

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**field** | [**ListBoxField**](ListBoxField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ListBoxFieldResponse**](ListBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putMarkdownInStorageToPdf"></a>
## **putMarkdownInStorageToPdf**
> putMarkdownInStorageToPdf(name: String, srcPath: String, storage: String? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert MD file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.md) | 
**storage** | **String?** | The document storage. | [optional]
**dstFolder** | **String?** | The destination document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putMergeDocuments"></a>
## **putMergeDocuments**
> putMergeDocuments(name: String, mergeDocuments: MergeDocuments, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?, _ error: Error?) -> Void))

Merge a list of documents.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | Resulting document name. | 
**mergeDocuments** | [**MergeDocuments**](MergeDocuments.md) | MergeDocuments with a list of documents. | 
**storage** | **String?** | Resulting document storage. | [optional]
**folder** | **String?** | Resulting document folder. | [optional]

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putMhtInStorageToPdf"></a>
## **putMhtInStorageToPdf**
> putMhtInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.mht) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putMovieAnnotation"></a>
## **putMovieAnnotation**
> putMovieAnnotation(name: String, annotationId: String, annotation: MovieAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationResponse?, _ error: Error?) -> Void))

Replace document movie annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**MovieAnnotation**](MovieAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**MovieAnnotationResponse**](MovieAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageAddStamp"></a>
## **putPageAddStamp**
> putPageAddStamp(name: String, pageNumber: Int, stamp: Stamp, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add page stamp.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**stamp** | [**Stamp**](Stamp.md) | Stamp with data. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageConvertToBmp"></a>
## **putPageConvertToBmp**
> putPageConvertToBmp(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert document page to bmp image and upload resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**outPath** | **String** | The out path of result image. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageConvertToEmf"></a>
## **putPageConvertToEmf**
> putPageConvertToEmf(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert document page to emf image and upload resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**outPath** | **String** | The out path of result image. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageConvertToGif"></a>
## **putPageConvertToGif**
> putPageConvertToGif(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert document page to gif image and upload resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**outPath** | **String** | The out path of result image. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageConvertToJpeg"></a>
## **putPageConvertToJpeg**
> putPageConvertToJpeg(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert document page to Jpeg image and upload resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**outPath** | **String** | The out path of result image. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageConvertToPng"></a>
## **putPageConvertToPng**
> putPageConvertToPng(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert document page to png image and upload resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**outPath** | **String** | The out path of result image. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPageConvertToTiff"></a>
## **putPageConvertToTiff**
> putPageConvertToTiff(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert document page to Tiff image and upload resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**outPath** | **String** | The out path of result image. | 
**width** | **Int?** | The converted image width. | [optional]
**height** | **Int?** | The converted image height. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPclInStorageToPdf"></a>
## **putPclInStorageToPdf**
> putPclInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.pcl) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfAInStorageToPdf"></a>
## **putPdfAInStorageToPdf**
> putPdfAInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, dontOptimize: Bool? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert PDFA file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.pdf) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**dontOptimize** | **Bool?** | If set, document resources will not be optimized. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInRequestToDoc"></a>
## **putPdfInRequestToDoc**
> putPdfInRequestToDoc(outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to DOC format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**addReturnToLineEnd** | **Bool?** | Add return to line end. | [optional]
**format** | **String?** | Allows to specify .doc or .docx file format. | [optional]
**imageResolutionX** | **Int?** | Image resolution X. | [optional]
**imageResolutionY** | **Int?** | Image resolution Y. | [optional]
**maxDistanceBetweenTextLines** | **Double?** | Max distance between text lines. | [optional]
**mode** | **String?** | Allows to control how a PDF document is converted into a word processing document. | [optional]
**recognizeBullets** | **Bool?** | Recognize bullets. | [optional]
**relativeHorizontalProximity** | **Double?** | Relative horizontal proximity. | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToEpub"></a>
## **putPdfInRequestToEpub**
> putPdfInRequestToEpub(outPath: String, contentRecognitionMode: String? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.epub) | 
**contentRecognitionMode** | **String?** | Property tunes conversion for this or that desirable method of recognition of content. | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToHtml"></a>
## **putPdfInRequestToHtml**
> putPdfInRequestToHtml(outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, storage: String? = nil, flowLayoutParagraphFullWidth: Bool? = nil, outputFormat: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to Html format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.html) | 
**additionalMarginWidthInPoints** | **Int?** | Defines width of margin that will be forcibly left around that output HTML-areas. | [optional]
**compressSvgGraphicsIfAny** | **Bool?** | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional]
**convertMarkedContentToLayers** | **Bool?** | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with "data-pdflayer" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional]
**defaultFontName** | **String?** | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional]
**documentType** | **String?** | Result document type. | [optional]
**fixedLayout** | **Bool?** | The value indicating whether that HTML is created as fixed layout. | [optional]
**imageResolution** | **Int?** | Resolution for image rendering. | [optional]
**minimalLineWidth** | **Int?** | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional]
**preventGlyphsGrouping** | **Bool?** | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional]
**splitCssIntoPages** | **Bool?** | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional]
**splitIntoPages** | **Bool?** | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional]
**useZOrder** | **Bool?** | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional]
**antialiasingProcessing** | **String?** | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional]
**cssClassNamesPrefix** | **String?** | When PDFtoHTML converter generates result CSSs, CSS class names (something like ".stl_01 {}" ... ".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional]
**explicitListOfSavedPages** | **[Int]?** | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional]
**fontEncodingStrategy** | **String?** | Defines encoding special rule to tune PDF decoding for current document. | [optional]
**fontSavingMode** | **String?** | Defines font saving mode that will be used during saving of PDF to desirable format. | [optional]
**htmlMarkupGenerationMode** | **String?** | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional]
**lettersPositioningMethod** | **String?** | The mode of positioning of letters in words in result HTML. | [optional]
**pagesFlowTypeDependsOnViewersScreenSize** | **Bool?** | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional]
**partsEmbeddingMode** | **String?** | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional]
**rasterImagesSavingMode** | **String?** | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional]
**removeEmptyAreasOnTopAndBottom** | **Bool?** | Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional]
**saveShadowedTextsAsTransparentTexts** | **Bool?** | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional]
**saveTransparentTexts** | **Bool?** | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional]
**specialFolderForAllImages** | **String?** | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**specialFolderForSvgImages** | **String?** | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**trySaveTextUnderliningAndStrikeoutingInCss** | **Bool?** | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically. | [optional]
**storage** | **String?** | The document storage. | [optional]
**flowLayoutParagraphFullWidth** | **Bool?** | This attribute specifies full width paragraph text for Flow mode, FixedLayout = false. | [optional]
**outputFormat** | **String?** | This parameter determines the type of result. The zip archive will be uploaded into the storage if the parameter is "Zip" or missed (default). In case of the "Folder", all resulting files and directories will be uploaded to the folder of the resulting HTML file. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToLaTeX"></a>
## **putPdfInRequestToLaTeX**
> putPdfInRequestToLaTeX(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to TeX format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tex) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToMobiXml"></a>
## **putPdfInRequestToMobiXml**
> putPdfInRequestToMobiXml(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.mobixml) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToPdfA"></a>
## **putPdfInRequestToPdfA**
> putPdfInRequestToPdfA(outPath: String, type: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pdf) | 
**type** | **String** | Type of PdfA format. | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToPptx"></a>
## **putPdfInRequestToPptx**
> putPdfInRequestToPptx(outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pptx) | 
**separateImages** | **Bool?** | Separate images. | [optional]
**slidesAsImages** | **Bool?** | Slides as images. | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToSvg"></a>
## **putPdfInRequestToSvg**
> putPdfInRequestToSvg(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to SVG format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.svg) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToTeX"></a>
## **putPdfInRequestToTeX**
> putPdfInRequestToTeX(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to TeX format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tex) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToTiff"></a>
## **putPdfInRequestToTiff**
> putPdfInRequestToTiff(outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tiff) | 
**brightness** | **Double?** | Image brightness. | [optional]
**compression** | **String?** | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional]
**colorDepth** | **String?** | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional]
**leftMargin** | **Int?** | Left image margin. | [optional]
**rightMargin** | **Int?** | Right image margin. | [optional]
**topMargin** | **Int?** | Top image margin. | [optional]
**bottomMargin** | **Int?** | Bottom image margin. | [optional]
**orientation** | **String?** | Image orientation. Possible values are: None, Landscape, Portait. | [optional]
**skipBlankPages** | **Bool?** | Skip blank pages flag. | [optional]
**width** | **Int?** | Image width. | [optional]
**height** | **Int?** | Image height. | [optional]
**xResolution** | **Int?** | Horizontal resolution. | [optional]
**yResolution** | **Int?** | Vertical resolution. | [optional]
**pageIndex** | **Int?** | Start page to export. | [optional]
**pageCount** | **Int?** | Number of pages to export. | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToXls"></a>
## **putPdfInRequestToXls**
> putPdfInRequestToXls(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to XLS format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xls) | 
**insertBlankColumnAtFirst** | **Bool?** | Insert blank column at first | [optional]
**minimizeTheNumberOfWorksheets** | **Bool?** | Minimize the number of worksheets | [optional]
**scaleFactor** | **Double?** | Scale factor | [optional]
**uniformWorksheets** | **Bool?** | Uniform worksheets | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToXlsx"></a>
## **putPdfInRequestToXlsx**
> putPdfInRequestToXlsx(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xlsx) | 
**insertBlankColumnAtFirst** | **Bool?** | Insert blank column at first | [optional]
**minimizeTheNumberOfWorksheets** | **Bool?** | Minimize the number of worksheets | [optional]
**scaleFactor** | **Double?** | Scale factor | [optional]
**uniformWorksheets** | **Bool?** | Uniform worksheets | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToXml"></a>
## **putPdfInRequestToXml**
> putPdfInRequestToXml(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to XML format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xml) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToXps"></a>
## **putPdfInRequestToXps**
> putPdfInRequestToXps(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to XPS format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xps) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInStorageToDoc"></a>
## **putPdfInStorageToDoc**
> putPdfInStorageToDoc(name: String, outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to DOC format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**addReturnToLineEnd** | **Bool?** | Add return to line end. | [optional]
**format** | **String?** | Allows to specify .doc or .docx file format. | [optional]
**imageResolutionX** | **Int?** | Image resolution X. | [optional]
**imageResolutionY** | **Int?** | Image resolution Y. | [optional]
**maxDistanceBetweenTextLines** | **Double?** | Max distance between text lines. | [optional]
**mode** | **String?** | Allows to control how a PDF document is converted into a word processing document. | [optional]
**recognizeBullets** | **Bool?** | Recognize bullets. | [optional]
**relativeHorizontalProximity** | **Double?** | Relative horizontal proximity. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToEpub"></a>
## **putPdfInStorageToEpub**
> putPdfInStorageToEpub(name: String, outPath: String, contentRecognitionMode: String? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.epub) | 
**contentRecognitionMode** | **String?** | Property tunes conversion for this or that desirable method of recognition of content. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToHtml"></a>
## **putPdfInStorageToHtml**
> putPdfInStorageToHtml(name: String, outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil, flowLayoutParagraphFullWidth: Bool? = nil, outputFormat: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to Html format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.html) | 
**additionalMarginWidthInPoints** | **Int?** | Defines width of margin that will be forcibly left around that output HTML-areas. | [optional]
**compressSvgGraphicsIfAny** | **Bool?** | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional]
**convertMarkedContentToLayers** | **Bool?** | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with "data-pdflayer" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional]
**defaultFontName** | **String?** | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional]
**documentType** | **String?** | Result document type. | [optional]
**fixedLayout** | **Bool?** | The value indicating whether that HTML is created as fixed layout. | [optional]
**imageResolution** | **Int?** | Resolution for image rendering. | [optional]
**minimalLineWidth** | **Int?** | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional]
**preventGlyphsGrouping** | **Bool?** | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional]
**splitCssIntoPages** | **Bool?** | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional]
**splitIntoPages** | **Bool?** | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional]
**useZOrder** | **Bool?** | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional]
**antialiasingProcessing** | **String?** | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional]
**cssClassNamesPrefix** | **String?** | When PDFtoHTML converter generates result CSSs, CSS class names (something like ".stl_01 {}" ... ".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional]
**explicitListOfSavedPages** | **[Int]?** | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional]
**fontEncodingStrategy** | **String?** | Defines encoding special rule to tune PDF decoding for current document. | [optional]
**fontSavingMode** | **String?** | Defines font saving mode that will be used during saving of PDF to desirable format. | [optional]
**htmlMarkupGenerationMode** | **String?** | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional]
**lettersPositioningMethod** | **String?** | The mode of positioning of letters in words in result HTML. | [optional]
**pagesFlowTypeDependsOnViewersScreenSize** | **Bool?** | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional]
**partsEmbeddingMode** | **String?** | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional]
**rasterImagesSavingMode** | **String?** | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional]
**removeEmptyAreasOnTopAndBottom** | **Bool?** | Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional]
**saveShadowedTextsAsTransparentTexts** | **Bool?** | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional]
**saveTransparentTexts** | **Bool?** | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional]
**specialFolderForAllImages** | **String?** | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**specialFolderForSvgImages** | **String?** | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**trySaveTextUnderliningAndStrikeoutingInCss** | **Bool?** | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]
**flowLayoutParagraphFullWidth** | **Bool?** | This attribute specifies full width paragraph text for Flow mode, FixedLayout = false. | [optional]
**outputFormat** | **String?** | This parameter determines the type of result. The zip archive will be uploaded into the storage if the parameter is "Zip" or missed (default). In case of the "Folder", all resulting files and directories will be uploaded to the folder of the resulting HTML file. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToLaTeX"></a>
## **putPdfInStorageToLaTeX**
> putPdfInStorageToLaTeX(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TeX format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tex) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToMobiXml"></a>
## **putPdfInStorageToMobiXml**
> putPdfInStorageToMobiXml(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.mobixml) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToPdfA"></a>
## **putPdfInStorageToPdfA**
> putPdfInStorageToPdfA(name: String, outPath: String, type: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pdf) | 
**type** | **String** | Type of PdfA format. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToPptx"></a>
## **putPdfInStorageToPptx**
> putPdfInStorageToPptx(name: String, outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pptx) | 
**separateImages** | **Bool?** | Separate images. | [optional]
**slidesAsImages** | **Bool?** | Slides as images. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToSvg"></a>
## **putPdfInStorageToSvg**
> putPdfInStorageToSvg(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to SVG format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.svg) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToTeX"></a>
## **putPdfInStorageToTeX**
> putPdfInStorageToTeX(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TeX format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tex) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToTiff"></a>
## **putPdfInStorageToTiff**
> putPdfInStorageToTiff(name: String, outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tiff) | 
**brightness** | **Double?** | Image brightness. | [optional]
**compression** | **String?** | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional]
**colorDepth** | **String?** | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional]
**leftMargin** | **Int?** | Left image margin. | [optional]
**rightMargin** | **Int?** | Right image margin. | [optional]
**topMargin** | **Int?** | Top image margin. | [optional]
**bottomMargin** | **Int?** | Bottom image margin. | [optional]
**orientation** | **String?** | Image orientation. Possible values are: None, Landscape, Portait. | [optional]
**skipBlankPages** | **Bool?** | Skip blank pages flag. | [optional]
**width** | **Int?** | Image width. | [optional]
**height** | **Int?** | Image height. | [optional]
**xResolution** | **Int?** | Horizontal resolution. | [optional]
**yResolution** | **Int?** | Vertical resolution. | [optional]
**pageIndex** | **Int?** | Start page to export. | [optional]
**pageCount** | **Int?** | Number of pages to export. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToXls"></a>
## **putPdfInStorageToXls**
> putPdfInStorageToXls(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XLS format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xls) | 
**insertBlankColumnAtFirst** | **Bool?** | Insert blank column at first | [optional]
**minimizeTheNumberOfWorksheets** | **Bool?** | Minimize the number of worksheets | [optional]
**scaleFactor** | **Double?** | Scale factor | [optional]
**uniformWorksheets** | **Bool?** | Uniform worksheets | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToXlsx"></a>
## **putPdfInStorageToXlsx**
> putPdfInStorageToXlsx(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xlsx) | 
**insertBlankColumnAtFirst** | **Bool?** | Insert blank column at first | [optional]
**minimizeTheNumberOfWorksheets** | **Bool?** | Minimize the number of worksheets | [optional]
**scaleFactor** | **Double?** | Scale factor | [optional]
**uniformWorksheets** | **Bool?** | Uniform worksheets | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToXml"></a>
## **putPdfInStorageToXml**
> putPdfInStorageToXml(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XML format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xml) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToXps"></a>
## **putPdfInStorageToXps**
> putPdfInStorageToXps(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XPS format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.xps) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPolygonAnnotation"></a>
## **putPolygonAnnotation**
> putPolygonAnnotation(name: String, annotationId: String, annotation: PolygonAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationResponse?, _ error: Error?) -> Void))

Replace document polygon annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**PolygonAnnotation**](PolygonAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolygonAnnotationResponse**](PolygonAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPolyLineAnnotation"></a>
## **putPolyLineAnnotation**
> putPolyLineAnnotation(name: String, annotationId: String, annotation: PolyLineAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationResponse?, _ error: Error?) -> Void))

Replace document polyline annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**PolyLineAnnotation**](PolyLineAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PolyLineAnnotationResponse**](PolyLineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPopupAnnotation"></a>
## **putPopupAnnotation**
> putPopupAnnotation(name: String, annotationId: String, annotation: PopupAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationResponse?, _ error: Error?) -> Void))

Replace document popup annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**PopupAnnotation**](PopupAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**PopupAnnotationResponse**](PopupAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPrivileges"></a>
## **putPrivileges**
> putPrivileges(name: String, privileges: DocumentPrivilege, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update privilege document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**privileges** | [**DocumentPrivilege**](DocumentPrivilege.md) | Document privileges. DocumentPrivilege | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPsInStorageToPdf"></a>
## **putPsInStorageToPdf**
> putPsInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert PS file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.ps) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putRadioButtonField"></a>
## **putRadioButtonField**
> putRadioButtonField(name: String, fieldName: String, field: RadioButtonField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RadioButtonFieldResponse?, _ error: Error?) -> Void))

Replace document RadioButton field

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**field** | [**RadioButtonField**](RadioButtonField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RadioButtonFieldResponse**](RadioButtonFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putRedactionAnnotation"></a>
## **putRedactionAnnotation**
> putRedactionAnnotation(name: String, annotationId: String, annotation: RedactionAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationResponse?, _ error: Error?) -> Void))

Replace document redaction annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**RedactionAnnotation**](RedactionAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**RedactionAnnotationResponse**](RedactionAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putReplaceImage"></a>
## **putReplaceImage**
> putReplaceImage(name: String, imageId: String, imageFilePath: String? = nil, storage: String? = nil, folder: String? = nil, image: Data? = nil, completion: @escaping ((_ data: ImageResponse?, _ error: Error?) -> Void))

Replace document image.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**imageId** | **String** | The image ID. | 
**imageFilePath** | **String?** | Path to image file if specified. Request content is used otherwise. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**image** | **Data?** | Image file. | [optional]

### Return type

[**ImageResponse**](ImageResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putScreenAnnotation"></a>
## **putScreenAnnotation**
> putScreenAnnotation(name: String, annotationId: String, annotation: ScreenAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationResponse?, _ error: Error?) -> Void))

Replace document screen annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**ScreenAnnotation**](ScreenAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**ScreenAnnotationResponse**](ScreenAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putScreenAnnotationDataExtract"></a>
## **putScreenAnnotationDataExtract**
> putScreenAnnotationDataExtract(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document screen annotation content to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**outFilePath** | **String** | The output file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSearchableDocument"></a>
## **putSearchableDocument**
> putSearchableDocument(name: String, storage: String? = nil, folder: String? = nil, lang: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Create searchable PDF document. Generate OCR layer for images in input PDF document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]
**lang** | **String?** | language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus  | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSetProperty"></a>
## **putSetProperty**
> putSetProperty(name: String, propertyName: String, value: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertyResponse?, _ error: Error?) -> Void))

Add/update document property.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** |  | 
**propertyName** | **String** |  | 
**value** | **String** |  | 
**storage** | **String?** |  | [optional]
**folder** | **String?** |  | [optional]

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSignatureField"></a>
## **putSignatureField**
> putSignatureField(name: String, fieldName: String, field: SignatureField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SignatureFieldResponse?, _ error: Error?) -> Void))

Replace document signature field.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**field** | [**SignatureField**](SignatureField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SignatureFieldResponse**](SignatureFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSoundAnnotation"></a>
## **putSoundAnnotation**
> putSoundAnnotation(name: String, annotationId: String, annotation: SoundAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationResponse?, _ error: Error?) -> Void))

Replace document sound annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**SoundAnnotation**](SoundAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SoundAnnotationResponse**](SoundAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSoundAnnotationDataExtract"></a>
## **putSoundAnnotationDataExtract**
> putSoundAnnotationDataExtract(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document sound annotation content to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**outFilePath** | **String** | The output file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSquareAnnotation"></a>
## **putSquareAnnotation**
> putSquareAnnotation(name: String, annotationId: String, annotation: SquareAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationResponse?, _ error: Error?) -> Void))

Replace document square annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**SquareAnnotation**](SquareAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquareAnnotationResponse**](SquareAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSquigglyAnnotation"></a>
## **putSquigglyAnnotation**
> putSquigglyAnnotation(name: String, annotationId: String, annotation: SquigglyAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationResponse?, _ error: Error?) -> Void))

Replace document squiggly annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**SquigglyAnnotation**](SquigglyAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**SquigglyAnnotationResponse**](SquigglyAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putStampAnnotation"></a>
## **putStampAnnotation**
> putStampAnnotation(name: String, annotationId: String, annotation: StampAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationResponse?, _ error: Error?) -> Void))

Replace document stamp annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**StampAnnotation**](StampAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StampAnnotationResponse**](StampAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putStampAnnotationDataExtract"></a>
## **putStampAnnotationDataExtract**
> putStampAnnotationDataExtract(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Extract document stamp annotation content to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**outFilePath** | **String** | The output file path. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putStrikeOutAnnotation"></a>
## **putStrikeOutAnnotation**
> putStrikeOutAnnotation(name: String, annotationId: String, annotation: StrikeOutAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationResponse?, _ error: Error?) -> Void))

Replace document StrikeOut annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**StrikeOutAnnotation**](StrikeOutAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**StrikeOutAnnotationResponse**](StrikeOutAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putSvgInStorageToPdf"></a>
## **putSvgInStorageToPdf**
> putSvgInStorageToPdf(name: String, srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.svg) | 
**adjustPageSize** | **Bool?** | Adjust page size | [optional]
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putTable"></a>
## **putTable**
> putTable(name: String, tableId: String, table: Table, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Replace document page table.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**tableId** | **String** | The table ID. | 
**table** | [**Table**](Table.md) | The table. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putTeXInStorageToPdf"></a>
## **putTeXInStorageToPdf**
> putTeXInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert TeX file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.tex) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putTextAnnotation"></a>
## **putTextAnnotation**
> putTextAnnotation(name: String, annotationId: String, annotation: TextAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationResponse?, _ error: Error?) -> Void))

Replace document text annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**TextAnnotation**](TextAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextAnnotationResponse**](TextAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putTextBoxField"></a>
## **putTextBoxField**
> putTextBoxField(name: String, fieldName: String, field: TextBoxField, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextBoxFieldResponse?, _ error: Error?) -> Void))

Replace document text box field

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The field name. | 
**field** | [**TextBoxField**](TextBoxField.md) | The field. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**TextBoxFieldResponse**](TextBoxFieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putUnderlineAnnotation"></a>
## **putUnderlineAnnotation**
> putUnderlineAnnotation(name: String, annotationId: String, annotation: UnderlineAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationResponse?, _ error: Error?) -> Void))

Replace document underline annotation

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**annotationId** | **String** | The annotation ID. | 
**annotation** | [**UnderlineAnnotation**](UnderlineAnnotation.md) | Annotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**UnderlineAnnotationResponse**](UnderlineAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putUpdateField"></a>
## **putUpdateField**
> putUpdateField(name: String, fieldName: String, field: Field, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldResponse?, _ error: Error?) -> Void))

Update field.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The name of a field to be updated. | 
**field** | [**Field**](Field.md) | Field with the field data. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FieldResponse**](FieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putUpdateFields"></a>
## **putUpdateFields**
> putUpdateFields(name: String, fields: Fields, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldsResponse?, _ error: Error?) -> Void))

Update fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**Fields**](Fields.md) | Fields with the fields data. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FieldsResponse**](FieldsResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putWebInStorageToPdf"></a>
## **putWebInStorageToPdf**
> putWebInStorageToPdf(name: String, url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert web page to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**url** | **String** | Source url | 
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putXfaPdfInRequestToAcroForm"></a>
## **putXfaPdfInRequestToAcroForm**
> putXfaPdfInRequestToAcroForm(outPath: String, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document which contains XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pdf) | 
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putXfaPdfInStorageToAcroForm"></a>
## **putXfaPdfInStorageToAcroForm**
> putXfaPdfInStorageToAcroForm(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pdf) | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putXmlInStorageToPdf"></a>
## **putXmlInStorageToPdf**
> putXmlInStorageToPdf(name: String, srcPath: String, xslFilePath: String? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert XML file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xml) | 
**xslFilePath** | **String?** | Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional]
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putXpsInStorageToPdf"></a>
## **putXpsInStorageToPdf**
> putXpsInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xps) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putXslFoInStorageToPdf"></a>
## **putXslFoInStorageToPdf**
> putXslFoInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xpsfo) | 
**dstFolder** | **String?** | The destination document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="storageExists"></a>
## **storageExists**
> storageExists(storageName: String, completion: @escaping ((_ data: StorageExist?, _ error: Error?) -> Void))

Check if storage exists

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**storageName** | **String** | Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="uploadFile"></a>
## **uploadFile**
> uploadFile(path: String, File: Data, storageName: String? = nil, completion: @escaping ((_ data: FilesUploadResult?, _ error: Error?) -> Void))

Upload file

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext If the content is multipart and path does not contains the file name it tries to get them from filename parameter from Content-Disposition header.  | 
**File** | **Data** | File to upload | 
**storageName** | **String?** | Storage name | [optional]

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


