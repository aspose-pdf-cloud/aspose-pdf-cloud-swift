/**
 *
 *   Copyright (c) 2018 Aspose.Pdf for Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */



import Foundation
import Alamofire



open class PdfAPI {
    /**
     Delete document field by name.
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name/ 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteFieldWithRequestBuilder(name: name, fieldName: fieldName, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document field by name.
     - DELETE /pdf/{name}/fields/{fieldName}
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name/ 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func deleteFieldWithRequestBuilder(name: String, fieldName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/fields/{fieldName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fieldName}", with: "\(fieldName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document page by its number.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePage(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePageWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document page by its number.
     - DELETE /pdf/{name}/pages/{pageNumber}
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func deletePageWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete custom document properties.
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProperties(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePropertiesWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete custom document properties.
     - DELETE /pdf/{name}/documentproperties
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func deletePropertiesWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/documentproperties"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document property.
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProperty(name: String, propertyName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePropertyWithRequestBuilder(name: name, propertyName: propertyName, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document property.
     - DELETE /pdf/{name}/documentproperties/{propertyName}
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func deletePropertyWithRequestBuilder(name: String, propertyName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/documentproperties/{propertyName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{propertyName}", with: "\(propertyName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read common document info or convert to some format if the format specified.
     
     - parameter name: (path) The document name. 
     - parameter format: (query) The format to convert. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter outPath: (query) Path to save result (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocument(name: String, format: String? = nil, storage: String? = nil, folder: String? = nil, outPath: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentWithRequestBuilder(name: name, format: format, storage: storage, folder: folder, outPath: outPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read common document info or convert to some format if the format specified.
     - GET /pdf/{name}
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter format: (query) The format to convert. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter outPath: (query) Path to save result (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getDocumentWithRequestBuilder(name: String, format: String? = nil, storage: String? = nil, folder: String? = nil, outPath: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "storage": storage, 
            "folder": folder, 
            "outPath": outPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document attachment info by its index.
     
     - parameter name: (path) The document name. 
     - parameter attachmentIndex: (path) The attachment index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentAttachmentByIndex(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AttachmentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentAttachmentByIndexWithRequestBuilder(name: name, attachmentIndex: attachmentIndex, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document attachment info by its index.
     - GET /pdf/{name}/attachments/{attachmentIndex}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter attachmentIndex: (path) The attachment index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AttachmentResponse> 
     */
    open class func getDocumentAttachmentByIndexWithRequestBuilder(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AttachmentResponse> {
        var pathUrl = "/pdf/{name}/attachments/{attachmentIndex}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{attachmentIndex}", with: "\(attachmentIndex)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AttachmentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document attachments info.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentAttachments(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AttachmentsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentAttachmentsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document attachments info.
     - GET /pdf/{name}/attachments
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AttachmentsResponse> 
     */
    open class func getDocumentAttachmentsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AttachmentsResponse> {
        var pathUrl = "/pdf/{name}/attachments"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AttachmentsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document bookmark/bookmarks (including children).
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (query) The bookmark path. Leave it empty if you want to get all the bookmarks in the document. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentBookmarks(name: String, bookmarkPath: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentBookmarksWithRequestBuilder(name: name, bookmarkPath: bookmarkPath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document bookmark/bookmarks (including children).
     - GET /pdf/{name}/bookmarks
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (query) The bookmark path. Leave it empty if you want to get all the bookmarks in the document. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getDocumentBookmarksWithRequestBuilder(name: String, bookmarkPath: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/bookmarks"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "bookmarkPath": bookmarkPath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document properties.
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentProperties(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertiesResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentPropertiesWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document properties.
     - GET /pdf/{name}/documentproperties
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<DocumentPropertiesResponse> 
     */
    open class func getDocumentPropertiesWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPropertiesResponse> {
        var pathUrl = "/pdf/{name}/documentproperties"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentPropertiesResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document property by name.
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentProperty(name: String, propertyName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertyResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentPropertyWithRequestBuilder(name: name, propertyName: propertyName, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document property by name.
     - GET /pdf/{name}/documentproperties/{propertyName}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<DocumentPropertyResponse> 
     */
    open class func getDocumentPropertyWithRequestBuilder(name: String, propertyName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPropertyResponse> {
        var pathUrl = "/pdf/{name}/documentproperties/{propertyName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{propertyName}", with: "\(propertyName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentPropertyResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download a specific file 
     
     - parameter path: (query) Path of the file including the file name and extension e.g. /file.ext 
     - parameter versionId: (query) File&#39;s version (optional)
     - parameter storage: (query) User&#39;s storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDownload(path: String, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDownloadWithRequestBuilder(path: path, versionId: versionId, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Download a specific file 
     - GET /storage/file
     - examples: [{output=none}]
     
     - parameter path: (query) Path of the file including the file name and extension e.g. /file.ext 
     - parameter versionId: (query) File&#39;s version (optional)
     - parameter storage: (query) User&#39;s storage name (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getDownloadWithRequestBuilder(path: String, versionId: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/storage/file"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "path": path, 
            "versionId": versionId, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download document attachment content by its index.
     
     - parameter name: (path) The document name. 
     - parameter attachmentIndex: (path) The attachment index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDownloadDocumentAttachmentByIndex(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDownloadDocumentAttachmentByIndexWithRequestBuilder(name: name, attachmentIndex: attachmentIndex, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Download document attachment content by its index.
     - GET /pdf/{name}/attachments/{attachmentIndex}/download
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter attachmentIndex: (path) The attachment index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getDownloadDocumentAttachmentByIndexWithRequestBuilder(name: String, attachmentIndex: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/attachments/{attachmentIndex}/download"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{attachmentIndex}", with: "\(attachmentIndex)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEpubInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getEpubInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/epub
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 

     - returns: RequestBuilder<Data> 
     */
    open class func getEpubInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/epub"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get document field by name.
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name/ 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFieldWithRequestBuilder(name: name, fieldName: fieldName, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Get document field by name.
     - GET /pdf/{name}/fields/{fieldName}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name/ 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FieldResponse> 
     */
    open class func getFieldWithRequestBuilder(name: String, fieldName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FieldResponse> {
        var pathUrl = "/pdf/{name}/fields/{fieldName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fieldName}", with: "\(fieldName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FieldResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get document fields.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFields(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFieldsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Get document fields.
     - GET /pdf/{name}/fields
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FieldsResponse> 
     */
    open class func getFieldsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FieldsResponse> {
        var pathUrl = "/pdf/{name}/fields"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FieldsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page fragment.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFragment(name: String, pageNumber: Int, fragmentNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextItemsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFragmentWithRequestBuilder(name: name, pageNumber: pageNumber, fragmentNumber: fragmentNumber, withEmpty: withEmpty, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page fragment.
     - GET /pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextItemsResponse> 
     */
    open class func getFragmentWithRequestBuilder(name: String, pageNumber: Int, fragmentNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextItemsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fragmentNumber}", with: "\(fragmentNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "withEmpty": withEmpty, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextItemsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page fragment text format.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFragmentTextFormat(name: String, pageNumber: Int, fragmentNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextFormatResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFragmentTextFormatWithRequestBuilder(name: name, pageNumber: pageNumber, fragmentNumber: fragmentNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page fragment text format.
     - GET /pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextFormatResponse> 
     */
    open class func getFragmentTextFormatWithRequestBuilder(name: String, pageNumber: Int, fragmentNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextFormatResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fragmentNumber}", with: "\(fragmentNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextFormatResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page fragments.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFragments(name: String, pageNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextItemsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFragmentsWithRequestBuilder(name: name, pageNumber: pageNumber, withEmpty: withEmpty, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page fragments.
     - GET /pdf/{name}/pages/{pageNumber}/fragments
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextItemsResponse> 
     */
    open class func getFragmentsWithRequestBuilder(name: String, pageNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextItemsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/fragments"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "withEmpty": withEmpty, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextItemsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert HTML file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getHtmlInStorageToPdf(srcPath: String, htmlFileName: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getHtmlInStorageToPdfWithRequestBuilder(srcPath: srcPath, htmlFileName: htmlFileName, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert HTML file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/html
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getHtmlInStorageToPdfWithRequestBuilder(srcPath: String, htmlFileName: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/html"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "htmlFileName": htmlFileName, 
            "height": height, 
            "width": width, 
            "isLandscape": isLandscape, 
            "marginLeft": marginLeft, 
            "marginBottom": marginBottom, 
            "marginRight": marginRight, 
            "marginTop": marginTop
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in format specified.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter imageNumber: (path) The image format. 
     - parameter format: (query) Image format to convert, if not specified the common image data is read. (optional)
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImage(name: String, pageNumber: Int, imageNumber: Int, format: String? = nil, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImageWithRequestBuilder(name: name, pageNumber: pageNumber, imageNumber: imageNumber, format: format, width: width, height: height, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in format specified.
     - GET /pdf/{name}/pages/{pageNumber}/images/{imageNumber}
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter imageNumber: (path) The image format. 
     - parameter format: (query) Image format to convert, if not specified the common image data is read. (optional)
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImageWithRequestBuilder(name: String, pageNumber: Int, imageNumber: Int, format: String? = nil, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageNumber}", with: "\(imageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document images.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImages(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ImagesResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImagesWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document images.
     - GET /pdf/{name}/pages/{pageNumber}/images
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<ImagesResponse> 
     */
    open class func getImagesWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<ImagesResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ImagesResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLaTeXInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getLaTeXInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/latex
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 

     - returns: RequestBuilder<Data> 
     */
    open class func getLaTeXInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/latex"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert MHT file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMhtInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getMhtInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert MHT file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/mht
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 

     - returns: RequestBuilder<Data> 
     */
    open class func getMhtInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/mht"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to format specified.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter format: (query) The format to convert if specified. (optional)
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPage(name: String, pageNumber: Int, format: String? = nil, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageWithRequestBuilder(name: name, pageNumber: pageNumber, format: format, width: width, height: height, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to format specified.
     - GET /pdf/{name}/pages/{pageNumber}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter format: (query) The format to convert if specified. (optional)
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageWithRequestBuilder(name: String, pageNumber: Int, format: String? = nil, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page annotation by its number.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotationNumber: (path) The annotation number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageAnnotation(name: String, pageNumber: Int, annotationNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageAnnotationWithRequestBuilder(name: name, pageNumber: pageNumber, annotationNumber: annotationNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page annotation by its number.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotationNumber: (path) The annotation number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AnnotationResponse> 
     */
    open class func getPageAnnotationWithRequestBuilder(name: String, pageNumber: Int, annotationNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AnnotationResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationNumber}", with: "\(annotationNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read documant page annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read documant page annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AnnotationsResponse> 
     */
    open class func getPageAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Bmp image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToBmp(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToBmpWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Bmp image.
     - GET /pdf/{name}/pages/{pageNumber}/convert/bmp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToBmpWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/bmp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Emf image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToEmf(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToEmfWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Emf image.
     - GET /pdf/{name}/pages/{pageNumber}/convert/emf
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToEmfWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/emf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Gif image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToGifWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Gif image.
     - GET /pdf/{name}/pages/{pageNumber}/convert/gif
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToGifWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Jpeg image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToJpegWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Jpeg image.
     - GET /pdf/{name}/pages/{pageNumber}/convert/jpeg
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToJpegWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Png image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToPngWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Png image.
     - GET /pdf/{name}/pages/{pageNumber}/convert/png
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToPngWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Tiff image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToTiffWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Tiff image.
     - GET /pdf/{name}/pages/{pageNumber}/convert/tiff
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToTiffWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page link annotation by its index.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter linkIndex: (path) The link index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageLinkAnnotationByIndex(name: String, pageNumber: Int, linkIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageLinkAnnotationByIndexWithRequestBuilder(name: name, pageNumber: pageNumber, linkIndex: linkIndex, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page link annotation by its index.
     - GET /pdf/{name}/pages/{pageNumber}/links/{linkIndex}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter linkIndex: (path) The link index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LinkAnnotationResponse> 
     */
    open class func getPageLinkAnnotationByIndexWithRequestBuilder(name: String, pageNumber: Int, linkIndex: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LinkAnnotationResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/links/{linkIndex}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{linkIndex}", with: "\(linkIndex)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LinkAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page link annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageLinkAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageLinkAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page link annotations.
     - GET /pdf/{name}/pages/{pageNumber}/links
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LinkAnnotationsResponse> 
     */
    open class func getPageLinkAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LinkAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/links"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LinkAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page text items.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter X: (query)  
     - parameter Y: (query)  
     - parameter width: (query)  
     - parameter height: (query)  
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageText(name: String, pageNumber: Int, X: Int, Y: Int, width: Int, height: Int, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: TextRectsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageTextWithRequestBuilder(name: name, pageNumber: pageNumber, X: X, Y: Y, width: width, height: height, format: format, regex: regex, splitRects: splitRects, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page text items.
     - GET /pdf/{name}/pages/{pageNumber}/text
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter X: (query)  
     - parameter Y: (query)  
     - parameter width: (query)  
     - parameter height: (query)  
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TextRectsResponse> 
     */
    open class func getPageTextWithRequestBuilder(name: String, pageNumber: Int, X: Int, Y: Int, width: Int, height: Int, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil) -> RequestBuilder<TextRectsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "regex": regex, 
            "X": X.encodeToJSON(), 
            "Y": Y.encodeToJSON(), 
            "Width": width.encodeToJSON(), 
            "Height": height.encodeToJSON(), 
            "splitRects": splitRects, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextRectsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page text items.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageTextItems(name: String, pageNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextItemsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageTextItemsWithRequestBuilder(name: name, pageNumber: pageNumber, withEmpty: withEmpty, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page text items.
     - GET /pdf/{name}/pages/{pageNumber}/textItems
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextItemsResponse> 
     */
    open class func getPageTextItemsWithRequestBuilder(name: String, pageNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextItemsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/textItems"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "withEmpty": withEmpty, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextItemsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document pages info.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPages(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPagesResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPagesWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document pages info.
     - GET /pdf/{name}/pages
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<DocumentPagesResponse> 
     */
    open class func getPagesWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPagesResponse> {
        var pathUrl = "/pdf/{name}/pages"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentPagesResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert PCL file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPclInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPclInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PCL file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/pcl
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 

     - returns: RequestBuilder<Data> 
     */
    open class func getPclInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/pcl"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to DOC format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter addReturnToLineEnd: (query) Add return to line end. (optional)
     - parameter format: (query) Allows to specify .doc or .docx file format. (optional)
     - parameter imageResolutionX: (query) Image resolution X. (optional)
     - parameter imageResolutionY: (query) Image resolution Y. (optional)
     - parameter maxDistanceBetweenTextLines: (query) Max distance between text lines. (optional)
     - parameter mode: (query) Allows to control how a PDF document is converted into a word processing document. (optional)
     - parameter recognizeBullets: (query) Recognize bullets. (optional)
     - parameter relativeHorizontalProximity: (query) Relative horizontal proximity. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToDoc(name: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Int? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToDocWithRequestBuilder(name: name, addReturnToLineEnd: addReturnToLineEnd, format: format, imageResolutionX: imageResolutionX, imageResolutionY: imageResolutionY, maxDistanceBetweenTextLines: maxDistanceBetweenTextLines, mode: mode, recognizeBullets: recognizeBullets, relativeHorizontalProximity: relativeHorizontalProximity, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to DOC format and returns resulting file in response content
     - GET /pdf/{name}/convert/doc
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter addReturnToLineEnd: (query) Add return to line end. (optional)
     - parameter format: (query) Allows to specify .doc or .docx file format. (optional)
     - parameter imageResolutionX: (query) Image resolution X. (optional)
     - parameter imageResolutionY: (query) Image resolution Y. (optional)
     - parameter maxDistanceBetweenTextLines: (query) Max distance between text lines. (optional)
     - parameter mode: (query) Allows to control how a PDF document is converted into a word processing document. (optional)
     - parameter recognizeBullets: (query) Recognize bullets. (optional)
     - parameter relativeHorizontalProximity: (query) Relative horizontal proximity. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToDocWithRequestBuilder(name: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Int? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/doc"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "addReturnToLineEnd": addReturnToLineEnd, 
            "format": format, 
            "imageResolutionX": imageResolutionX?.encodeToJSON(), 
            "imageResolutionY": imageResolutionY?.encodeToJSON(), 
            "maxDistanceBetweenTextLines": maxDistanceBetweenTextLines?.encodeToJSON(), 
            "mode": mode, 
            "recognizeBullets": recognizeBullets, 
            "relativeHorizontalProximity": relativeHorizontalProximity, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter contentRecognitionMode: (query) ??roperty tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToEpub(name: String, contentRecognitionMode: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToEpubWithRequestBuilder(name: name, contentRecognitionMode: contentRecognitionMode, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
     - GET /pdf/{name}/convert/epub
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter contentRecognitionMode: (query) ??roperty tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToEpubWithRequestBuilder(name: String, contentRecognitionMode: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/epub"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "contentRecognitionMode": contentRecognitionMode, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to Html format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter additionalMarginWidthInPoints: (query) Defines width of margin that will be forcibly left around that output HTML-areas. (optional)
     - parameter compressSvgGraphicsIfAny: (query) The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. (optional)
     - parameter convertMarkedContentToLayers: (query) If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. (optional)
     - parameter defaultFontName: (query) Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. (optional)
     - parameter documentType: (query) Result document type. (optional)
     - parameter fixedLayout: (query) The value indicating whether that HTML is created as fixed layout. (optional)
     - parameter imageResolution: (query) Resolution for image rendering. (optional)
     - parameter minimalLineWidth: (query) This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. (optional)
     - parameter preventGlyphsGrouping: (query) This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. (optional)
     - parameter splitCssIntoPages: (query) When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. (optional)
     - parameter splitIntoPages: (query) The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. (optional)
     - parameter useZOrder: (query) If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. (optional)
     - parameter antialiasingProcessing: (query) The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. (optional)
     - parameter cssClassNamesPrefix: (query) When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. (optional)
     - parameter explicitListOfSavedPages: (query) With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. (optional)
     - parameter fontEncodingStrategy: (query) Defines encoding special rule to tune PDF decoding for current document. (optional)
     - parameter fontSavingMode: (query) Defines font saving mode that will be used during saving of PDF to desirable format. (optional)
     - parameter htmlMarkupGenerationMode: (query) Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. (optional)
     - parameter lettersPositioningMethod: (query) The mode of positioning of letters in words in result HTML. (optional)
     - parameter pagesFlowTypeDependsOnViewersScreenSize: (query) If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. (optional)
     - parameter partsEmbeddingMode: (query) It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. (optional)
     - parameter rasterImagesSavingMode: (query) Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. (optional)
     - parameter removeEmptyAreasOnTopAndBottom: (query) Defines whether in created HTML will be removed top and bottom empty area without any content (if any). (optional)
     - parameter saveShadowedTextsAsTransparentTexts: (query) Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). (optional)
     - parameter saveTransparentTexts: (query) Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. (optional)
     - parameter specialFolderForAllImages: (query) The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter specialFolderForSvgImages: (query) The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter trySaveTextUnderliningAndStrikeoutingInCss: (query) PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToHtml(name: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToHtmlWithRequestBuilder(name: name, additionalMarginWidthInPoints: additionalMarginWidthInPoints, compressSvgGraphicsIfAny: compressSvgGraphicsIfAny, convertMarkedContentToLayers: convertMarkedContentToLayers, defaultFontName: defaultFontName, documentType: documentType, fixedLayout: fixedLayout, imageResolution: imageResolution, minimalLineWidth: minimalLineWidth, preventGlyphsGrouping: preventGlyphsGrouping, splitCssIntoPages: splitCssIntoPages, splitIntoPages: splitIntoPages, useZOrder: useZOrder, antialiasingProcessing: antialiasingProcessing, cssClassNamesPrefix: cssClassNamesPrefix, explicitListOfSavedPages: explicitListOfSavedPages, fontEncodingStrategy: fontEncodingStrategy, fontSavingMode: fontSavingMode, htmlMarkupGenerationMode: htmlMarkupGenerationMode, lettersPositioningMethod: lettersPositioningMethod, pagesFlowTypeDependsOnViewersScreenSize: pagesFlowTypeDependsOnViewersScreenSize, partsEmbeddingMode: partsEmbeddingMode, rasterImagesSavingMode: rasterImagesSavingMode, removeEmptyAreasOnTopAndBottom: removeEmptyAreasOnTopAndBottom, saveShadowedTextsAsTransparentTexts: saveShadowedTextsAsTransparentTexts, saveTransparentTexts: saveTransparentTexts, specialFolderForAllImages: specialFolderForAllImages, specialFolderForSvgImages: specialFolderForSvgImages, trySaveTextUnderliningAndStrikeoutingInCss: trySaveTextUnderliningAndStrikeoutingInCss, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to Html format and returns resulting file in response content
     - GET /pdf/{name}/convert/html
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter additionalMarginWidthInPoints: (query) Defines width of margin that will be forcibly left around that output HTML-areas. (optional)
     - parameter compressSvgGraphicsIfAny: (query) The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. (optional)
     - parameter convertMarkedContentToLayers: (query) If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. (optional)
     - parameter defaultFontName: (query) Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. (optional)
     - parameter documentType: (query) Result document type. (optional)
     - parameter fixedLayout: (query) The value indicating whether that HTML is created as fixed layout. (optional)
     - parameter imageResolution: (query) Resolution for image rendering. (optional)
     - parameter minimalLineWidth: (query) This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. (optional)
     - parameter preventGlyphsGrouping: (query) This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. (optional)
     - parameter splitCssIntoPages: (query) When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. (optional)
     - parameter splitIntoPages: (query) The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. (optional)
     - parameter useZOrder: (query) If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. (optional)
     - parameter antialiasingProcessing: (query) The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. (optional)
     - parameter cssClassNamesPrefix: (query) When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. (optional)
     - parameter explicitListOfSavedPages: (query) With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. (optional)
     - parameter fontEncodingStrategy: (query) Defines encoding special rule to tune PDF decoding for current document. (optional)
     - parameter fontSavingMode: (query) Defines font saving mode that will be used during saving of PDF to desirable format. (optional)
     - parameter htmlMarkupGenerationMode: (query) Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. (optional)
     - parameter lettersPositioningMethod: (query) The mode of positioning of letters in words in result HTML. (optional)
     - parameter pagesFlowTypeDependsOnViewersScreenSize: (query) If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. (optional)
     - parameter partsEmbeddingMode: (query) It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. (optional)
     - parameter rasterImagesSavingMode: (query) Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. (optional)
     - parameter removeEmptyAreasOnTopAndBottom: (query) Defines whether in created HTML will be removed top and bottom empty area without any content (if any). (optional)
     - parameter saveShadowedTextsAsTransparentTexts: (query) Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). (optional)
     - parameter saveTransparentTexts: (query) Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. (optional)
     - parameter specialFolderForAllImages: (query) The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter specialFolderForSvgImages: (query) The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter trySaveTextUnderliningAndStrikeoutingInCss: (query) PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToHtmlWithRequestBuilder(name: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/html"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "additionalMarginWidthInPoints": additionalMarginWidthInPoints?.encodeToJSON(), 
            "compressSvgGraphicsIfAny": compressSvgGraphicsIfAny, 
            "convertMarkedContentToLayers": convertMarkedContentToLayers, 
            "defaultFontName": defaultFontName, 
            "documentType": documentType, 
            "fixedLayout": fixedLayout, 
            "imageResolution": imageResolution?.encodeToJSON(), 
            "minimalLineWidth": minimalLineWidth?.encodeToJSON(), 
            "preventGlyphsGrouping": preventGlyphsGrouping, 
            "splitCssIntoPages": splitCssIntoPages, 
            "splitIntoPages": splitIntoPages, 
            "useZOrder": useZOrder, 
            "antialiasingProcessing": antialiasingProcessing, 
            "cssClassNamesPrefix": cssClassNamesPrefix, 
            "explicitListOfSavedPages": explicitListOfSavedPages, 
            "fontEncodingStrategy": fontEncodingStrategy, 
            "fontSavingMode": fontSavingMode, 
            "htmlMarkupGenerationMode": htmlMarkupGenerationMode, 
            "lettersPositioningMethod": lettersPositioningMethod, 
            "pagesFlowTypeDependsOnViewersScreenSize": pagesFlowTypeDependsOnViewersScreenSize, 
            "partsEmbeddingMode": partsEmbeddingMode, 
            "rasterImagesSavingMode": rasterImagesSavingMode, 
            "removeEmptyAreasOnTopAndBottom": removeEmptyAreasOnTopAndBottom, 
            "saveShadowedTextsAsTransparentTexts": saveShadowedTextsAsTransparentTexts, 
            "saveTransparentTexts": saveTransparentTexts, 
            "specialFolderForAllImages": specialFolderForAllImages, 
            "specialFolderForSvgImages": specialFolderForSvgImages, 
            "trySaveTextUnderliningAndStrikeoutingInCss": trySaveTextUnderliningAndStrikeoutingInCss, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToLaTeX(name: String, pagesCount: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToLaTeXWithRequestBuilder(name: name, pagesCount: pagesCount, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
     - GET /pdf/{name}/convert/latex
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToLaTeXWithRequestBuilder(name: String, pagesCount: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/latex"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "pagesCount": pagesCount?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToMobiXml(name: String, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToMobiXmlWithRequestBuilder(name: name, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
     - GET /pdf/{name}/convert/mobixml
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToMobiXmlWithRequestBuilder(name: String, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/mobixml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToPdfA(name: String, type: String, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToPdfAWithRequestBuilder(name: name, type: type, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
     - GET /pdf/{name}/convert/pdfa
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToPdfAWithRequestBuilder(name: String, type: String, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/pdfa"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "type": type, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToPptx(name: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToPptxWithRequestBuilder(name: name, separateImages: separateImages, slidesAsImages: slidesAsImages, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
     - GET /pdf/{name}/convert/pptx
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToPptxWithRequestBuilder(name: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/pptx"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "separateImages": separateImages, 
            "slidesAsImages": slidesAsImages, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to SVG format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToSvg(name: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToSvgWithRequestBuilder(name: name, compressOutputToZipArchive: compressOutputToZipArchive, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to SVG format and returns resulting file in response content
     - GET /pdf/{name}/convert/svg
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToSvgWithRequestBuilder(name: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/svg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "compressOutputToZipArchive": compressOutputToZipArchive, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter brightness: (query) Image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToTiff(name: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToTiffWithRequestBuilder(name: name, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
     - GET /pdf/{name}/convert/tiff
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter brightness: (query) Image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToTiffWithRequestBuilder(name: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "brightness": brightness, 
            "compression": compression, 
            "colorDepth": colorDepth, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XLS format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXls(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXlsWithRequestBuilder(name: name, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XLS format and returns resulting file in response content
     - GET /pdf/{name}/convert/xls
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXlsWithRequestBuilder(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xls"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "insertBlankColumnAtFirst": insertBlankColumnAtFirst, 
            "minimizeTheNumberOfWorksheets": minimizeTheNumberOfWorksheets, 
            "scaleFactor": scaleFactor, 
            "uniformWorksheets": uniformWorksheets, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XML format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXml(name: String, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXmlWithRequestBuilder(name: name, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XML format and returns resulting file in response content
     - GET /pdf/{name}/convert/xml
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXmlWithRequestBuilder(name: String, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XPS format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXps(name: String, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXpsWithRequestBuilder(name: name, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XPS format and returns resulting file in response content
     - GET /pdf/{name}/convert/xps
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXpsWithRequestBuilder(name: String, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert PS file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPsInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPsInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PS file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/ps
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 

     - returns: RequestBuilder<Data> 
     */
    open class func getPsInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/ps"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read segment.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter segmentNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSegment(name: String, pageNumber: Int, fragmentNumber: Int, segmentNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextItemResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSegmentWithRequestBuilder(name: name, pageNumber: pageNumber, fragmentNumber: fragmentNumber, segmentNumber: segmentNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read segment.
     - GET /pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter segmentNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextItemResponse> 
     */
    open class func getSegmentWithRequestBuilder(name: String, pageNumber: Int, fragmentNumber: Int, segmentNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextItemResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fragmentNumber}", with: "\(fragmentNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{segmentNumber}", with: "\(segmentNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextItemResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read segment text format.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter segmentNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSegmentTextFormat(name: String, pageNumber: Int, fragmentNumber: Int, segmentNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextFormatResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSegmentTextFormatWithRequestBuilder(name: name, pageNumber: pageNumber, fragmentNumber: fragmentNumber, segmentNumber: segmentNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read segment text format.
     - GET /pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textformat
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter segmentNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextFormatResponse> 
     */
    open class func getSegmentTextFormatWithRequestBuilder(name: String, pageNumber: Int, fragmentNumber: Int, segmentNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextFormatResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textformat"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fragmentNumber}", with: "\(fragmentNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{segmentNumber}", with: "\(segmentNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextFormatResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read fragment segments.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSegments(name: String, pageNumber: Int, fragmentNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextItemsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSegmentsWithRequestBuilder(name: name, pageNumber: pageNumber, fragmentNumber: fragmentNumber, withEmpty: withEmpty, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read fragment segments.
     - GET /pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter fragmentNumber: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextItemsResponse> 
     */
    open class func getSegmentsWithRequestBuilder(name: String, pageNumber: Int, fragmentNumber: Int, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextItemsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fragmentNumber}", with: "\(fragmentNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "withEmpty": withEmpty, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextItemsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert SVG file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.svg) 
     - parameter adjustPageSize: (query) Adjust page size (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSvgInStorageToPdf(srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSvgInStorageToPdfWithRequestBuilder(srcPath: srcPath, adjustPageSize: adjustPageSize, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert SVG file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/svg
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.svg) 
     - parameter adjustPageSize: (query) Adjust page size (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getSvgInStorageToPdfWithRequestBuilder(srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/svg"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "adjustPageSize": adjustPageSize, 
            "height": height, 
            "width": width, 
            "isLandscape": isLandscape, 
            "marginLeft": marginLeft, 
            "marginBottom": marginBottom, 
            "marginRight": marginRight, 
            "marginTop": marginTop
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document text.
     
     - parameter name: (path) The document name. 
     - parameter X: (query)  
     - parameter Y: (query)  
     - parameter width: (query)  
     - parameter height: (query)  
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getText(name: String, X: Int, Y: Int, width: Int, height: Int, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: TextRectsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getTextWithRequestBuilder(name: name, X: X, Y: Y, width: width, height: height, format: format, regex: regex, splitRects: splitRects, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document text.
     - GET /pdf/{name}/text
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter X: (query)  
     - parameter Y: (query)  
     - parameter width: (query)  
     - parameter height: (query)  
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TextRectsResponse> 
     */
    open class func getTextWithRequestBuilder(name: String, X: Int, Y: Int, width: Int, height: Int, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil) -> RequestBuilder<TextRectsResponse> {
        var pathUrl = "/pdf/{name}/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "regex": regex, 
            "X": X.encodeToJSON(), 
            "Y": Y.encodeToJSON(), 
            "Width": width.encodeToJSON(), 
            "Height": height.encodeToJSON(), 
            "splitRects": splitRects, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextRectsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document text items.
     
     - parameter name: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTextItems(name: String, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextItemsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getTextItemsWithRequestBuilder(name: name, withEmpty: withEmpty, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document text items.
     - GET /pdf/{name}/textItems
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter withEmpty: (query)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextItemsResponse> 
     */
    open class func getTextItemsWithRequestBuilder(name: String, withEmpty: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextItemsResponse> {
        var pathUrl = "/pdf/{name}/textItems"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "withEmpty": withEmpty, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextItemsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Verify signature document.
     
     - parameter name: (path) The document name. 
     - parameter signName: (query) Sign name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVerifySignature(name: String, signName: String, folder: String? = nil, completion: @escaping ((_ data: SignatureVerifyResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getVerifySignatureWithRequestBuilder(name: name, signName: signName, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Verify signature document.
     - GET /pdf/{name}/verifySignature
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter signName: (query) Sign name. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SignatureVerifyResponse> 
     */
    open class func getVerifySignatureWithRequestBuilder(name: String, signName: String, folder: String? = nil) -> RequestBuilder<SignatureVerifyResponse> {
        var pathUrl = "/pdf/{name}/verifySignature"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "signName": signName, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SignatureVerifyResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert web page to PDF format and return resulting file in response. 
     
     - parameter url: (query) Source url 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWebInStorageToPdf(url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getWebInStorageToPdfWithRequestBuilder(url: url, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert web page to PDF format and return resulting file in response. 
     - GET /pdf/create/web
     - examples: [{output=none}]
     
     - parameter url: (query) Source url 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getWebInStorageToPdfWithRequestBuilder(url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/web"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "url": url, 
            "height": height, 
            "width": width, 
            "isLandscape": isLandscape, 
            "marginLeft": marginLeft, 
            "marginBottom": marginBottom, 
            "marginRight": marginRight, 
            "marginTop": marginTop
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get number of words per document page.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWordsPerPage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: WordCountResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getWordsPerPageWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Get number of words per document page.
     - GET /pdf/{name}/pages/wordCount
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<WordCountResponse> 
     */
    open class func getWordsPerPageWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<WordCountResponse> {
        var pathUrl = "/pdf/{name}/pages/wordCount"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<WordCountResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXfaPdfInStorageToAcroForm(name: String, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXfaPdfInStorageToAcroFormWithRequestBuilder(name: name, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
     - GET /pdf/{name}/convert/xfatoacroform
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getXfaPdfInStorageToAcroFormWithRequestBuilder(name: String, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xfatoacroform"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XML file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXmlInStorageToPdf(srcPath: String, xslFilePath: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXmlInStorageToPdfWithRequestBuilder(srcPath: srcPath, xslFilePath: xslFilePath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XML file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/xml
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getXmlInStorageToPdfWithRequestBuilder(srcPath: String, xslFilePath: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/xml"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "xslFilePath": xslFilePath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XPS file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXpsInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXpsInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XPS file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/xps
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 

     - returns: RequestBuilder<Data> 
     */
    open class func getXpsInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/xps"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xslfo) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXslFoInStorageToPdf(srcPath: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXslFoInStorageToPdfWithRequestBuilder(srcPath: srcPath).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/xslfo
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xslfo) 

     - returns: RequestBuilder<Data> 
     */
    open class func getXslFoInStorageToPdfWithRequestBuilder(srcPath: String) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/xslfo"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Append document to existing one.
     
     - parameter name: (path) The original document name. 
     - parameter appendDocument: (body) with the append document data. (optional)
     - parameter appendFile: (query) Append file server path. (optional)
     - parameter startPage: (query) Appending start page. (optional, default to 0)
     - parameter endPage: (query) Appending end page. (optional, default to 0)
     - parameter storage: (query) The documents storage. (optional)
     - parameter folder: (query) The original document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAppendDocument(name: String, appendDocument: AppendDocument? = nil, appendFile: String? = nil, startPage: Int? = nil, endPage: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postAppendDocumentWithRequestBuilder(name: name, appendDocument: appendDocument, appendFile: appendFile, startPage: startPage, endPage: endPage, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Append document to existing one.
     - POST /pdf/{name}/appendDocument
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The original document name. 
     - parameter appendDocument: (body) with the append document data. (optional)
     - parameter appendFile: (query) Append file server path. (optional)
     - parameter startPage: (query) Appending start page. (optional, default to 0)
     - parameter endPage: (query) Appending end page. (optional, default to 0)
     - parameter storage: (query) The documents storage. (optional)
     - parameter folder: (query) The original document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func postAppendDocumentWithRequestBuilder(name: String, appendDocument: AppendDocument? = nil, appendFile: String? = nil, startPage: Int? = nil, endPage: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}/appendDocument"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appendDocument)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "appendFile": appendFile, 
            "startPage": startPage?.encodeToJSON(), 
            "endPage": endPage?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create field.
     
     - parameter name: (path) The document name. 
     - parameter page: (query) Document page number. 
     - parameter field: (body) with the field data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCreateField(name: String, page: Int, field: Field? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postCreateFieldWithRequestBuilder(name: name, page: page, field: field, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Create field.
     - POST /pdf/{name}/fields
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter page: (query) Document page number. 
     - parameter field: (body) with the field data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func postCreateFieldWithRequestBuilder(name: String, page: Int, field: Field? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/fields"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: field)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "page": page.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Document's replace text method. Deprecated
     
     - parameter name: (path)  
     - parameter textReplace: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentReplaceText(name: String, textReplace: TextReplaceRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentTextReplaceResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentReplaceTextWithRequestBuilder(name: name, textReplace: textReplace, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Document's replace text method. Deprecated
     - POST /pdf/{name}/replaceText
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter textReplace: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<DocumentTextReplaceResponse> 
     */
    open class func postDocumentReplaceTextWithRequestBuilder(name: String, textReplace: TextReplaceRequest, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentTextReplaceResponse> {
        var pathUrl = "/pdf/{name}/replaceText"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textReplace)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentTextReplaceResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Document's replace text method. Deprecated
     
     - parameter name: (path)  
     - parameter textReplaceListRequest: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentReplaceTextList(name: String, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentTextReplaceResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentReplaceTextListWithRequestBuilder(name: name, textReplaceListRequest: textReplaceListRequest, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Document's replace text method. Deprecated
     - POST /pdf/{name}/replaceTextList
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter textReplaceListRequest: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<DocumentTextReplaceResponse> 
     */
    open class func postDocumentReplaceTextListWithRequestBuilder(name: String, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentTextReplaceResponse> {
        var pathUrl = "/pdf/{name}/replaceTextList"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textReplaceListRequest)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentTextReplaceResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Document's replace text method.
     
     - parameter name: (path)  
     - parameter textReplace: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentTextReplace(name: String, textReplace: TextReplaceListRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextReplaceResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentTextReplaceWithRequestBuilder(name: name, textReplace: textReplace, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Document's replace text method.
     - POST /pdf/{name}/text/replace
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter textReplace: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextReplaceResponse> 
     */
    open class func postDocumentTextReplaceWithRequestBuilder(name: String, textReplace: TextReplaceListRequest, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextReplaceResponse> {
        var pathUrl = "/pdf/{name}/text/replace"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textReplace)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextReplaceResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Move page to new position.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter newIndex: (query) The new page position/index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postMovePage(name: String, pageNumber: Int, newIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postMovePageWithRequestBuilder(name: name, pageNumber: pageNumber, newIndex: newIndex, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Move page to new position.
     - POST /pdf/{name}/pages/{pageNumber}/movePage
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter newIndex: (query) The new page position/index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func postMovePageWithRequestBuilder(name: String, pageNumber: Int, newIndex: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/movePage"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "newIndex": newIndex.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Optimize document.
     
     - parameter name: (path) The document name. 
     - parameter options: (body) The optimization options. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postOptimizeDocument(name: String, options: OptimizeOptions? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postOptimizeDocumentWithRequestBuilder(name: name, options: options, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Optimize document.
     - POST /pdf/{name}/optimize
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter options: (body) The optimization options. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func postOptimizeDocumentWithRequestBuilder(name: String, options: OptimizeOptions? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/optimize"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Page's replace text method. Deprecated
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter textReplace: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageReplaceText(name: String, pageNumber: Int, textReplace: TextReplaceRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PageTextReplaceResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageReplaceTextWithRequestBuilder(name: name, pageNumber: pageNumber, textReplace: textReplace, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Page's replace text method. Deprecated
     - POST /pdf/{name}/pages/{pageNumber}/replaceText
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter textReplace: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<PageTextReplaceResponse> 
     */
    open class func postPageReplaceTextWithRequestBuilder(name: String, pageNumber: Int, textReplace: TextReplaceRequest, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PageTextReplaceResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/replaceText"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textReplace)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PageTextReplaceResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Page's replace text method. Deprecated
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter textReplaceListRequest: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageReplaceTextList(name: String, pageNumber: Int, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PageTextReplaceResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageReplaceTextListWithRequestBuilder(name: name, pageNumber: pageNumber, textReplaceListRequest: textReplaceListRequest, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Page's replace text method. Deprecated
     - POST /pdf/{name}/pages/{pageNumber}/replaceTextList
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter textReplaceListRequest: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<PageTextReplaceResponse> 
     */
    open class func postPageReplaceTextListWithRequestBuilder(name: String, pageNumber: Int, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PageTextReplaceResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/replaceTextList"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textReplaceListRequest)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PageTextReplaceResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Page's replace text method.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter textReplaceListRequest: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageTextReplace(name: String, pageNumber: Int, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextReplaceResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageTextReplaceWithRequestBuilder(name: name, pageNumber: pageNumber, textReplaceListRequest: textReplaceListRequest, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Page's replace text method.
     - POST /pdf/{name}/pages/{pageNumber}/text/replace
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter textReplaceListRequest: (body)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TextReplaceResponse> 
     */
    open class func postPageTextReplaceWithRequestBuilder(name: String, pageNumber: Int, textReplaceListRequest: TextReplaceListRequest, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextReplaceResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/text/replace"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textReplaceListRequest)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextReplaceResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document image.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter imageNumber: (path) The image number. 
     - parameter imageFile: (query) Path to image file if specified. Request content is used otherwise. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter image: (form) Image file. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postReplaceImage(name: String, pageNumber: Int, imageNumber: Int, imageFile: String? = nil, storage: String? = nil, folder: String? = nil, image: URL? = nil, completion: @escaping ((_ data: ImageResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postReplaceImageWithRequestBuilder(name: name, pageNumber: pageNumber, imageNumber: imageNumber, imageFile: imageFile, storage: storage, folder: folder, image: image).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document image.
     - POST /pdf/{name}/pages/{pageNumber}/images/{imageNumber}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter imageNumber: (path) The image number. 
     - parameter imageFile: (query) Path to image file if specified. Request content is used otherwise. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter image: (form) Image file. (optional)

     - returns: RequestBuilder<ImageResponse> 
     */
    open class func postReplaceImageWithRequestBuilder(name: String, pageNumber: Int, imageNumber: Int, imageFile: String? = nil, storage: String? = nil, folder: String? = nil, image: URL? = nil) -> RequestBuilder<ImageResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageNumber}", with: "\(imageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "image": image
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "imageFile": imageFile, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ImageResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Sign document.
     
     - parameter name: (path) The document name. 
     - parameter signature: (body) Signature object containing signature data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSignDocument(name: String, signature: Signature? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postSignDocumentWithRequestBuilder(name: name, signature: signature, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Sign document.
     - POST /pdf/{name}/sign
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter signature: (body) Signature object containing signature data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func postSignDocumentWithRequestBuilder(name: String, signature: Signature? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/sign"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: signature)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sign page.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter signature: (body) Signature object containing signature data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSignPage(name: String, pageNumber: Int, signature: Signature? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postSignPageWithRequestBuilder(name: name, pageNumber: pageNumber, signature: signature, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Sign page.
     - POST /pdf/{name}/pages/{pageNumber}/sign
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter signature: (body) Signature object containing signature data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func postSignPageWithRequestBuilder(name: String, pageNumber: Int, signature: Signature? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/sign"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: signature)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Split document to parts.
     
     - parameter name: (path) Document name. 
     - parameter format: (query) Resulting documents format. (optional)
     - parameter from: (query) Start page if defined. (optional)
     - parameter to: (query) End page if defined. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSplitDocument(name: String, format: String? = nil, from: Int? = nil, to: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SplitResultResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postSplitDocumentWithRequestBuilder(name: name, format: format, from: from, to: to, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Split document to parts.
     - POST /pdf/{name}/split
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) Document name. 
     - parameter format: (query) Resulting documents format. (optional)
     - parameter from: (query) Start page if defined. (optional)
     - parameter to: (query) End page if defined. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SplitResultResponse> 
     */
    open class func postSplitDocumentWithRequestBuilder(name: String, format: String? = nil, from: Int? = nil, to: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SplitResultResponse> {
        var pathUrl = "/pdf/{name}/split"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "from": from?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SplitResultResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add new page to end of the document.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAddNewPage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPagesResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putAddNewPageWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add new page to end of the document.
     - PUT /pdf/{name}/pages
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<DocumentPagesResponse> 
     */
    open class func putAddNewPageWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPagesResponse> {
        var pathUrl = "/pdf/{name}/pages"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentPagesResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add text to PDF document page. Deprecated
     
     - parameter name: (path) Name of the document to which text should be added. 
     - parameter pageNumber: (path) Number of page (starting with 1) to which text should be added. 
     - parameter paragraph: (body) Paragraph data. (optional)
     - parameter storage: (query) File storage to be used. (optional)
     - parameter folder: (query) Document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAddParagraph(name: String, pageNumber: Int, paragraph: Paragraph? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putAddParagraphWithRequestBuilder(name: name, pageNumber: pageNumber, paragraph: paragraph, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add text to PDF document page. Deprecated
     - PUT /pdf/{name}/pages/{pageNumber}/paragraph
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) Name of the document to which text should be added. 
     - parameter pageNumber: (path) Number of page (starting with 1) to which text should be added. 
     - parameter paragraph: (body) Paragraph data. (optional)
     - parameter storage: (query) File storage to be used. (optional)
     - parameter folder: (query) Document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putAddParagraphWithRequestBuilder(name: String, pageNumber: Int, paragraph: Paragraph? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/paragraph"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: paragraph)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add text to PDF document page.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter paragraph: (body) Paragraph data. (optional)
     - parameter folder: (query) Document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAddText(name: String, pageNumber: Int, paragraph: Paragraph? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putAddTextWithRequestBuilder(name: name, pageNumber: pageNumber, paragraph: paragraph, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add text to PDF document page.
     - PUT /pdf/{name}/pages/{pageNumber}/text
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter paragraph: (body) Paragraph data. (optional)
     - parameter folder: (query) Document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putAddTextWithRequestBuilder(name: String, pageNumber: Int, paragraph: Paragraph? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: paragraph)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert document from request content to format specified.
     
     - parameter format: (query) The format to convert. (optional)
     - parameter url: (query)  (optional)
     - parameter outPath: (query) Path to save result (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putConvertDocument(format: String? = nil, url: String? = nil, outPath: String? = nil, file: URL? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putConvertDocumentWithRequestBuilder(format: format, url: url, outPath: outPath, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document from request content to format specified.
     - PUT /pdf/convert
     - examples: [{output=none}]
     
     - parameter format: (query) The format to convert. (optional)
     - parameter url: (query)  (optional)
     - parameter outPath: (query) Path to save result (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func putConvertDocumentWithRequestBuilder(format: String? = nil, url: String? = nil, outPath: String? = nil, file: URL? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/convert"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "url": url, 
            "outPath": outPath
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Upload a specific file 
     
     - parameter path: (query) Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext 
     - parameter file: (form) File to upload 
     - parameter versionId: (query) Source file&#39;s version (optional)
     - parameter storage: (query) User&#39;s storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putCreate(path: String, file: URL, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putCreateWithRequestBuilder(path: path, file: file, versionId: versionId, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Upload a specific file 
     - PUT /storage/file
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter path: (query) Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext 
     - parameter file: (form) File to upload 
     - parameter versionId: (query) Source file&#39;s version (optional)
     - parameter storage: (query) User&#39;s storage name (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putCreateWithRequestBuilder(path: String, file: URL, versionId: String? = nil, storage: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/storage/file"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "File": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "path": path, 
            "versionId": versionId, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create new document.
     
     - parameter name: (path) The new document name. 
     - parameter templateFile: (query) The template file server path if defined. (optional)
     - parameter dataFile: (query) The data file path (for xml template only). (optional)
     - parameter templateType: (query) The template type, can be xml, html, bmp, jpg, png, tiff, emf, cgm, tex. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The new document folder. (optional)
     - parameter url: (query) The url of web page if defined. (optional)
     - parameter fitSize: (query) Draw a margin around content in resulting pdf. (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putCreateDocument(name: String, templateFile: String? = nil, dataFile: String? = nil, templateType: String? = nil, storage: String? = nil, folder: String? = nil, url: String? = nil, fitSize: Bool? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putCreateDocumentWithRequestBuilder(name: name, templateFile: templateFile, dataFile: dataFile, templateType: templateType, storage: storage, folder: folder, url: url, fitSize: fitSize).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Create new document.
     - PUT /pdf/{name}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The new document name. 
     - parameter templateFile: (query) The template file server path if defined. (optional)
     - parameter dataFile: (query) The data file path (for xml template only). (optional)
     - parameter templateType: (query) The template type, can be xml, html, bmp, jpg, png, tiff, emf, cgm, tex. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The new document folder. (optional)
     - parameter url: (query) The url of web page if defined. (optional)
     - parameter fitSize: (query) Draw a margin around content in resulting pdf. (optional, default to false)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func putCreateDocumentWithRequestBuilder(name: String, templateFile: String? = nil, dataFile: String? = nil, templateType: String? = nil, storage: String? = nil, folder: String? = nil, url: String? = nil, fitSize: Bool? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "templateFile": templateFile, 
            "dataFile": dataFile, 
            "templateType": templateType, 
            "storage": storage, 
            "folder": folder, 
            "url": url, 
            "fitSize": fitSize
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create new document from images.
     
     - parameter name: (path) The new document name. 
     - parameter images: (body) The images file paths set.   (optional)
     - parameter ocr: (query) To create OCR layer for image or not. (optional, default to false)
     - parameter ocrLang: (query) The language which is defined for OCR engine. Default is eng. (optional, default to eng)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The new document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putCreateDocumentFromImages(name: String, images: ImagesListRequest? = nil, ocr: Bool? = nil, ocrLang: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putCreateDocumentFromImagesWithRequestBuilder(name: name, images: images, ocr: ocr, ocrLang: ocrLang, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Create new document from images.
     - PUT /pdf/{name}/fromimages
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The new document name. 
     - parameter images: (body) The images file paths set.   (optional)
     - parameter ocr: (query) To create OCR layer for image or not. (optional, default to false)
     - parameter ocrLang: (query) The language which is defined for OCR engine. Default is eng. (optional, default to eng)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The new document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func putCreateDocumentFromImagesWithRequestBuilder(name: String, images: ImagesListRequest? = nil, ocr: Bool? = nil, ocrLang: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}/fromimages"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: images)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "ocr": ocr, 
            "ocrLang": ocrLang, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Save document as Tiff image.
     
     - parameter name: (path) The document name. 
     - parameter exportOptions: (body) with tiff export options. (optional)
     - parameter resultFile: (query) The resulting file. (optional)
     - parameter brightness: (query) The image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putDocumentSaveAsTiff(name: String, exportOptions: TiffExportOptions? = nil, resultFile: String? = nil, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putDocumentSaveAsTiffWithRequestBuilder(name: name, exportOptions: exportOptions, resultFile: resultFile, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Save document as Tiff image.
     - PUT /pdf/{name}/SaveAs/tiff
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter exportOptions: (body) with tiff export options. (optional)
     - parameter resultFile: (query) The resulting file. (optional)
     - parameter brightness: (query) The image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putDocumentSaveAsTiffWithRequestBuilder(name: String, exportOptions: TiffExportOptions? = nil, resultFile: String? = nil, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/SaveAs/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: exportOptions)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "resultFile": resultFile, 
            "brightness": brightness, 
            "compression": compression, 
            "colorDepth": colorDepth, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putEpubInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putEpubInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/epub
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putEpubInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/epub"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Flatten form fields in document.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFieldsFlatten(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putFieldsFlattenWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Flatten form fields in document.
     - PUT /pdf/{name}/fields/flatten
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putFieldsFlattenWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/fields/flatten"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putHtmlInStorageToPdf(name: String, srcPath: String, htmlFileName: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putHtmlInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, htmlFileName: htmlFileName, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/html
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putHtmlInStorageToPdfWithRequestBuilder(name: String, srcPath: String, htmlFileName: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/html"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "htmlFileName": htmlFileName, 
            "height": height, 
            "width": width, 
            "isLandscape": isLandscape, 
            "marginLeft": marginLeft, 
            "marginBottom": marginBottom, 
            "marginRight": marginRight, 
            "marginTop": marginTop, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert image file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter imageTemplates: (body) Image templates 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImageInStorageToPdf(name: String, imageTemplates: ImageTemplatesRequest, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImageInStorageToPdfWithRequestBuilder(name: name, imageTemplates: imageTemplates, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert image file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/images
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageTemplates: (body) Image templates 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putImageInStorageToPdfWithRequestBuilder(name: String, imageTemplates: ImageTemplatesRequest, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/images"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: imageTemplates)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Extract document images in format specified to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsGifWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in format specified to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/gif
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putImagesExtractAsGifWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document images in format specified to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsJpegWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in format specified to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/jpeg
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putImagesExtractAsJpegWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document images in format specified to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsPngWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in format specified to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/png
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putImagesExtractAsPngWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document images in format specified to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsTiffWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in format specified to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/tiff
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putImagesExtractAsTiffWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putLaTeXInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putLaTeXInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/latex
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putLaTeXInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/latex"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Merge a list of documents.
     
     - parameter name: (path) Resulting documen name. 
     - parameter mergeDocuments: (body) with a list of documents. (optional)
     - parameter storage: (query) Resulting document storage. (optional)
     - parameter folder: (query) Resulting document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMergeDocuments(name: String, mergeDocuments: MergeDocuments? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putMergeDocumentsWithRequestBuilder(name: name, mergeDocuments: mergeDocuments, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Merge a list of documents.
     - PUT /pdf/{name}/merge
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) Resulting documen name. 
     - parameter mergeDocuments: (body) with a list of documents. (optional)
     - parameter storage: (query) Resulting document storage. (optional)
     - parameter folder: (query) Resulting document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func putMergeDocumentsWithRequestBuilder(name: String, mergeDocuments: MergeDocuments? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}/merge"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mergeDocuments)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMhtInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putMhtInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/mht
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putMhtInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/mht"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add page stamp.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamp: (body) with data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageAddStamp(name: String, pageNumber: Int, stamp: Stamp, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageAddStampWithRequestBuilder(name: name, pageNumber: pageNumber, stamp: stamp, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add page stamp.
     - PUT /pdf/{name}/pages/{pageNumber}/stamp
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamp: (body) with data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageAddStampWithRequestBuilder(name: String, pageNumber: Int, stamp: Stamp, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/stamp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: stamp)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert document page to bmp image and save in storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToBmp(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToBmpWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to bmp image and save in storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/bmp
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageConvertToBmpWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/bmp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to emf image and save in storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToEmf(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToEmfWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to emf image and save in storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/emf
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageConvertToEmfWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/emf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to gif image and save in storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToGif(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToGifWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to gif image and save in storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/gif
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageConvertToGifWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Jpeg image and save in storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToJpeg(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToJpegWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Jpeg image and save in storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/jpeg
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageConvertToJpegWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to png image and save in storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToPng(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToPngWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to png image and save in storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/png
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageConvertToPngWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Tiff image and save in storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToTiff(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToTiffWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Tiff image and save in storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/tiff
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional)
     - parameter height: (query) The converted image height. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPageConvertToTiffWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPclInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPclInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/pcl
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPclInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/pcl"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter addReturnToLineEnd: (query) Add return to line end. (optional)
     - parameter format: (query) Allows to specify .doc or .docx file format. (optional)
     - parameter imageResolutionX: (query) Image resolution X. (optional)
     - parameter imageResolutionY: (query) Image resolution Y. (optional)
     - parameter maxDistanceBetweenTextLines: (query) Max distance between text lines. (optional)
     - parameter mode: (query) Allows to control how a PDF document is converted into a word processing document. (optional)
     - parameter recognizeBullets: (query) Recognize bullets. (optional)
     - parameter relativeHorizontalProximity: (query) Relative horizontal proximity. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToDoc(outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Int? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToDocWithRequestBuilder(outPath: outPath, addReturnToLineEnd: addReturnToLineEnd, format: format, imageResolutionX: imageResolutionX, imageResolutionY: imageResolutionY, maxDistanceBetweenTextLines: maxDistanceBetweenTextLines, mode: mode, recognizeBullets: recognizeBullets, relativeHorizontalProximity: relativeHorizontalProximity, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
     - PUT /pdf/convert/doc
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter addReturnToLineEnd: (query) Add return to line end. (optional)
     - parameter format: (query) Allows to specify .doc or .docx file format. (optional)
     - parameter imageResolutionX: (query) Image resolution X. (optional)
     - parameter imageResolutionY: (query) Image resolution Y. (optional)
     - parameter maxDistanceBetweenTextLines: (query) Max distance between text lines. (optional)
     - parameter mode: (query) Allows to control how a PDF document is converted into a word processing document. (optional)
     - parameter recognizeBullets: (query) Recognize bullets. (optional)
     - parameter relativeHorizontalProximity: (query) Relative horizontal proximity. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToDocWithRequestBuilder(outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Int? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/doc"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "addReturnToLineEnd": addReturnToLineEnd, 
            "format": format, 
            "imageResolutionX": imageResolutionX?.encodeToJSON(), 
            "imageResolutionY": imageResolutionY?.encodeToJSON(), 
            "maxDistanceBetweenTextLines": maxDistanceBetweenTextLines?.encodeToJSON(), 
            "mode": mode, 
            "recognizeBullets": recognizeBullets, 
            "relativeHorizontalProximity": relativeHorizontalProximity
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) ??roperty tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToEpub(outPath: String, contentRecognitionMode: String? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToEpubWithRequestBuilder(outPath: outPath, contentRecognitionMode: contentRecognitionMode, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
     - PUT /pdf/convert/epub
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) ??roperty tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToEpubWithRequestBuilder(outPath: String, contentRecognitionMode: String? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/epub"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "contentRecognitionMode": contentRecognitionMode
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to Html format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.html) 
     - parameter additionalMarginWidthInPoints: (query) Defines width of margin that will be forcibly left around that output HTML-areas. (optional)
     - parameter compressSvgGraphicsIfAny: (query) The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. (optional)
     - parameter convertMarkedContentToLayers: (query) If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. (optional)
     - parameter defaultFontName: (query) Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. (optional)
     - parameter documentType: (query) Result document type. (optional)
     - parameter fixedLayout: (query) The value indicating whether that HTML is created as fixed layout. (optional)
     - parameter imageResolution: (query) Resolution for image rendering. (optional)
     - parameter minimalLineWidth: (query) This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. (optional)
     - parameter preventGlyphsGrouping: (query) This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. (optional)
     - parameter splitCssIntoPages: (query) When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. (optional)
     - parameter splitIntoPages: (query) The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. (optional)
     - parameter useZOrder: (query) If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. (optional)
     - parameter antialiasingProcessing: (query) The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. (optional)
     - parameter cssClassNamesPrefix: (query) When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. (optional)
     - parameter explicitListOfSavedPages: (query) With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. (optional)
     - parameter fontEncodingStrategy: (query) Defines encoding special rule to tune PDF decoding for current document. (optional)
     - parameter fontSavingMode: (query) Defines font saving mode that will be used during saving of PDF to desirable format. (optional)
     - parameter htmlMarkupGenerationMode: (query) Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. (optional)
     - parameter lettersPositioningMethod: (query) The mode of positioning of letters in words in result HTML. (optional)
     - parameter pagesFlowTypeDependsOnViewersScreenSize: (query) If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. (optional)
     - parameter partsEmbeddingMode: (query) It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. (optional)
     - parameter rasterImagesSavingMode: (query) Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. (optional)
     - parameter removeEmptyAreasOnTopAndBottom: (query) Defines whether in created HTML will be removed top and bottom empty area without any content (if any). (optional)
     - parameter saveShadowedTextsAsTransparentTexts: (query) Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). (optional)
     - parameter saveTransparentTexts: (query) Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. (optional)
     - parameter specialFolderForAllImages: (query) The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter specialFolderForSvgImages: (query) The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter trySaveTextUnderliningAndStrikeoutingInCss: (query) PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToHtml(outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToHtmlWithRequestBuilder(outPath: outPath, additionalMarginWidthInPoints: additionalMarginWidthInPoints, compressSvgGraphicsIfAny: compressSvgGraphicsIfAny, convertMarkedContentToLayers: convertMarkedContentToLayers, defaultFontName: defaultFontName, documentType: documentType, fixedLayout: fixedLayout, imageResolution: imageResolution, minimalLineWidth: minimalLineWidth, preventGlyphsGrouping: preventGlyphsGrouping, splitCssIntoPages: splitCssIntoPages, splitIntoPages: splitIntoPages, useZOrder: useZOrder, antialiasingProcessing: antialiasingProcessing, cssClassNamesPrefix: cssClassNamesPrefix, explicitListOfSavedPages: explicitListOfSavedPages, fontEncodingStrategy: fontEncodingStrategy, fontSavingMode: fontSavingMode, htmlMarkupGenerationMode: htmlMarkupGenerationMode, lettersPositioningMethod: lettersPositioningMethod, pagesFlowTypeDependsOnViewersScreenSize: pagesFlowTypeDependsOnViewersScreenSize, partsEmbeddingMode: partsEmbeddingMode, rasterImagesSavingMode: rasterImagesSavingMode, removeEmptyAreasOnTopAndBottom: removeEmptyAreasOnTopAndBottom, saveShadowedTextsAsTransparentTexts: saveShadowedTextsAsTransparentTexts, saveTransparentTexts: saveTransparentTexts, specialFolderForAllImages: specialFolderForAllImages, specialFolderForSvgImages: specialFolderForSvgImages, trySaveTextUnderliningAndStrikeoutingInCss: trySaveTextUnderliningAndStrikeoutingInCss, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to Html format and uploads resulting file to storage.
     - PUT /pdf/convert/html
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.html) 
     - parameter additionalMarginWidthInPoints: (query) Defines width of margin that will be forcibly left around that output HTML-areas. (optional)
     - parameter compressSvgGraphicsIfAny: (query) The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. (optional)
     - parameter convertMarkedContentToLayers: (query) If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. (optional)
     - parameter defaultFontName: (query) Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. (optional)
     - parameter documentType: (query) Result document type. (optional)
     - parameter fixedLayout: (query) The value indicating whether that HTML is created as fixed layout. (optional)
     - parameter imageResolution: (query) Resolution for image rendering. (optional)
     - parameter minimalLineWidth: (query) This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. (optional)
     - parameter preventGlyphsGrouping: (query) This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. (optional)
     - parameter splitCssIntoPages: (query) When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. (optional)
     - parameter splitIntoPages: (query) The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. (optional)
     - parameter useZOrder: (query) If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. (optional)
     - parameter antialiasingProcessing: (query) The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. (optional)
     - parameter cssClassNamesPrefix: (query) When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. (optional)
     - parameter explicitListOfSavedPages: (query) With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. (optional)
     - parameter fontEncodingStrategy: (query) Defines encoding special rule to tune PDF decoding for current document. (optional)
     - parameter fontSavingMode: (query) Defines font saving mode that will be used during saving of PDF to desirable format. (optional)
     - parameter htmlMarkupGenerationMode: (query) Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. (optional)
     - parameter lettersPositioningMethod: (query) The mode of positioning of letters in words in result HTML. (optional)
     - parameter pagesFlowTypeDependsOnViewersScreenSize: (query) If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. (optional)
     - parameter partsEmbeddingMode: (query) It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. (optional)
     - parameter rasterImagesSavingMode: (query) Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. (optional)
     - parameter removeEmptyAreasOnTopAndBottom: (query) Defines whether in created HTML will be removed top and bottom empty area without any content (if any). (optional)
     - parameter saveShadowedTextsAsTransparentTexts: (query) Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). (optional)
     - parameter saveTransparentTexts: (query) Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. (optional)
     - parameter specialFolderForAllImages: (query) The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter specialFolderForSvgImages: (query) The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter trySaveTextUnderliningAndStrikeoutingInCss: (query) PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToHtmlWithRequestBuilder(outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/html"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "additionalMarginWidthInPoints": additionalMarginWidthInPoints?.encodeToJSON(), 
            "compressSvgGraphicsIfAny": compressSvgGraphicsIfAny, 
            "convertMarkedContentToLayers": convertMarkedContentToLayers, 
            "defaultFontName": defaultFontName, 
            "documentType": documentType, 
            "fixedLayout": fixedLayout, 
            "imageResolution": imageResolution?.encodeToJSON(), 
            "minimalLineWidth": minimalLineWidth?.encodeToJSON(), 
            "preventGlyphsGrouping": preventGlyphsGrouping, 
            "splitCssIntoPages": splitCssIntoPages, 
            "splitIntoPages": splitIntoPages, 
            "useZOrder": useZOrder, 
            "antialiasingProcessing": antialiasingProcessing, 
            "cssClassNamesPrefix": cssClassNamesPrefix, 
            "explicitListOfSavedPages": explicitListOfSavedPages, 
            "fontEncodingStrategy": fontEncodingStrategy, 
            "fontSavingMode": fontSavingMode, 
            "htmlMarkupGenerationMode": htmlMarkupGenerationMode, 
            "lettersPositioningMethod": lettersPositioningMethod, 
            "pagesFlowTypeDependsOnViewersScreenSize": pagesFlowTypeDependsOnViewersScreenSize, 
            "partsEmbeddingMode": partsEmbeddingMode, 
            "rasterImagesSavingMode": rasterImagesSavingMode, 
            "removeEmptyAreasOnTopAndBottom": removeEmptyAreasOnTopAndBottom, 
            "saveShadowedTextsAsTransparentTexts": saveShadowedTextsAsTransparentTexts, 
            "saveTransparentTexts": saveTransparentTexts, 
            "specialFolderForAllImages": specialFolderForAllImages, 
            "specialFolderForSvgImages": specialFolderForSvgImages, 
            "trySaveTextUnderliningAndStrikeoutingInCss": trySaveTextUnderliningAndStrikeoutingInCss
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToLaTeX(outPath: String, pagesCount: Int? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToLaTeXWithRequestBuilder(outPath: outPath, pagesCount: pagesCount, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
     - PUT /pdf/convert/latex
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToLaTeXWithRequestBuilder(outPath: String, pagesCount: Int? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/latex"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "pagesCount": pagesCount?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToMobiXml(outPath: String, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToMobiXmlWithRequestBuilder(outPath: outPath, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
     - PUT /pdf/convert/mobixml
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToMobiXmlWithRequestBuilder(outPath: String, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/mobixml"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToPdfA(outPath: String, type: String, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToPdfAWithRequestBuilder(outPath: outPath, type: type, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
     - PUT /pdf/convert/pdfa
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToPdfAWithRequestBuilder(outPath: String, type: String, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/pdfa"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "type": type
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToPptx(outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToPptxWithRequestBuilder(outPath: outPath, separateImages: separateImages, slidesAsImages: slidesAsImages, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
     - PUT /pdf/convert/pptx
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToPptxWithRequestBuilder(outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/pptx"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "separateImages": separateImages, 
            "slidesAsImages": slidesAsImages
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToSvg(outPath: String, compressOutputToZipArchive: Bool? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToSvgWithRequestBuilder(outPath: outPath, compressOutputToZipArchive: compressOutputToZipArchive, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
     - PUT /pdf/convert/svg
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToSvgWithRequestBuilder(outPath: String, compressOutputToZipArchive: Bool? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/svg"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "compressOutputToZipArchive": compressOutputToZipArchive
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tiff) 
     - parameter brightness: (query) Image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToTiff(outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToTiffWithRequestBuilder(outPath: outPath, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
     - PUT /pdf/convert/tiff
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tiff) 
     - parameter brightness: (query) Image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToTiffWithRequestBuilder(outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/tiff"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "brightness": brightness, 
            "compression": compression, 
            "colorDepth": colorDepth, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXls(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXlsWithRequestBuilder(outPath: outPath, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
     - PUT /pdf/convert/xls
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToXlsWithRequestBuilder(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/xls"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "insertBlankColumnAtFirst": insertBlankColumnAtFirst, 
            "minimizeTheNumberOfWorksheets": minimizeTheNumberOfWorksheets, 
            "scaleFactor": scaleFactor, 
            "uniformWorksheets": uniformWorksheets
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XML format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXml(outPath: String, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXmlWithRequestBuilder(outPath: outPath, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XML format and uploads resulting file to storage.
     - PUT /pdf/convert/xml
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToXmlWithRequestBuilder(outPath: String, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/xml"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXps(outPath: String, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXpsWithRequestBuilder(outPath: outPath, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
     - PUT /pdf/convert/xps
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInRequestToXpsWithRequestBuilder(outPath: String, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/xps"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter addReturnToLineEnd: (query) Add return to line end. (optional)
     - parameter format: (query) Allows to specify .doc or .docx file format. (optional)
     - parameter imageResolutionX: (query) Image resolution X. (optional)
     - parameter imageResolutionY: (query) Image resolution Y. (optional)
     - parameter maxDistanceBetweenTextLines: (query) Max distance between text lines. (optional)
     - parameter mode: (query) Allows to control how a PDF document is converted into a word processing document. (optional)
     - parameter recognizeBullets: (query) Recognize bullets. (optional)
     - parameter relativeHorizontalProximity: (query) Relative horizontal proximity. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToDoc(name: String, outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Int? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToDocWithRequestBuilder(name: name, outPath: outPath, addReturnToLineEnd: addReturnToLineEnd, format: format, imageResolutionX: imageResolutionX, imageResolutionY: imageResolutionY, maxDistanceBetweenTextLines: maxDistanceBetweenTextLines, mode: mode, recognizeBullets: recognizeBullets, relativeHorizontalProximity: relativeHorizontalProximity, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/doc
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter addReturnToLineEnd: (query) Add return to line end. (optional)
     - parameter format: (query) Allows to specify .doc or .docx file format. (optional)
     - parameter imageResolutionX: (query) Image resolution X. (optional)
     - parameter imageResolutionY: (query) Image resolution Y. (optional)
     - parameter maxDistanceBetweenTextLines: (query) Max distance between text lines. (optional)
     - parameter mode: (query) Allows to control how a PDF document is converted into a word processing document. (optional)
     - parameter recognizeBullets: (query) Recognize bullets. (optional)
     - parameter relativeHorizontalProximity: (query) Relative horizontal proximity. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToDocWithRequestBuilder(name: String, outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Int? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/doc"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "addReturnToLineEnd": addReturnToLineEnd, 
            "format": format, 
            "imageResolutionX": imageResolutionX?.encodeToJSON(), 
            "imageResolutionY": imageResolutionY?.encodeToJSON(), 
            "maxDistanceBetweenTextLines": maxDistanceBetweenTextLines?.encodeToJSON(), 
            "mode": mode, 
            "recognizeBullets": recognizeBullets, 
            "relativeHorizontalProximity": relativeHorizontalProximity, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) ??roperty tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToEpub(name: String, outPath: String, contentRecognitionMode: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToEpubWithRequestBuilder(name: name, outPath: outPath, contentRecognitionMode: contentRecognitionMode, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/epub
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) ??roperty tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToEpubWithRequestBuilder(name: String, outPath: String, contentRecognitionMode: String? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/epub"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "contentRecognitionMode": contentRecognitionMode, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to Html format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.html) 
     - parameter additionalMarginWidthInPoints: (query) Defines width of margin that will be forcibly left around that output HTML-areas. (optional)
     - parameter compressSvgGraphicsIfAny: (query) The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. (optional)
     - parameter convertMarkedContentToLayers: (query) If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. (optional)
     - parameter defaultFontName: (query) Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. (optional)
     - parameter documentType: (query) Result document type. (optional)
     - parameter fixedLayout: (query) The value indicating whether that HTML is created as fixed layout. (optional)
     - parameter imageResolution: (query) Resolution for image rendering. (optional)
     - parameter minimalLineWidth: (query) This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. (optional)
     - parameter preventGlyphsGrouping: (query) This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. (optional)
     - parameter splitCssIntoPages: (query) When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. (optional)
     - parameter splitIntoPages: (query) The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. (optional)
     - parameter useZOrder: (query) If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. (optional)
     - parameter antialiasingProcessing: (query) The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. (optional)
     - parameter cssClassNamesPrefix: (query) When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. (optional)
     - parameter explicitListOfSavedPages: (query) With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. (optional)
     - parameter fontEncodingStrategy: (query) Defines encoding special rule to tune PDF decoding for current document. (optional)
     - parameter fontSavingMode: (query) Defines font saving mode that will be used during saving of PDF to desirable format. (optional)
     - parameter htmlMarkupGenerationMode: (query) Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. (optional)
     - parameter lettersPositioningMethod: (query) The mode of positioning of letters in words in result HTML. (optional)
     - parameter pagesFlowTypeDependsOnViewersScreenSize: (query) If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. (optional)
     - parameter partsEmbeddingMode: (query) It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. (optional)
     - parameter rasterImagesSavingMode: (query) Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. (optional)
     - parameter removeEmptyAreasOnTopAndBottom: (query) Defines whether in created HTML will be removed top and bottom empty area without any content (if any). (optional)
     - parameter saveShadowedTextsAsTransparentTexts: (query) Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). (optional)
     - parameter saveTransparentTexts: (query) Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. (optional)
     - parameter specialFolderForAllImages: (query) The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter specialFolderForSvgImages: (query) The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter trySaveTextUnderliningAndStrikeoutingInCss: (query) PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToHtml(name: String, outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToHtmlWithRequestBuilder(name: name, outPath: outPath, additionalMarginWidthInPoints: additionalMarginWidthInPoints, compressSvgGraphicsIfAny: compressSvgGraphicsIfAny, convertMarkedContentToLayers: convertMarkedContentToLayers, defaultFontName: defaultFontName, documentType: documentType, fixedLayout: fixedLayout, imageResolution: imageResolution, minimalLineWidth: minimalLineWidth, preventGlyphsGrouping: preventGlyphsGrouping, splitCssIntoPages: splitCssIntoPages, splitIntoPages: splitIntoPages, useZOrder: useZOrder, antialiasingProcessing: antialiasingProcessing, cssClassNamesPrefix: cssClassNamesPrefix, explicitListOfSavedPages: explicitListOfSavedPages, fontEncodingStrategy: fontEncodingStrategy, fontSavingMode: fontSavingMode, htmlMarkupGenerationMode: htmlMarkupGenerationMode, lettersPositioningMethod: lettersPositioningMethod, pagesFlowTypeDependsOnViewersScreenSize: pagesFlowTypeDependsOnViewersScreenSize, partsEmbeddingMode: partsEmbeddingMode, rasterImagesSavingMode: rasterImagesSavingMode, removeEmptyAreasOnTopAndBottom: removeEmptyAreasOnTopAndBottom, saveShadowedTextsAsTransparentTexts: saveShadowedTextsAsTransparentTexts, saveTransparentTexts: saveTransparentTexts, specialFolderForAllImages: specialFolderForAllImages, specialFolderForSvgImages: specialFolderForSvgImages, trySaveTextUnderliningAndStrikeoutingInCss: trySaveTextUnderliningAndStrikeoutingInCss, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to Html format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/html
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.html) 
     - parameter additionalMarginWidthInPoints: (query) Defines width of margin that will be forcibly left around that output HTML-areas. (optional)
     - parameter compressSvgGraphicsIfAny: (query) The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. (optional)
     - parameter convertMarkedContentToLayers: (query) If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. (optional)
     - parameter defaultFontName: (query) Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. (optional)
     - parameter documentType: (query) Result document type. (optional)
     - parameter fixedLayout: (query) The value indicating whether that HTML is created as fixed layout. (optional)
     - parameter imageResolution: (query) Resolution for image rendering. (optional)
     - parameter minimalLineWidth: (query) This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. (optional)
     - parameter preventGlyphsGrouping: (query) This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. (optional)
     - parameter splitCssIntoPages: (query) When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. (optional)
     - parameter splitIntoPages: (query) The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. (optional)
     - parameter useZOrder: (query) If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. (optional)
     - parameter antialiasingProcessing: (query) The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. (optional)
     - parameter cssClassNamesPrefix: (query) When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. (optional)
     - parameter explicitListOfSavedPages: (query) With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. (optional)
     - parameter fontEncodingStrategy: (query) Defines encoding special rule to tune PDF decoding for current document. (optional)
     - parameter fontSavingMode: (query) Defines font saving mode that will be used during saving of PDF to desirable format. (optional)
     - parameter htmlMarkupGenerationMode: (query) Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. (optional)
     - parameter lettersPositioningMethod: (query) The mode of positioning of letters in words in result HTML. (optional)
     - parameter pagesFlowTypeDependsOnViewersScreenSize: (query) If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. (optional)
     - parameter partsEmbeddingMode: (query) It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. (optional)
     - parameter rasterImagesSavingMode: (query) Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. (optional)
     - parameter removeEmptyAreasOnTopAndBottom: (query) Defines whether in created HTML will be removed top and bottom empty area without any content (if any). (optional)
     - parameter saveShadowedTextsAsTransparentTexts: (query) Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). (optional)
     - parameter saveTransparentTexts: (query) Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. (optional)
     - parameter specialFolderForAllImages: (query) The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter specialFolderForSvgImages: (query) The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. (optional)
     - parameter trySaveTextUnderliningAndStrikeoutingInCss: (query) PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToHtmlWithRequestBuilder(name: String, outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/html"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "additionalMarginWidthInPoints": additionalMarginWidthInPoints?.encodeToJSON(), 
            "compressSvgGraphicsIfAny": compressSvgGraphicsIfAny, 
            "convertMarkedContentToLayers": convertMarkedContentToLayers, 
            "defaultFontName": defaultFontName, 
            "documentType": documentType, 
            "fixedLayout": fixedLayout, 
            "imageResolution": imageResolution?.encodeToJSON(), 
            "minimalLineWidth": minimalLineWidth?.encodeToJSON(), 
            "preventGlyphsGrouping": preventGlyphsGrouping, 
            "splitCssIntoPages": splitCssIntoPages, 
            "splitIntoPages": splitIntoPages, 
            "useZOrder": useZOrder, 
            "antialiasingProcessing": antialiasingProcessing, 
            "cssClassNamesPrefix": cssClassNamesPrefix, 
            "explicitListOfSavedPages": explicitListOfSavedPages, 
            "fontEncodingStrategy": fontEncodingStrategy, 
            "fontSavingMode": fontSavingMode, 
            "htmlMarkupGenerationMode": htmlMarkupGenerationMode, 
            "lettersPositioningMethod": lettersPositioningMethod, 
            "pagesFlowTypeDependsOnViewersScreenSize": pagesFlowTypeDependsOnViewersScreenSize, 
            "partsEmbeddingMode": partsEmbeddingMode, 
            "rasterImagesSavingMode": rasterImagesSavingMode, 
            "removeEmptyAreasOnTopAndBottom": removeEmptyAreasOnTopAndBottom, 
            "saveShadowedTextsAsTransparentTexts": saveShadowedTextsAsTransparentTexts, 
            "saveTransparentTexts": saveTransparentTexts, 
            "specialFolderForAllImages": specialFolderForAllImages, 
            "specialFolderForSvgImages": specialFolderForSvgImages, 
            "trySaveTextUnderliningAndStrikeoutingInCss": trySaveTextUnderliningAndStrikeoutingInCss, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToLaTeX(name: String, outPath: String, pagesCount: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToLaTeXWithRequestBuilder(name: name, outPath: outPath, pagesCount: pagesCount, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/latex
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToLaTeXWithRequestBuilder(name: String, outPath: String, pagesCount: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/latex"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "pagesCount": pagesCount?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToMobiXml(name: String, outPath: String, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToMobiXmlWithRequestBuilder(name: name, outPath: outPath, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/mobixml
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToMobiXmlWithRequestBuilder(name: String, outPath: String, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/mobixml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToPdfA(name: String, outPath: String, type: String, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToPdfAWithRequestBuilder(name: name, outPath: outPath, type: type, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/pdfa
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToPdfAWithRequestBuilder(name: String, outPath: String, type: String, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/pdfa"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "type": type, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToPptx(name: String, outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToPptxWithRequestBuilder(name: name, outPath: outPath, separateImages: separateImages, slidesAsImages: slidesAsImages, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/pptx
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToPptxWithRequestBuilder(name: String, outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/pptx"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "separateImages": separateImages, 
            "slidesAsImages": slidesAsImages, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToSvg(name: String, outPath: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToSvgWithRequestBuilder(name: name, outPath: outPath, compressOutputToZipArchive: compressOutputToZipArchive, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/svg
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToSvgWithRequestBuilder(name: String, outPath: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/svg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "compressOutputToZipArchive": compressOutputToZipArchive, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tiff) 
     - parameter brightness: (query) Image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToTiff(name: String, outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToTiffWithRequestBuilder(name: name, outPath: outPath, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/tiff
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tiff) 
     - parameter brightness: (query) Image brightness. (optional)
     - parameter compression: (query) Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. (optional)
     - parameter colorDepth: (query) Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. (optional)
     - parameter leftMargin: (query) Left image margin. (optional)
     - parameter rightMargin: (query) Right image margin. (optional)
     - parameter topMargin: (query) Top image margin. (optional)
     - parameter bottomMargin: (query) Bottom image margin. (optional)
     - parameter orientation: (query) Image orientation. Possible values are: None, Landscape, Portait. (optional)
     - parameter skipBlankPages: (query) Skip blank pages flag. (optional)
     - parameter width: (query) Image width. (optional)
     - parameter height: (query) Image height. (optional)
     - parameter xResolution: (query) Horizontal resolution. (optional)
     - parameter yResolution: (query) Vertical resolution. (optional)
     - parameter pageIndex: (query) Start page to export. (optional)
     - parameter pageCount: (query) Number of pages to export. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToTiffWithRequestBuilder(name: String, outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "brightness": brightness, 
            "compression": compression, 
            "colorDepth": colorDepth, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON(), 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXls(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXlsWithRequestBuilder(name: name, outPath: outPath, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xls
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToXlsWithRequestBuilder(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xls"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "insertBlankColumnAtFirst": insertBlankColumnAtFirst, 
            "minimizeTheNumberOfWorksheets": minimizeTheNumberOfWorksheets, 
            "scaleFactor": scaleFactor, 
            "uniformWorksheets": uniformWorksheets, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XML format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXml(name: String, outPath: String, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXmlWithRequestBuilder(name: name, outPath: outPath, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XML format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xml
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToXmlWithRequestBuilder(name: String, outPath: String, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXps(name: String, outPath: String, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXpsWithRequestBuilder(name: name, outPath: outPath, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xps
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPdfInStorageToXpsWithRequestBuilder(name: String, outPath: String, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update privilege document.
     
     - parameter name: (path) The document name. 
     - parameter privileges: (body) Document privileges.  (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPrivileges(name: String, privileges: DocumentPrivilege? = nil, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPrivilegesWithRequestBuilder(name: name, privileges: privileges, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update privilege document.
     - PUT /pdf/{name}/privileges
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter privileges: (body) Document privileges.  (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPrivilegesWithRequestBuilder(name: String, privileges: DocumentPrivilege? = nil, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/privileges"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: privileges)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPsInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPsInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/ps
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putPsInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/ps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create searchable PDF document. Generate OCR layer for images in input PDF document.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter lang: (query) language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSearchableDocument(name: String, storage: String? = nil, folder: String? = nil, lang: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSearchableDocumentWithRequestBuilder(name: name, storage: storage, folder: folder, lang: lang).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Create searchable PDF document. Generate OCR layer for images in input PDF document.
     - PUT /pdf/{name}/ocr
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter lang: (query) language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus  (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putSearchableDocumentWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil, lang: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/ocr"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder, 
            "lang": lang
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add/update document property.
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter property: (body)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetProperty(name: String, propertyName: String, property: DocumentProperty? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertyResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSetPropertyWithRequestBuilder(name: name, propertyName: propertyName, property: property, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add/update document property.
     - PUT /pdf/{name}/documentproperties/{propertyName}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter property: (body)  (optional)
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<DocumentPropertyResponse> 
     */
    open class func putSetPropertyWithRequestBuilder(name: String, propertyName: String, property: DocumentProperty? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPropertyResponse> {
        var pathUrl = "/pdf/{name}/documentproperties/{propertyName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{propertyName}", with: "\(propertyName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: property)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentPropertyResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.svg) 
     - parameter adjustPageSize: (query) Adjust page size (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSvgInStorageToPdf(name: String, srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSvgInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, adjustPageSize: adjustPageSize, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/svg
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.svg) 
     - parameter adjustPageSize: (query) Adjust page size (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putSvgInStorageToPdfWithRequestBuilder(name: String, srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/svg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "adjustPageSize": adjustPageSize, 
            "height": height, 
            "width": width, 
            "isLandscape": isLandscape, 
            "marginLeft": marginLeft, 
            "marginBottom": marginBottom, 
            "marginRight": marginRight, 
            "marginTop": marginTop, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update field.
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The name of a field to be updated. 
     - parameter field: (body) with the field data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateField(name: String, fieldName: String, field: Field? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putUpdateFieldWithRequestBuilder(name: name, fieldName: fieldName, field: field, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update field.
     - PUT /pdf/{name}/fields/{fieldName}
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The name of a field to be updated. 
     - parameter field: (body) with the field data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FieldResponse> 
     */
    open class func putUpdateFieldWithRequestBuilder(name: String, fieldName: String, field: Field? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FieldResponse> {
        var pathUrl = "/pdf/{name}/fields/{fieldName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{fieldName}", with: "\(fieldName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: field)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FieldResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update fields.
     
     - parameter name: (path) The document name. 
     - parameter fields: (body) with the fields data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateFields(name: String, fields: Fields? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putUpdateFieldsWithRequestBuilder(name: name, fields: fields, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields.
     - PUT /pdf/{name}/fields
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter fields: (body) with the fields data. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FieldsResponse> 
     */
    open class func putUpdateFieldsWithRequestBuilder(name: String, fields: Fields? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FieldsResponse> {
        var pathUrl = "/pdf/{name}/fields"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fields)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FieldsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert web page to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter url: (query) Source url 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putWebInStorageToPdf(name: String, url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putWebInStorageToPdfWithRequestBuilder(name: name, url: url, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert web page to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/web
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter url: (query) Source url 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putWebInStorageToPdfWithRequestBuilder(name: String, url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/web"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "url": url, 
            "height": height, 
            "width": width, 
            "isLandscape": isLandscape, 
            "marginLeft": marginLeft, 
            "marginBottom": marginBottom, 
            "marginRight": marginRight, 
            "marginTop": marginTop, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXfaPdfInRequestToAcroForm(outPath: String, file: URL? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXfaPdfInRequestToAcroFormWithRequestBuilder(outPath: outPath, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
     - PUT /pdf/convert/xfatoacroform
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putXfaPdfInRequestToAcroFormWithRequestBuilder(outPath: String, file: URL? = nil) -> RequestBuilder<SaaSposeResponse> {
        let pathUrl = "/pdf/convert/xfatoacroform"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXfaPdfInStorageToAcroForm(name: String, outPath: String, folder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXfaPdfInStorageToAcroFormWithRequestBuilder(name: name, outPath: outPath, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xfatoacroform
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putXfaPdfInStorageToAcroFormWithRequestBuilder(name: String, outPath: String, folder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xfatoacroform"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXmlInStorageToPdf(name: String, srcPath: String, xslFilePath: String? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXmlInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, xslFilePath: xslFilePath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/xml
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putXmlInStorageToPdfWithRequestBuilder(name: String, srcPath: String, xslFilePath: String? = nil, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "xslFilePath": xslFilePath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXpsInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXpsInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/xps
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putXpsInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/xps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xpsfo) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXslFoInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, completion: @escaping ((_ data: SaaSposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXslFoInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/xslfo
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : { }
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xpsfo) 
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<SaaSposeResponse> 
     */
    open class func putXslFoInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil) -> RequestBuilder<SaaSposeResponse> {
        var pathUrl = "/pdf/{name}/create/xslfo"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<SaaSposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
