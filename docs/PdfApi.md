# PdfApi

All URIs are relative to *https://api.aspose.cloud/v2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
*PdfApi* | [**deleteAnnotation**](PdfApi.md#deleteAnnotation) | **DELETE** /pdf/\{name}/annotations/\{annotationId} | Delete document annotation by ID
*PdfApi* | [**deleteDocumentAnnotations**](PdfApi.md#deleteDocumentAnnotations) | **DELETE** /pdf/\{name}/annotations | Delete all annotations from the document
*PdfApi* | [**deleteDocumentLinkAnnotations**](PdfApi.md#deleteDocumentLinkAnnotations) | **DELETE** /pdf/\{name}/links | Delete all link annotations from the document
*PdfApi* | [**deleteField**](PdfApi.md#deleteField) | **DELETE** /pdf/\{name}/fields/\{fieldName} | Delete document field by name.
*PdfApi* | [**deleteImage**](PdfApi.md#deleteImage) | **DELETE** /pdf/\{name}/images/\{imageId} | Delete image from document page.
*PdfApi* | [**deleteLinkAnnotation**](PdfApi.md#deleteLinkAnnotation) | **DELETE** /pdf/\{name}/links/\{linkId} | Delete document page link annotation by ID
*PdfApi* | [**deletePage**](PdfApi.md#deletePage) | **DELETE** /pdf/\{name}/pages/\{pageNumber} | Delete document page by its number.
*PdfApi* | [**deletePageAnnotations**](PdfApi.md#deletePageAnnotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/annotations | Delete all annotations from the page
*PdfApi* | [**deletePageLinkAnnotations**](PdfApi.md#deletePageLinkAnnotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/links | Delete all link annotations from the page
*PdfApi* | [**deleteProperties**](PdfApi.md#deleteProperties) | **DELETE** /pdf/\{name}/documentproperties | Delete custom document properties.
*PdfApi* | [**deleteProperty**](PdfApi.md#deleteProperty) | **DELETE** /pdf/\{name}/documentproperties/\{propertyName} | Delete document property.
*PdfApi* | [**getCircleAnnotation**](PdfApi.md#getCircleAnnotation) | **GET** /pdf/\{name}/annotations/circle/\{annotationId} | Read document page circle annotation by ID.
*PdfApi* | [**getDocument**](PdfApi.md#getDocument) | **GET** /pdf/\{name} | Read common document info.
*PdfApi* | [**getDocumentAnnotations**](PdfApi.md#getDocumentAnnotations) | **GET** /pdf/\{name}/annotations | Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*PdfApi* | [**getDocumentAttachmentByIndex**](PdfApi.md#getDocumentAttachmentByIndex) | **GET** /pdf/\{name}/attachments/\{attachmentIndex} | Read document attachment info by its index.
*PdfApi* | [**getDocumentAttachments**](PdfApi.md#getDocumentAttachments) | **GET** /pdf/\{name}/attachments | Read document attachments info.
*PdfApi* | [**getDocumentBookmarks**](PdfApi.md#getDocumentBookmarks) | **GET** /pdf/\{name}/bookmarks | Read document bookmark/bookmarks (including children).
*PdfApi* | [**getDocumentCircleAnnotations**](PdfApi.md#getDocumentCircleAnnotations) | **GET** /pdf/\{name}/annotations/circle | Read document circle annotations.
*PdfApi* | [**getDocumentFreeTextAnnotations**](PdfApi.md#getDocumentFreeTextAnnotations) | **GET** /pdf/\{name}/annotations/freetext | Read document free text annotations.
*PdfApi* | [**getDocumentLineAnnotations**](PdfApi.md#getDocumentLineAnnotations) | **GET** /pdf/\{name}/annotations/line | Read document line annotations.
*PdfApi* | [**getDocumentPolygonAnnotations**](PdfApi.md#getDocumentPolygonAnnotations) | **GET** /pdf/\{name}/annotations/polygon | Read document polygon annotations.
*PdfApi* | [**getDocumentPolyLineAnnotations**](PdfApi.md#getDocumentPolyLineAnnotations) | **GET** /pdf/\{name}/annotations/polyline | Read document polyline annotations.
*PdfApi* | [**getDocumentProperties**](PdfApi.md#getDocumentProperties) | **GET** /pdf/\{name}/documentproperties | Read document properties.
*PdfApi* | [**getDocumentProperty**](PdfApi.md#getDocumentProperty) | **GET** /pdf/\{name}/documentproperties/\{propertyName} | Read document property by name.
*PdfApi* | [**getDocumentSquareAnnotations**](PdfApi.md#getDocumentSquareAnnotations) | **GET** /pdf/\{name}/annotations/square | Read document square annotations.
*PdfApi* | [**getDocumentTextAnnotations**](PdfApi.md#getDocumentTextAnnotations) | **GET** /pdf/\{name}/annotations/text | Read document text annotations.
*PdfApi* | [**getDownload**](PdfApi.md#getDownload) | **GET** /storage/file | Download a specific file 
*PdfApi* | [**getDownloadDocumentAttachmentByIndex**](PdfApi.md#getDownloadDocumentAttachmentByIndex) | **GET** /pdf/\{name}/attachments/\{attachmentIndex}/download | Download document attachment content by its index.
*PdfApi* | [**getEpubInStorageToPdf**](PdfApi.md#getEpubInStorageToPdf) | **GET** /pdf/create/epub | Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getField**](PdfApi.md#getField) | **GET** /pdf/\{name}/fields/\{fieldName} | Get document field by name.
*PdfApi* | [**getFields**](PdfApi.md#getFields) | **GET** /pdf/\{name}/fields | Get document fields.
*PdfApi* | [**getFreeTextAnnotation**](PdfApi.md#getFreeTextAnnotation) | **GET** /pdf/\{name}/annotations/freetext/\{annotationId} | Read document page free text annotation by ID.
*PdfApi* | [**getHtmlInStorageToPdf**](PdfApi.md#getHtmlInStorageToPdf) | **GET** /pdf/create/html | Convert HTML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getImage**](PdfApi.md#getImage) | **GET** /pdf/\{name}/images/\{imageId} | Read document image by ID.
*PdfApi* | [**getImageExtractAsGif**](PdfApi.md#getImageExtractAsGif) | **GET** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format
*PdfApi* | [**getImageExtractAsJpeg**](PdfApi.md#getImageExtractAsJpeg) | **GET** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format
*PdfApi* | [**getImageExtractAsPng**](PdfApi.md#getImageExtractAsPng) | **GET** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format
*PdfApi* | [**getImageExtractAsTiff**](PdfApi.md#getImageExtractAsTiff) | **GET** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format
*PdfApi* | [**getImages**](PdfApi.md#getImages) | **GET** /pdf/\{name}/pages/\{pageNumber}/images | Read document images.
*PdfApi* | [**getLaTeXInStorageToPdf**](PdfApi.md#getLaTeXInStorageToPdf) | **GET** /pdf/create/latex | Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getLineAnnotation**](PdfApi.md#getLineAnnotation) | **GET** /pdf/\{name}/annotations/line/\{annotationId} | Read document page line annotation by ID.
*PdfApi* | [**getLinkAnnotation**](PdfApi.md#getLinkAnnotation) | **GET** /pdf/\{name}/links/\{linkId} | Read document link annotation by ID.
*PdfApi* | [**getListFiles**](PdfApi.md#getListFiles) | **GET** /storage/folder | Get the file listing of a specific folder 
*PdfApi* | [**getMhtInStorageToPdf**](PdfApi.md#getMhtInStorageToPdf) | **GET** /pdf/create/mht | Convert MHT file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getPage**](PdfApi.md#getPage) | **GET** /pdf/\{name}/pages/\{pageNumber} | Read document page info.
*PdfApi* | [**getPageAnnotations**](PdfApi.md#getPageAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations | Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*PdfApi* | [**getPageCircleAnnotations**](PdfApi.md#getPageCircleAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Read document page circle annotations.
*PdfApi* | [**getPageConvertToBmp**](PdfApi.md#getPageConvertToBmp) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to Bmp image and return resulting file in response.
*PdfApi* | [**getPageConvertToEmf**](PdfApi.md#getPageConvertToEmf) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to Emf image and return resulting file in response.
*PdfApi* | [**getPageConvertToGif**](PdfApi.md#getPageConvertToGif) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to Gif image and return resulting file in response.
*PdfApi* | [**getPageConvertToJpeg**](PdfApi.md#getPageConvertToJpeg) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and return resulting file in response.
*PdfApi* | [**getPageConvertToPng**](PdfApi.md#getPageConvertToPng) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to Png image and return resulting file in response.
*PdfApi* | [**getPageConvertToTiff**](PdfApi.md#getPageConvertToTiff) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and return resulting file in response.
*PdfApi* | [**getPageFreeTextAnnotations**](PdfApi.md#getPageFreeTextAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Read document page free text annotations.
*PdfApi* | [**getPageLineAnnotations**](PdfApi.md#getPageLineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Read document page line annotations.
*PdfApi* | [**getPageLinkAnnotation**](PdfApi.md#getPageLinkAnnotation) | **GET** /pdf/\{name}/pages/\{pageNumber}/links/\{linkId} | Read document page link annotation by ID.
*PdfApi* | [**getPageLinkAnnotations**](PdfApi.md#getPageLinkAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/links | Read document page link annotations.
*PdfApi* | [**getPagePolygonAnnotations**](PdfApi.md#getPagePolygonAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Read document page polygon annotations.
*PdfApi* | [**getPagePolyLineAnnotations**](PdfApi.md#getPagePolyLineAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Read document page polyline annotations.
*PdfApi* | [**getPages**](PdfApi.md#getPages) | **GET** /pdf/\{name}/pages | Read document pages info.
*PdfApi* | [**getPageSquareAnnotations**](PdfApi.md#getPageSquareAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Read document page square annotations.
*PdfApi* | [**getPageText**](PdfApi.md#getPageText) | **GET** /pdf/\{name}/pages/\{pageNumber}/text | Read page text items.
*PdfApi* | [**getPageTextAnnotations**](PdfApi.md#getPageTextAnnotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Read document page text annotations.
*PdfApi* | [**getPclInStorageToPdf**](PdfApi.md#getPclInStorageToPdf) | **GET** /pdf/create/pcl | Convert PCL file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getPdfInStorageToDoc**](PdfApi.md#getPdfInStorageToDoc) | **GET** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToEpub**](PdfApi.md#getPdfInStorageToEpub) | **GET** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToHtml**](PdfApi.md#getPdfInStorageToHtml) | **GET** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToLaTeX**](PdfApi.md#getPdfInStorageToLaTeX) | **GET** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToMobiXml**](PdfApi.md#getPdfInStorageToMobiXml) | **GET** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToPdfA**](PdfApi.md#getPdfInStorageToPdfA) | **GET** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToPptx**](PdfApi.md#getPdfInStorageToPptx) | **GET** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToSvg**](PdfApi.md#getPdfInStorageToSvg) | **GET** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToTiff**](PdfApi.md#getPdfInStorageToTiff) | **GET** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXls**](PdfApi.md#getPdfInStorageToXls) | **GET** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXml**](PdfApi.md#getPdfInStorageToXml) | **GET** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and returns resulting file in response content
*PdfApi* | [**getPdfInStorageToXps**](PdfApi.md#getPdfInStorageToXps) | **GET** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and returns resulting file in response content
*PdfApi* | [**getPolygonAnnotation**](PdfApi.md#getPolygonAnnotation) | **GET** /pdf/\{name}/annotations/polygon/\{annotationId} | Read document page polygon annotation by ID.
*PdfApi* | [**getPolyLineAnnotation**](PdfApi.md#getPolyLineAnnotation) | **GET** /pdf/\{name}/annotations/polyline/\{annotationId} | Read document page polyline annotation by ID.
*PdfApi* | [**getPsInStorageToPdf**](PdfApi.md#getPsInStorageToPdf) | **GET** /pdf/create/ps | Convert PS file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getSquareAnnotation**](PdfApi.md#getSquareAnnotation) | **GET** /pdf/\{name}/annotations/square/\{annotationId} | Read document page square annotation by ID.
*PdfApi* | [**getSvgInStorageToPdf**](PdfApi.md#getSvgInStorageToPdf) | **GET** /pdf/create/svg | Convert SVG file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getText**](PdfApi.md#getText) | **GET** /pdf/\{name}/text | Read document text.
*PdfApi* | [**getTextAnnotation**](PdfApi.md#getTextAnnotation) | **GET** /pdf/\{name}/annotations/text/\{annotationId} | Read document page text annotation by ID.
*PdfApi* | [**getVerifySignature**](PdfApi.md#getVerifySignature) | **GET** /pdf/\{name}/verifySignature | Verify signature document.
*PdfApi* | [**getWebInStorageToPdf**](PdfApi.md#getWebInStorageToPdf) | **GET** /pdf/create/web | Convert web page to PDF format and return resulting file in response. 
*PdfApi* | [**getWordsPerPage**](PdfApi.md#getWordsPerPage) | **GET** /pdf/\{name}/pages/wordCount | Get number of words per document page.
*PdfApi* | [**getXfaPdfInStorageToAcroForm**](PdfApi.md#getXfaPdfInStorageToAcroForm) | **GET** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
*PdfApi* | [**getXmlInStorageToPdf**](PdfApi.md#getXmlInStorageToPdf) | **GET** /pdf/create/xml | Convert XML file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getXpsInStorageToPdf**](PdfApi.md#getXpsInStorageToPdf) | **GET** /pdf/create/xps | Convert XPS file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**getXslFoInStorageToPdf**](PdfApi.md#getXslFoInStorageToPdf) | **GET** /pdf/create/xslfo | Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
*PdfApi* | [**postAppendDocument**](PdfApi.md#postAppendDocument) | **POST** /pdf/\{name}/appendDocument | Append document to existing one.
*PdfApi* | [**postCreateField**](PdfApi.md#postCreateField) | **POST** /pdf/\{name}/fields | Create field.
*PdfApi* | [**postDocumentTextReplace**](PdfApi.md#postDocumentTextReplace) | **POST** /pdf/\{name}/text/replace | Document's replace text method.
*PdfApi* | [**postInsertImage**](PdfApi.md#postInsertImage) | **POST** /pdf/\{name}/pages/\{pageNumber}/images | Insert image to document page.
*PdfApi* | [**postMovePage**](PdfApi.md#postMovePage) | **POST** /pdf/\{name}/pages/\{pageNumber}/movePage | Move page to new position.
*PdfApi* | [**postOptimizeDocument**](PdfApi.md#postOptimizeDocument) | **POST** /pdf/\{name}/optimize | Optimize document.
*PdfApi* | [**postPageCircleAnnotations**](PdfApi.md#postPageCircleAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Add document page circle annotations.
*PdfApi* | [**postPageFreeTextAnnotations**](PdfApi.md#postPageFreeTextAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Add document page free text annotations.
*PdfApi* | [**postPageLineAnnotations**](PdfApi.md#postPageLineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Add document page line annotations.
*PdfApi* | [**postPageLinkAnnotations**](PdfApi.md#postPageLinkAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/links | Add document page link annotations.
*PdfApi* | [**postPagePolygonAnnotations**](PdfApi.md#postPagePolygonAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Add document page polygon annotations.
*PdfApi* | [**postPagePolyLineAnnotations**](PdfApi.md#postPagePolyLineAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Add document page polyline annotations.
*PdfApi* | [**postPageSquareAnnotations**](PdfApi.md#postPageSquareAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Add document page square annotations.
*PdfApi* | [**postPageTextAnnotations**](PdfApi.md#postPageTextAnnotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Add document page text annotations.
*PdfApi* | [**postPageTextReplace**](PdfApi.md#postPageTextReplace) | **POST** /pdf/\{name}/pages/\{pageNumber}/text/replace | Page's replace text method.
*PdfApi* | [**postSignDocument**](PdfApi.md#postSignDocument) | **POST** /pdf/\{name}/sign | Sign document.
*PdfApi* | [**postSignPage**](PdfApi.md#postSignPage) | **POST** /pdf/\{name}/pages/\{pageNumber}/sign | Sign page.
*PdfApi* | [**postSplitDocument**](PdfApi.md#postSplitDocument) | **POST** /pdf/\{name}/split | Split document to parts.
*PdfApi* | [**putAddNewPage**](PdfApi.md#putAddNewPage) | **PUT** /pdf/\{name}/pages | Add new page to end of the document.
*PdfApi* | [**putAddText**](PdfApi.md#putAddText) | **PUT** /pdf/\{name}/pages/\{pageNumber}/text | Add text to PDF document page.
*PdfApi* | [**putCircleAnnotation**](PdfApi.md#putCircleAnnotation) | **PUT** /pdf/\{name}/annotations/circle/\{annotationId} | Replace document circle annotation
*PdfApi* | [**putCreate**](PdfApi.md#putCreate) | **PUT** /storage/file | Upload a specific file 
*PdfApi* | [**putCreateDocument**](PdfApi.md#putCreateDocument) | **PUT** /pdf/\{name} | Create empty document.
*PdfApi* | [**putEpubInStorageToPdf**](PdfApi.md#putEpubInStorageToPdf) | **PUT** /pdf/\{name}/create/epub | Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putFieldsFlatten**](PdfApi.md#putFieldsFlatten) | **PUT** /pdf/\{name}/fields/flatten | Flatten form fields in document.
*PdfApi* | [**putFreeTextAnnotation**](PdfApi.md#putFreeTextAnnotation) | **PUT** /pdf/\{name}/annotations/freetext/\{annotationId} | Replace document free text annotation
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
*PdfApi* | [**putLaTeXInStorageToPdf**](PdfApi.md#putLaTeXInStorageToPdf) | **PUT** /pdf/\{name}/create/latex | Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putLineAnnotation**](PdfApi.md#putLineAnnotation) | **PUT** /pdf/\{name}/annotations/line/\{annotationId} | Replace document line annotation
*PdfApi* | [**putLinkAnnotation**](PdfApi.md#putLinkAnnotation) | **PUT** /pdf/\{name}/links/\{linkId} | Replace document page link annotations
*PdfApi* | [**putMergeDocuments**](PdfApi.md#putMergeDocuments) | **PUT** /pdf/\{name}/merge | Merge a list of documents.
*PdfApi* | [**putMhtInStorageToPdf**](PdfApi.md#putMhtInStorageToPdf) | **PUT** /pdf/\{name}/create/mht | Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putPageAddStamp**](PdfApi.md#putPageAddStamp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/stamp | Add page stamp.
*PdfApi* | [**putPageConvertToBmp**](PdfApi.md#putPageConvertToBmp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to bmp image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToEmf**](PdfApi.md#putPageConvertToEmf) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to emf image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToGif**](PdfApi.md#putPageConvertToGif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to gif image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToJpeg**](PdfApi.md#putPageConvertToJpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToPng**](PdfApi.md#putPageConvertToPng) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to png image and upload resulting file to storage.
*PdfApi* | [**putPageConvertToTiff**](PdfApi.md#putPageConvertToTiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and upload resulting file to storage.
*PdfApi* | [**putPclInStorageToPdf**](PdfApi.md#putPclInStorageToPdf) | **PUT** /pdf/\{name}/create/pcl | Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putPdfInRequestToDoc**](PdfApi.md#putPdfInRequestToDoc) | **PUT** /pdf/convert/doc | Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToEpub**](PdfApi.md#putPdfInRequestToEpub) | **PUT** /pdf/convert/epub | Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToHtml**](PdfApi.md#putPdfInRequestToHtml) | **PUT** /pdf/convert/html | Converts PDF document (in request content) to Html format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToLaTeX**](PdfApi.md#putPdfInRequestToLaTeX) | **PUT** /pdf/convert/latex | Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToMobiXml**](PdfApi.md#putPdfInRequestToMobiXml) | **PUT** /pdf/convert/mobixml | Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToPdfA**](PdfApi.md#putPdfInRequestToPdfA) | **PUT** /pdf/convert/pdfa | Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToPptx**](PdfApi.md#putPdfInRequestToPptx) | **PUT** /pdf/convert/pptx | Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToSvg**](PdfApi.md#putPdfInRequestToSvg) | **PUT** /pdf/convert/svg | Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToTiff**](PdfApi.md#putPdfInRequestToTiff) | **PUT** /pdf/convert/tiff | Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXls**](PdfApi.md#putPdfInRequestToXls) | **PUT** /pdf/convert/xls | Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXml**](PdfApi.md#putPdfInRequestToXml) | **PUT** /pdf/convert/xml | Converts PDF document (in request content) to XML format and uploads resulting file to storage.
*PdfApi* | [**putPdfInRequestToXps**](PdfApi.md#putPdfInRequestToXps) | **PUT** /pdf/convert/xps | Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
*PdfApi* | [**putPdfInStorageToDoc**](PdfApi.md#putPdfInStorageToDoc) | **PUT** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToEpub**](PdfApi.md#putPdfInStorageToEpub) | **PUT** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToHtml**](PdfApi.md#putPdfInStorageToHtml) | **PUT** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToLaTeX**](PdfApi.md#putPdfInStorageToLaTeX) | **PUT** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToMobiXml**](PdfApi.md#putPdfInStorageToMobiXml) | **PUT** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToPdfA**](PdfApi.md#putPdfInStorageToPdfA) | **PUT** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToPptx**](PdfApi.md#putPdfInStorageToPptx) | **PUT** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToSvg**](PdfApi.md#putPdfInStorageToSvg) | **PUT** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToTiff**](PdfApi.md#putPdfInStorageToTiff) | **PUT** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXls**](PdfApi.md#putPdfInStorageToXls) | **PUT** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXml**](PdfApi.md#putPdfInStorageToXml) | **PUT** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and uploads resulting file to storage
*PdfApi* | [**putPdfInStorageToXps**](PdfApi.md#putPdfInStorageToXps) | **PUT** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
*PdfApi* | [**putPolygonAnnotation**](PdfApi.md#putPolygonAnnotation) | **PUT** /pdf/\{name}/annotations/polygon/\{annotationId} | Replace document polygon annotation
*PdfApi* | [**putPolyLineAnnotation**](PdfApi.md#putPolyLineAnnotation) | **PUT** /pdf/\{name}/annotations/polyline/\{annotationId} | Replace document polyline annotation
*PdfApi* | [**putPrivileges**](PdfApi.md#putPrivileges) | **PUT** /pdf/\{name}/privileges | Update privilege document.
*PdfApi* | [**putPsInStorageToPdf**](PdfApi.md#putPsInStorageToPdf) | **PUT** /pdf/\{name}/create/ps | Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putReplaceImage**](PdfApi.md#putReplaceImage) | **PUT** /pdf/\{name}/images/\{imageId} | Replace document image.
*PdfApi* | [**putSearchableDocument**](PdfApi.md#putSearchableDocument) | **PUT** /pdf/\{name}/ocr | Create searchable PDF document. Generate OCR layer for images in input PDF document.
*PdfApi* | [**putSetProperty**](PdfApi.md#putSetProperty) | **PUT** /pdf/\{name}/documentproperties/\{propertyName} | Add/update document property.
*PdfApi* | [**putSquareAnnotation**](PdfApi.md#putSquareAnnotation) | **PUT** /pdf/\{name}/annotations/square/\{annotationId} | Replace document square annotation
*PdfApi* | [**putSvgInStorageToPdf**](PdfApi.md#putSvgInStorageToPdf) | **PUT** /pdf/\{name}/create/svg | Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putTextAnnotation**](PdfApi.md#putTextAnnotation) | **PUT** /pdf/\{name}/annotations/text/\{annotationId} | Replace document text annotation
*PdfApi* | [**putUpdateField**](PdfApi.md#putUpdateField) | **PUT** /pdf/\{name}/fields/\{fieldName} | Update field.
*PdfApi* | [**putUpdateFields**](PdfApi.md#putUpdateFields) | **PUT** /pdf/\{name}/fields | Update fields.
*PdfApi* | [**putWebInStorageToPdf**](PdfApi.md#putWebInStorageToPdf) | **PUT** /pdf/\{name}/create/web | Convert web page to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXfaPdfInRequestToAcroForm**](PdfApi.md#putXfaPdfInRequestToAcroForm) | **PUT** /pdf/convert/xfatoacroform | Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
*PdfApi* | [**putXfaPdfInStorageToAcroForm**](PdfApi.md#putXfaPdfInStorageToAcroForm) | **PUT** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
*PdfApi* | [**putXmlInStorageToPdf**](PdfApi.md#putXmlInStorageToPdf) | **PUT** /pdf/\{name}/create/xml | Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXpsInStorageToPdf**](PdfApi.md#putXpsInStorageToPdf) | **PUT** /pdf/\{name}/create/xps | Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
*PdfApi* | [**putXslFoInStorageToPdf**](PdfApi.md#putXslFoInStorageToPdf) | **PUT** /pdf/\{name}/create/xslfo | Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
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
 - **Accept**: multipart/form-data

<a name="getDocumentAnnotations"></a>
## **getDocumentAnnotations**
> getDocumentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationsInfoResponse?, _ error: Error?) -> Void))

Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

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
> getDocumentBookmarks(name: String, bookmarkPath: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Read document bookmark/bookmarks (including children).

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**bookmarkPath** | **String?** | The bookmark path. Leave it empty if you want to get all the bookmarks in the document. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

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

<a name="getDownload"></a>
## **getDownload**
> getDownload(path: String, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Download a specific file 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | Path of the file including the file name and extension e.g. /file.ext | 
**versionId** | **String?** | File's version | [optional]
**storage** | **String?** | User's storage name | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getDownloadDocumentAttachmentByIndex"></a>
## **getDownloadDocumentAttachmentByIndex**
> getDownloadDocumentAttachmentByIndex(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Download document attachment content by its index.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**attachmentIndex** | **Int** | The attachment index. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getEpubInStorageToPdf"></a>
## **getEpubInStorageToPdf**
> getEpubInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert EPUB file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.epub) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

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
**fieldName** | **String** | The field name/ | 
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

<a name="getHtmlInStorageToPdf"></a>
## **getHtmlInStorageToPdf**
> getHtmlInStorageToPdf(srcPath: String, htmlFileName: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert HTML file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.zip) | 
**htmlFileName** | **String** | Name of HTML file in ZIP. | 
**height** | **Double?** | Page height | [optional]
**width** | **Double?** | Page width | [optional]
**isLandscape** | **Bool?** | Is page landscaped | [optional]
**marginLeft** | **Double?** | Page margin left | [optional]
**marginBottom** | **Double?** | Page margin bottom | [optional]
**marginRight** | **Double?** | Page margin right | [optional]
**marginTop** | **Double?** | Page margin top | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

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
> getImageExtractAsGif(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getImageExtractAsJpeg"></a>
## **getImageExtractAsJpeg**
> getImageExtractAsJpeg(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getImageExtractAsPng"></a>
## **getImageExtractAsPng**
> getImageExtractAsPng(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getImageExtractAsTiff"></a>
## **getImageExtractAsTiff**
> getImageExtractAsTiff(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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

<a name="getLaTeXInStorageToPdf"></a>
## **getLaTeXInStorageToPdf**
> getLaTeXInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.tex) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

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

<a name="getListFiles"></a>
## **getListFiles**
> getListFiles(path: String? = nil, storage: String? = nil, completion: @escaping ((_ data: FilesResponse?, _ error: Error?) -> Void))

Get the file listing of a specific folder 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String?** | Start with name of storage e.g. root folder '/'or some folder '/folder1/..' | [optional]
**storage** | **String?** | User's storage name | [optional]

### Return type

[**FilesResponse**](FilesResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getMhtInStorageToPdf"></a>
## **getMhtInStorageToPdf**
> getMhtInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert MHT file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.mht) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

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

Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

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

<a name="getPageConvertToBmp"></a>
## **getPageConvertToBmp**
> getPageConvertToBmp(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageConvertToEmf"></a>
## **getPageConvertToEmf**
> getPageConvertToEmf(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageConvertToGif"></a>
## **getPageConvertToGif**
> getPageConvertToGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageConvertToJpeg"></a>
## **getPageConvertToJpeg**
> getPageConvertToJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageConvertToPng"></a>
## **getPageConvertToPng**
> getPageConvertToPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPageConvertToTiff"></a>
## **getPageConvertToTiff**
> getPageConvertToTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

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

<a name="getPageText"></a>
## **getPageText**
> getPageText(name: String, pageNumber: Int, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: TextRectsResponse?, _ error: Error?) -> Void))

Read page text items.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | Number of page (starting from 1). | 
**format** | **[String]?** | List of formats for search. | [optional]
**regex** | **String?** | Formats are specified as a regular expression. | [optional]
**splitRects** | **Bool?** | Split result fragments (default is true). | [optional]
**folder** | **String?** | The document folder. | [optional]
**LLX** | **Double** |  | 
**LLY** | **Double** |  | 
**URX** | **Double** |  | 
**URY** | **Double** |  | 
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

<a name="getPclInStorageToPdf"></a>
## **getPclInStorageToPdf**
> getPclInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert PCL file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.pcl) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToDoc"></a>
## **getPdfInStorageToDoc**
> getPdfInStorageToDoc(name: String, addReturnToLineEnd: Bool? = nil, format: DocFormat? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: DocRecognitionMode? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to DOC format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**addReturnToLineEnd** | **Bool?** | Add return to line end. | [optional]
**format** | [**DocFormat?**](DocFormat.md) | Allows to specify .doc or .docx file format. | [optional]
**imageResolutionX** | **Int?** | Image resolution X. | [optional]
**imageResolutionY** | **Int?** | Image resolution Y. | [optional]
**maxDistanceBetweenTextLines** | **Double?** | Max distance between text lines. | [optional]
**mode** | [**DocRecognitionMode?**](DocRecognitionMode.md) | Allows to control how a PDF document is converted into a word processing document. | [optional]
**recognizeBullets** | **Bool?** | Recognize bullets. | [optional]
**relativeHorizontalProximity** | **Double?** | Relative horizontal proximity. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToEpub"></a>
## **getPdfInStorageToEpub**
> getPdfInStorageToEpub(name: String, contentRecognitionMode: EpubRecognitionMode? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to EPUB format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**contentRecognitionMode** | [**EpubRecognitionMode?**](EpubRecognitionMode.md) | ?roperty tunes conversion for this or that desirable method of recognition of content. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToHtml"></a>
## **getPdfInStorageToHtml**
> getPdfInStorageToHtml(name: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: HtmlDocumentType? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: AntialiasingProcessingType? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: FontEncodingRules? = nil, fontSavingMode: FontSavingModes? = nil, htmlMarkupGenerationMode: HtmlMarkupGenerationModes? = nil, lettersPositioningMethod: LettersPositioningMethods? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: PartsEmbeddingModes? = nil, rasterImagesSavingMode: RasterImagesSavingModes? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to Html format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**additionalMarginWidthInPoints** | **Int?** | Defines width of margin that will be forcibly left around that output HTML-areas. | [optional]
**compressSvgGraphicsIfAny** | **Bool?** | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional]
**convertMarkedContentToLayers** | **Bool?** | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with "data-pdflayer" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional]
**defaultFontName** | **String?** | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional]
**documentType** | [**HtmlDocumentType?**](HtmlDocumentType.md) | Result document type. | [optional]
**fixedLayout** | **Bool?** | The value indicating whether that HTML is created as fixed layout. | [optional]
**imageResolution** | **Int?** | Resolution for image rendering. | [optional]
**minimalLineWidth** | **Int?** | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional]
**preventGlyphsGrouping** | **Bool?** | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional]
**splitCssIntoPages** | **Bool?** | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional]
**splitIntoPages** | **Bool?** | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional]
**useZOrder** | **Bool?** | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional]
**antialiasingProcessing** | [**AntialiasingProcessingType?**](AntialiasingProcessingType.md) | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional]
**cssClassNamesPrefix** | **String?** | When PDFtoHTML converter generates result CSSs, CSS class names (something like ".stl_01 {}" ... ".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional]
**explicitListOfSavedPages** | **[Int]?** | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional]
**fontEncodingStrategy** | [**FontEncodingRules?**](FontEncodingRules.md) | Defines encoding special rule to tune PDF decoding for current document. | [optional]
**fontSavingMode** | [**FontSavingModes?**](FontSavingModes.md) | Defines font saving mode that will be used during saving of PDF to desirable format. | [optional]
**htmlMarkupGenerationMode** | [**HtmlMarkupGenerationModes?**](HtmlMarkupGenerationModes.md) | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional]
**lettersPositioningMethod** | [**LettersPositioningMethods?**](LettersPositioningMethods.md) | The mode of positioning of letters in words in result HTML. | [optional]
**pagesFlowTypeDependsOnViewersScreenSize** | **Bool?** | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional]
**partsEmbeddingMode** | [**PartsEmbeddingModes?**](PartsEmbeddingModes.md) | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional]
**rasterImagesSavingMode** | [**RasterImagesSavingModes?**](RasterImagesSavingModes.md) | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional]
**removeEmptyAreasOnTopAndBottom** | **Bool?** | Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional]
**saveShadowedTextsAsTransparentTexts** | **Bool?** | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional]
**saveTransparentTexts** | **Bool?** | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional]
**specialFolderForAllImages** | **String?** | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**specialFolderForSvgImages** | **String?** | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**trySaveTextUnderliningAndStrikeoutingInCss** | **Bool?** | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToLaTeX"></a>
## **getPdfInStorageToLaTeX**
> getPdfInStorageToLaTeX(name: String, pagesCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pagesCount** | **Int?** | Pages count. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToMobiXml"></a>
## **getPdfInStorageToMobiXml**
> getPdfInStorageToMobiXml(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToPdfA"></a>
## **getPdfInStorageToPdfA**
> getPdfInStorageToPdfA(name: String, type: PdfAType, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to PdfA format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**type** | [**PdfAType**](PdfAType.md) | Type of PdfA format. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToPptx"></a>
## **getPdfInStorageToPptx**
> getPdfInStorageToPptx(name: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToSvg"></a>
## **getPdfInStorageToSvg**
> getPdfInStorageToSvg(name: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to SVG format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**compressOutputToZipArchive** | **Bool?** | Specifies whether output will be created as one zip-archive. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToTiff"></a>
## **getPdfInStorageToTiff**
> getPdfInStorageToTiff(name: String, brightness: Double? = nil, compression: CompressionType? = nil, colorDepth: ColorDepth? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: ShapeType? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TIFF format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**brightness** | **Double?** | Image brightness. | [optional]
**compression** | [**CompressionType?**](CompressionType.md) | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional]
**colorDepth** | [**ColorDepth?**](ColorDepth.md) | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional]
**leftMargin** | **Int?** | Left image margin. | [optional]
**rightMargin** | **Int?** | Right image margin. | [optional]
**topMargin** | **Int?** | Top image margin. | [optional]
**bottomMargin** | **Int?** | Bottom image margin. | [optional]
**orientation** | [**ShapeType?**](ShapeType.md) | Image orientation. Possible values are: None, Landscape, Portait. | [optional]
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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXls"></a>
## **getPdfInStorageToXls**
> getPdfInStorageToXls(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXml"></a>
## **getPdfInStorageToXml**
> getPdfInStorageToXml(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XML format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getPdfInStorageToXps"></a>
## **getPdfInStorageToXps**
> getPdfInStorageToXps(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to XPS format and returns resulting file in response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

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

<a name="getPsInStorageToPdf"></a>
## **getPsInStorageToPdf**
> getPsInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert PS file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.ps) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

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

<a name="getSvgInStorageToPdf"></a>
## **getSvgInStorageToPdf**
> getSvgInStorageToPdf(srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

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
**format** | **[String]?** | List of formats for search. | [optional]
**regex** | **String?** | Formats are specified as a regular expression. | [optional]
**splitRects** | **Bool?** | Split result fragments (default is true). | [optional]
**folder** | **String?** | The document folder. | [optional]
**LLX** | **Double** |  | 
**LLY** | **Double** |  | 
**URX** | **Double** |  | 
**URY** | **Double** |  | 
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
> getWebInStorageToPdf(url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

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

**file**

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
> getXfaPdfInStorageToAcroForm(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getXmlInStorageToPdf"></a>
## **getXmlInStorageToPdf**
> getXmlInStorageToPdf(srcPath: String, xslFilePath: String? = nil, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert XML file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xml) | 
**xslFilePath** | **String?** | Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getXpsInStorageToPdf"></a>
## **getXpsInStorageToPdf**
> getXpsInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert XPS file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xps) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="getXslFoInStorageToPdf"></a>
## **getXslFoInStorageToPdf**
> getXslFoInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Convert XslFo file (located on storage) to PDF format and return resulting file in response. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.xslfo) | 
**storage** | **String?** | The document storage. | [optional]

### Return type

**file**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data

<a name="postAppendDocument"></a>
## **postAppendDocument**
> postAppendDocument(name: String, appendDocument: AppendDocument? = nil, appendFile: String? = nil, startPage: Int? = nil, endPage: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?, _ error: Error?) -> Void))

Append document to existing one.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The original document name. | 
**appendDocument** | [**AppendDocument?**](AppendDocument.md) | with the append document data. | [optional]
**appendFile** | **String?** | Append file server path. | [optional]
**startPage** | **Int?** | Appending start page. | [optional]
**endPage** | **Int?** | Appending end page. | [optional]
**storage** | **String?** | The documents storage. | [optional]
**folder** | **String?** | The original document folder. | [optional]

### Return type

[**DocumentResponse**](DocumentResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postCreateField"></a>
## **postCreateField**
> postCreateField(name: String, page: Int, field: Field? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Create field.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**page** | **Int** | Document page number. | 
**field** | [**Field?**](Field.md) | with the field data. | [optional]
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
> postOptimizeDocument(name: String, options: OptimizeOptions? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Optimize document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**options** | [**OptimizeOptions?**](OptimizeOptions.md) | The optimization options. | [optional]
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
**links** | [**[LinkAnnotation]**](LinkAnnotation.md) | Array of link anotation. | 
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

<a name="postSignDocument"></a>
## **postSignDocument**
> postSignDocument(name: String, signature: Signature? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Sign document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**signature** | [**Signature?**](Signature.md) | Signature object containing signature data. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSignPage"></a>
## **postSignPage**
> postSignPage(name: String, pageNumber: Int, signature: Signature? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Sign page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**signature** | [**Signature?**](Signature.md) | Signature object containing signature data. | [optional]
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
> putAddText(name: String, pageNumber: Int, paragraph: Paragraph? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add text to PDF document page.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | Number of page (starting from 1). | 
**paragraph** | [**Paragraph?**](Paragraph.md) | Paragraph data. | [optional]
**folder** | **String?** | Document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

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

<a name="putCreate"></a>
## **putCreate**
> putCreate(path: String, File: Data, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Upload a specific file 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**path** | **String** | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext | 
**versionId** | **String?** | Source file's version | [optional]
**storage** | **String?** | User's storage name | [optional]
**File** | **Data** | File to upload | 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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

<a name="putHtmlInStorageToPdf"></a>
## **putHtmlInStorageToPdf**
> putHtmlInStorageToPdf(name: String, srcPath: String, htmlFileName: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**srcPath** | **String** | Full source filename (ex. /folder1/folder2/template.zip) | 
**htmlFileName** | **String** | Name of HTML file in ZIP. | 
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
**imageTemplates** | [**ImageTemplatesRequest**](ImageTemplatesRequest.md) | Image templates | 
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
**storage** | **String?** |  | [optional]
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

<a name="putLaTeXInStorageToPdf"></a>
## **putLaTeXInStorageToPdf**
> putLaTeXInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 

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
**link** | [**LinkAnnotation**](LinkAnnotation.md) | Link anotation. | 
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putMergeDocuments"></a>
## **putMergeDocuments**
> putMergeDocuments(name: String, mergeDocuments: MergeDocuments? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: file?, _ error: Error?) -> Void))

Merge a list of documents.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | Resulting documen name. | 
**mergeDocuments** | [**MergeDocuments?**](MergeDocuments.md) | with a list of documents. | [optional]
**storage** | **String?** | Resulting document storage. | [optional]
**folder** | **String?** | Resulting document folder. | [optional]

### Return type

**file**

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

<a name="putPageAddStamp"></a>
## **putPageAddStamp**
> putPageAddStamp(name: String, pageNumber: Int, stamp: Stamp, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Add page stamp.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**pageNumber** | **Int** | The page number. | 
**stamp** | [**Stamp**](Stamp.md) | with data. | 
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

<a name="putPdfInRequestToDoc"></a>
## **putPdfInRequestToDoc**
> putPdfInRequestToDoc(outPath: String, addReturnToLineEnd: Bool? = nil, format: DocFormat? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: DocRecognitionMode? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to DOC format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**addReturnToLineEnd** | **Bool?** | Add return to line end. | [optional]
**format** | [**DocFormat?**](DocFormat.md) | Allows to specify .doc or .docx file format. | [optional]
**imageResolutionX** | **Int?** | Image resolution X. | [optional]
**imageResolutionY** | **Int?** | Image resolution Y. | [optional]
**maxDistanceBetweenTextLines** | **Double?** | Max distance between text lines. | [optional]
**mode** | [**DocRecognitionMode?**](DocRecognitionMode.md) | Allows to control how a PDF document is converted into a word processing document. | [optional]
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
> putPdfInRequestToEpub(outPath: String, contentRecognitionMode: EpubRecognitionMode? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.epub) | 
**contentRecognitionMode** | [**EpubRecognitionMode?**](EpubRecognitionMode.md) | ?roperty tunes conversion for this or that desirable method of recognition of content. | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToHtml"></a>
## **putPdfInRequestToHtml**
> putPdfInRequestToHtml(outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: HtmlDocumentType? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: AntialiasingProcessingType? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: FontEncodingRules? = nil, fontSavingMode: FontSavingModes? = nil, htmlMarkupGenerationMode: HtmlMarkupGenerationModes? = nil, lettersPositioningMethod: LettersPositioningMethods? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: PartsEmbeddingModes? = nil, rasterImagesSavingMode: RasterImagesSavingModes? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to Html format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.html) | 
**additionalMarginWidthInPoints** | **Int?** | Defines width of margin that will be forcibly left around that output HTML-areas. | [optional]
**compressSvgGraphicsIfAny** | **Bool?** | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional]
**convertMarkedContentToLayers** | **Bool?** | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with "data-pdflayer" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional]
**defaultFontName** | **String?** | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional]
**documentType** | [**HtmlDocumentType?**](HtmlDocumentType.md) | Result document type. | [optional]
**fixedLayout** | **Bool?** | The value indicating whether that HTML is created as fixed layout. | [optional]
**imageResolution** | **Int?** | Resolution for image rendering. | [optional]
**minimalLineWidth** | **Int?** | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional]
**preventGlyphsGrouping** | **Bool?** | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional]
**splitCssIntoPages** | **Bool?** | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional]
**splitIntoPages** | **Bool?** | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional]
**useZOrder** | **Bool?** | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional]
**antialiasingProcessing** | [**AntialiasingProcessingType?**](AntialiasingProcessingType.md) | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional]
**cssClassNamesPrefix** | **String?** | When PDFtoHTML converter generates result CSSs, CSS class names (something like ".stl_01 {}" ... ".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional]
**explicitListOfSavedPages** | **[Int]?** | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional]
**fontEncodingStrategy** | [**FontEncodingRules?**](FontEncodingRules.md) | Defines encoding special rule to tune PDF decoding for current document. | [optional]
**fontSavingMode** | [**FontSavingModes?**](FontSavingModes.md) | Defines font saving mode that will be used during saving of PDF to desirable format. | [optional]
**htmlMarkupGenerationMode** | [**HtmlMarkupGenerationModes?**](HtmlMarkupGenerationModes.md) | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional]
**lettersPositioningMethod** | [**LettersPositioningMethods?**](LettersPositioningMethods.md) | The mode of positioning of letters in words in result HTML. | [optional]
**pagesFlowTypeDependsOnViewersScreenSize** | **Bool?** | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional]
**partsEmbeddingMode** | [**PartsEmbeddingModes?**](PartsEmbeddingModes.md) | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional]
**rasterImagesSavingMode** | [**RasterImagesSavingModes?**](RasterImagesSavingModes.md) | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional]
**removeEmptyAreasOnTopAndBottom** | **Bool?** | Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional]
**saveShadowedTextsAsTransparentTexts** | **Bool?** | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional]
**saveTransparentTexts** | **Bool?** | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional]
**specialFolderForAllImages** | **String?** | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**specialFolderForSvgImages** | **String?** | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**trySaveTextUnderliningAndStrikeoutingInCss** | **Bool?** | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically. | [optional]
**storage** | **String?** | The document storage. | [optional]
**file** | **Data?** | A file to be converted. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="putPdfInRequestToLaTeX"></a>
## **putPdfInRequestToLaTeX**
> putPdfInRequestToLaTeX(outPath: String, pagesCount: Int? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tex) | 
**pagesCount** | **Int?** | Pages count. | [optional]
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
> putPdfInRequestToPdfA(outPath: String, type: PdfAType, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pdf) | 
**type** | [**PdfAType**](PdfAType.md) | Type of PdfA format. | 
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

<a name="putPdfInRequestToTiff"></a>
## **putPdfInRequestToTiff**
> putPdfInRequestToTiff(outPath: String, brightness: Double? = nil, compression: CompressionType? = nil, colorDepth: ColorDepth? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: ShapeType? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, storage: String? = nil, file: Data? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tiff) | 
**brightness** | **Double?** | Image brightness. | [optional]
**compression** | [**CompressionType?**](CompressionType.md) | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional]
**colorDepth** | [**ColorDepth?**](ColorDepth.md) | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional]
**leftMargin** | **Int?** | Left image margin. | [optional]
**rightMargin** | **Int?** | Right image margin. | [optional]
**topMargin** | **Int?** | Top image margin. | [optional]
**bottomMargin** | **Int?** | Bottom image margin. | [optional]
**orientation** | [**ShapeType?**](ShapeType.md) | Image orientation. Possible values are: None, Landscape, Portait. | [optional]
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
> putPdfInStorageToDoc(name: String, outPath: String, addReturnToLineEnd: Bool? = nil, format: DocFormat? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: DocRecognitionMode? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to DOC format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.doc) | 
**addReturnToLineEnd** | **Bool?** | Add return to line end. | [optional]
**format** | [**DocFormat?**](DocFormat.md) | Allows to specify .doc or .docx file format. | [optional]
**imageResolutionX** | **Int?** | Image resolution X. | [optional]
**imageResolutionY** | **Int?** | Image resolution Y. | [optional]
**maxDistanceBetweenTextLines** | **Double?** | Max distance between text lines. | [optional]
**mode** | [**DocRecognitionMode?**](DocRecognitionMode.md) | Allows to control how a PDF document is converted into a word processing document. | [optional]
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
> putPdfInStorageToEpub(name: String, outPath: String, contentRecognitionMode: EpubRecognitionMode? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.epub) | 
**contentRecognitionMode** | [**EpubRecognitionMode?**](EpubRecognitionMode.md) | ?roperty tunes conversion for this or that desirable method of recognition of content. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToHtml"></a>
## **putPdfInStorageToHtml**
> putPdfInStorageToHtml(name: String, outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: HtmlDocumentType? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: AntialiasingProcessingType? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: FontEncodingRules? = nil, fontSavingMode: FontSavingModes? = nil, htmlMarkupGenerationMode: HtmlMarkupGenerationModes? = nil, lettersPositioningMethod: LettersPositioningMethods? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: PartsEmbeddingModes? = nil, rasterImagesSavingMode: RasterImagesSavingModes? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

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
**documentType** | [**HtmlDocumentType?**](HtmlDocumentType.md) | Result document type. | [optional]
**fixedLayout** | **Bool?** | The value indicating whether that HTML is created as fixed layout. | [optional]
**imageResolution** | **Int?** | Resolution for image rendering. | [optional]
**minimalLineWidth** | **Int?** | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional]
**preventGlyphsGrouping** | **Bool?** | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional]
**splitCssIntoPages** | **Bool?** | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional]
**splitIntoPages** | **Bool?** | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional]
**useZOrder** | **Bool?** | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional]
**antialiasingProcessing** | [**AntialiasingProcessingType?**](AntialiasingProcessingType.md) | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional]
**cssClassNamesPrefix** | **String?** | When PDFtoHTML converter generates result CSSs, CSS class names (something like ".stl_01 {}" ... ".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional]
**explicitListOfSavedPages** | **[Int]?** | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional]
**fontEncodingStrategy** | [**FontEncodingRules?**](FontEncodingRules.md) | Defines encoding special rule to tune PDF decoding for current document. | [optional]
**fontSavingMode** | [**FontSavingModes?**](FontSavingModes.md) | Defines font saving mode that will be used during saving of PDF to desirable format. | [optional]
**htmlMarkupGenerationMode** | [**HtmlMarkupGenerationModes?**](HtmlMarkupGenerationModes.md) | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional]
**lettersPositioningMethod** | [**LettersPositioningMethods?**](LettersPositioningMethods.md) | The mode of positioning of letters in words in result HTML. | [optional]
**pagesFlowTypeDependsOnViewersScreenSize** | **Bool?** | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional]
**partsEmbeddingMode** | [**PartsEmbeddingModes?**](PartsEmbeddingModes.md) | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional]
**rasterImagesSavingMode** | [**RasterImagesSavingModes?**](RasterImagesSavingModes.md) | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional]
**removeEmptyAreasOnTopAndBottom** | **Bool?** | Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional]
**saveShadowedTextsAsTransparentTexts** | **Bool?** | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional]
**saveTransparentTexts** | **Bool?** | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional]
**specialFolderForAllImages** | **String?** | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**specialFolderForSvgImages** | **String?** | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional]
**trySaveTextUnderliningAndStrikeoutingInCss** | **Bool?** | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically. | [optional]
**folder** | **String?** | The document folder. | [optional]
**storage** | **String?** | The document storage. | [optional]

### Return type

[**AsposeResponse**](AsposeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPdfInStorageToLaTeX"></a>
## **putPdfInStorageToLaTeX**
> putPdfInStorageToLaTeX(name: String, outPath: String, pagesCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tex) | 
**pagesCount** | **Int?** | Pages count. | [optional]
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
> putPdfInStorageToPdfA(name: String, outPath: String, type: PdfAType, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.pdf) | 
**type** | [**PdfAType**](PdfAType.md) | Type of PdfA format. | 
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

<a name="putPdfInStorageToTiff"></a>
## **putPdfInStorageToTiff**
> putPdfInStorageToTiff(name: String, outPath: String, brightness: Double? = nil, compression: CompressionType? = nil, colorDepth: ColorDepth? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: ShapeType? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**outPath** | **String** | Full resulting filename (ex. /folder1/folder2/result.tiff) | 
**brightness** | **Double?** | Image brightness. | [optional]
**compression** | [**CompressionType?**](CompressionType.md) | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional]
**colorDepth** | [**ColorDepth?**](ColorDepth.md) | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional]
**leftMargin** | **Int?** | Left image margin. | [optional]
**rightMargin** | **Int?** | Right image margin. | [optional]
**topMargin** | **Int?** | Top image margin. | [optional]
**bottomMargin** | **Int?** | Bottom image margin. | [optional]
**orientation** | [**ShapeType?**](ShapeType.md) | Image orientation. Possible values are: None, Landscape, Portait. | [optional]
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

<a name="putPrivileges"></a>
## **putPrivileges**
> putPrivileges(name: String, privileges: DocumentPrivilege? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?, _ error: Error?) -> Void))

Update privilege document.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**privileges** | [**DocumentPrivilege?**](DocumentPrivilege.md) | Document privileges.  | [optional]
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

<a name="putUpdateField"></a>
## **putUpdateField**
> putUpdateField(name: String, fieldName: String, field: Field? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldResponse?, _ error: Error?) -> Void))

Update field.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fieldName** | **String** | The name of a field to be updated. | 
**field** | [**Field?**](Field.md) | with the field data. | [optional]
**storage** | **String?** | The document storage. | [optional]
**folder** | **String?** | The document folder. | [optional]

### Return type

[**FieldResponse**](FieldResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putUpdateFields"></a>
## **putUpdateFields**
> putUpdateFields(name: String, fields: Fields? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldsResponse?, _ error: Error?) -> Void))

Update fields.

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | **String** | The document name. | 
**fields** | [**Fields?**](Fields.md) | with the fields data. | [optional]
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

Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.

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

Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage

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


