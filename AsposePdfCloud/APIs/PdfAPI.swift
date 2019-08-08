/**
 *
 *   Copyright (c) 2019 Aspose.PDF Cloud
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
     Copy file
     
     - parameter srcPath: (path) Source file path e.g. &#39;/folder/file.ext&#39; 
     - parameter destPath: (query) Destination file path 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)
     - parameter versionId: (query) File version ID to copy (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFile(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            copyFileWithRequestBuilder(srcPath: srcPath, destPath: destPath, srcStorageName: srcStorageName, destStorageName: destStorageName, versionId: versionId).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Copy file
     - PUT /pdf/storage/file/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter srcPath: (path) Source file path e.g. &#39;/folder/file.ext&#39; 
     - parameter destPath: (query) Destination file path 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)
     - parameter versionId: (query) File version ID to copy (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func copyFileWithRequestBuilder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, versionId: String? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/file/copy/{srcPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{srcPath}", with: "\(srcPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName, 
            "versionId": versionId
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Copy folder
     
     - parameter srcPath: (path) Source folder path e.g. &#39;/src&#39; 
     - parameter destPath: (query) Destination folder path e.g. &#39;/dst&#39; 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFolder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            copyFolderWithRequestBuilder(srcPath: srcPath, destPath: destPath, srcStorageName: srcStorageName, destStorageName: destStorageName).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Copy folder
     - PUT /pdf/storage/folder/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter srcPath: (path) Source folder path e.g. &#39;/src&#39; 
     - parameter destPath: (query) Destination folder path e.g. &#39;/dst&#39; 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func copyFolderWithRequestBuilder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/folder/copy/{srcPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{srcPath}", with: "\(srcPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create the folder
     
     - parameter path: (path) Folder path to create e.g. &#39;folder_1/folder_2/&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createFolder(path: String, storageName: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            createFolderWithRequestBuilder(path: path, storageName: storageName).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Create the folder
     - PUT /pdf/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter path: (path) Folder path to create e.g. &#39;folder_1/folder_2/&#39; 
     - parameter storageName: (query) Storage name (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func createFolderWithRequestBuilder(path: String, storageName: String? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/folder/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document annotation by ID
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document annotation by ID
     - DELETE /pdf/{name}/annotations/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document bookmark by ID.
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBookmark(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteBookmarkWithRequestBuilder(name: name, bookmarkPath: bookmarkPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document bookmark by ID.
     - DELETE /pdf/{name}/bookmarks/bookmark/{bookmarkPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteBookmarkWithRequestBuilder(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/bookmark/{bookmarkPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{bookmarkPath}", with: "\(bookmarkPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all annotations from the document
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteDocumentAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all annotations from the document
     - DELETE /pdf/{name}/annotations
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteDocumentAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all document bookmarks.
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentBookmarks(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteDocumentBookmarksWithRequestBuilder(name: name, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all document bookmarks.
     - DELETE /pdf/{name}/bookmarks/tree
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteDocumentBookmarksWithRequestBuilder(name: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/tree"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all link annotations from the document
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentLinkAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteDocumentLinkAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all link annotations from the document
     - DELETE /pdf/{name}/links
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteDocumentLinkAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/links"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all stamps from the document
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentStamps(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteDocumentStampsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all stamps from the document
     - DELETE /pdf/{name}/stamps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteDocumentStampsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/stamps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all tables from the document
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentTables(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteDocumentTablesWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all tables from the document
     - DELETE /pdf/{name}/tables
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteDocumentTablesWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/tables"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document field by name.
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name/ 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteField(name: String, fieldName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name/ 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteFieldWithRequestBuilder(name: String, fieldName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete file
     
     - parameter path: (path) File path e.g. &#39;/folder/file.ext&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter versionId: (query) File version ID to delete (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFile(path: String, storageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            deleteFileWithRequestBuilder(path: path, storageName: storageName, versionId: versionId).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Delete file
     - DELETE /pdf/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter path: (path) File path e.g. &#39;/folder/file.ext&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter versionId: (query) File version ID to delete (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFileWithRequestBuilder(path: String, storageName: String? = nil, versionId: String? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/file/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName, 
            "versionId": versionId
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete folder
     
     - parameter path: (path) Folder path e.g. &#39;/folder&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter recursive: (query) Enable to delete folders, subfolders and files (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFolder(path: String, storageName: String? = nil, recursive: Bool? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            deleteFolderWithRequestBuilder(path: path, storageName: storageName, recursive: recursive).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Delete folder
     - DELETE /pdf/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter path: (path) Folder path e.g. &#39;/folder&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter recursive: (query) Enable to delete folders, subfolders and files (optional, default to false)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFolderWithRequestBuilder(path: String, storageName: String? = nil, recursive: Bool? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/folder/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName, 
            "recursive": recursive
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete image from document page.
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteImage(name: String, imageId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteImageWithRequestBuilder(name: name, imageId: imageId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete image from document page.
     - DELETE /pdf/{name}/images/{imageId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteImageWithRequestBuilder(name: String, imageId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document page link annotation by ID
     
     - parameter name: (path) The document name. 
     - parameter linkId: (path) The link ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteLinkAnnotation(name: String, linkId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteLinkAnnotationWithRequestBuilder(name: name, linkId: linkId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document page link annotation by ID
     - DELETE /pdf/{name}/links/{linkId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter linkId: (path) The link ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteLinkAnnotationWithRequestBuilder(name: String, linkId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/links/{linkId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{linkId}", with: "\(linkId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
    open class func deletePage(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePageWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all annotations from the page
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePageAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePageAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all annotations from the page
     - DELETE /pdf/{name}/pages/{pageNumber}/annotations
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePageAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all link annotations from the page
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePageLinkAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePageLinkAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all link annotations from the page
     - DELETE /pdf/{name}/pages/{pageNumber}/links
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePageLinkAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all stamps from the page
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePageStamps(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePageStampsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all stamps from the page
     - DELETE /pdf/{name}/pages/{pageNumber}/stamps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePageStampsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/stamps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete all tables from the page
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePageTables(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deletePageTablesWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete all tables from the page
     - DELETE /pdf/{name}/pages/{pageNumber}/tables
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePageTablesWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/tables"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete custom document properties.
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProperties(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePropertiesWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/documentproperties"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
    open class func deleteProperty(name: String, propertyName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deletePropertyWithRequestBuilder(name: String, propertyName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document stamp by ID
     
     - parameter name: (path) The document name. 
     - parameter stampId: (path) The stamp ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteStamp(name: String, stampId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteStampWithRequestBuilder(name: name, stampId: stampId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document stamp by ID
     - DELETE /pdf/{name}/stamps/{stampId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter stampId: (path) The stamp ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteStampWithRequestBuilder(name: String, stampId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/stamps/{stampId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{stampId}", with: "\(stampId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete document table by ID
     
     - parameter name: (path) The document name. 
     - parameter tableId: (path) The table ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTable(name: String, tableId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            deleteTableWithRequestBuilder(name: name, tableId: tableId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Delete document table by ID
     - DELETE /pdf/{name}/tables/{tableId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter tableId: (path) The table ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func deleteTableWithRequestBuilder(name: String, tableId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/tables/{tableId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{tableId}", with: "\(tableId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download file
     
     - parameter path: (path) File path e.g. &#39;/folder/file.ext&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter versionId: (query) File version ID to download (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadFile(path: String, storageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            downloadFileWithRequestBuilder(path: path, storageName: storageName, versionId: versionId).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Download file
     - GET /pdf/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter path: (path) File path e.g. &#39;/folder/file.ext&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter versionId: (query) File version ID to download (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func downloadFileWithRequestBuilder(path: String, storageName: String? = nil, versionId: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/storage/file/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName, 
            "versionId": versionId
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document bookmark.
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBookmark(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarkResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getBookmarkWithRequestBuilder(name: name, bookmarkPath: bookmarkPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document bookmark.
     - GET /pdf/{name}/bookmarks/bookmark/{bookmarkPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<BookmarkResponse> 
     */
    open class func getBookmarkWithRequestBuilder(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<BookmarkResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/bookmark/{bookmarkPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{bookmarkPath}", with: "\(bookmarkPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<BookmarkResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document bookmarks node list.
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBookmarks(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarksResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getBookmarksWithRequestBuilder(name: name, bookmarkPath: bookmarkPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document bookmarks node list.
     - GET /pdf/{name}/bookmarks/list/{bookmarkPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<BookmarksResponse> 
     */
    open class func getBookmarksWithRequestBuilder(name: String, bookmarkPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<BookmarksResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/list/{bookmarkPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{bookmarkPath}", with: "\(bookmarkPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<BookmarksResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page caret annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCaretAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getCaretAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page caret annotation by ID.
     - GET /pdf/{name}/annotations/caret/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CaretAnnotationResponse> 
     */
    open class func getCaretAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CaretAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/caret/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CaretAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page circle annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCircleAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getCircleAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page circle annotation by ID.
     - GET /pdf/{name}/annotations/circle/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CircleAnnotationResponse> 
     */
    open class func getCircleAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CircleAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/circle/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CircleAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get disc usage
     
     - parameter storageName: (query) Storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDiscUsage(storageName: String? = nil, completion: @escaping ((_ data: DiscUsage?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDiscUsageWithRequestBuilder(storageName: storageName).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Get disc usage
     - GET /pdf/storage/disc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "UsedSize" : 0,
  "TotalSize" : 6
}}]
     
     - parameter storageName: (query) Storage name (optional)

     - returns: RequestBuilder<DiscUsage> 
     */
    open class func getDiscUsageWithRequestBuilder(storageName: String? = nil) -> RequestBuilder<DiscUsage> {
        let pathUrl = "/pdf/storage/disc"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName
        ])
        

        let requestBuilder: RequestBuilder<DiscUsage>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read common document info.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocument(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read common document info.
     - GET /pdf/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func getDocumentWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationsInfoResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
     - GET /pdf/{name}/annotations
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AnnotationsInfoResponse> 
     */
    open class func getDocumentAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AnnotationsInfoResponse> {
        var pathUrl = "/pdf/{name}/annotations"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AnnotationsInfoResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Read document bookmarks tree.
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentBookmarks(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarksResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentBookmarksWithRequestBuilder(name: name, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document bookmarks tree.
     - GET /pdf/{name}/bookmarks/tree
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<BookmarksResponse> 
     */
    open class func getDocumentBookmarksWithRequestBuilder(name: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<BookmarksResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/tree"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<BookmarksResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document caret annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentCaretAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentCaretAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document caret annotations.
     - GET /pdf/{name}/annotations/caret
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CaretAnnotationsResponse> 
     */
    open class func getDocumentCaretAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CaretAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/caret"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CaretAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document circle annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentCircleAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentCircleAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document circle annotations.
     - GET /pdf/{name}/annotations/circle
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CircleAnnotationsResponse> 
     */
    open class func getDocumentCircleAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CircleAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/circle"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CircleAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document FileAttachment annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentFileAttachmentAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentFileAttachmentAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document FileAttachment annotations.
     - GET /pdf/{name}/annotations/fileattachment
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FileAttachmentAnnotationsResponse> 
     */
    open class func getDocumentFileAttachmentAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FileAttachmentAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/fileattachment"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FileAttachmentAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document free text annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentFreeTextAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentFreeTextAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document free text annotations.
     - GET /pdf/{name}/annotations/freetext
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FreeTextAnnotationsResponse> 
     */
    open class func getDocumentFreeTextAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FreeTextAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/freetext"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FreeTextAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document highlight annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentHighlightAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentHighlightAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document highlight annotations.
     - GET /pdf/{name}/annotations/highlight
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<HighlightAnnotationsResponse> 
     */
    open class func getDocumentHighlightAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<HighlightAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/highlight"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<HighlightAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document ink annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentInkAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentInkAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document ink annotations.
     - GET /pdf/{name}/annotations/ink
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<InkAnnotationsResponse> 
     */
    open class func getDocumentInkAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<InkAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/ink"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<InkAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document line annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentLineAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentLineAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document line annotations.
     - GET /pdf/{name}/annotations/line
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LineAnnotationsResponse> 
     */
    open class func getDocumentLineAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LineAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/line"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LineAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document movie annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentMovieAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentMovieAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document movie annotations.
     - GET /pdf/{name}/annotations/movie
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<MovieAnnotationsResponse> 
     */
    open class func getDocumentMovieAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<MovieAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/movie"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<MovieAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document polyline annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentPolyLineAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentPolyLineAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document polyline annotations.
     - GET /pdf/{name}/annotations/polyline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolyLineAnnotationsResponse> 
     */
    open class func getDocumentPolyLineAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolyLineAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/polyline"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolyLineAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document polygon annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentPolygonAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentPolygonAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document polygon annotations.
     - GET /pdf/{name}/annotations/polygon
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolygonAnnotationsResponse> 
     */
    open class func getDocumentPolygonAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolygonAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/polygon"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolygonAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document popup annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentPopupAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentPopupAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document popup annotations.
     - GET /pdf/{name}/annotations/popup
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PopupAnnotationsResponse> 
     */
    open class func getDocumentPopupAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PopupAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/popup"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PopupAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document popup annotations by parent id.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The parent annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentPopupAnnotationsByParent(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentPopupAnnotationsByParentWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document popup annotations by parent id.
     - GET /pdf/{name}/annotations/{annotationId}/popup
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The parent annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PopupAnnotationsResponse> 
     */
    open class func getDocumentPopupAnnotationsByParentWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PopupAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/{annotationId}/popup"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PopupAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Read document redaction annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentRedactionAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentRedactionAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document redaction annotations.
     - GET /pdf/{name}/annotations/redaction
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<RedactionAnnotationsResponse> 
     */
    open class func getDocumentRedactionAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<RedactionAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/redaction"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<RedactionAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document screen annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentScreenAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentScreenAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document screen annotations.
     - GET /pdf/{name}/annotations/screen
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<ScreenAnnotationsResponse> 
     */
    open class func getDocumentScreenAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<ScreenAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/screen"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ScreenAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document sound annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentSoundAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentSoundAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document sound annotations.
     - GET /pdf/{name}/annotations/sound
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SoundAnnotationsResponse> 
     */
    open class func getDocumentSoundAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SoundAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/sound"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SoundAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document square annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentSquareAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentSquareAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document square annotations.
     - GET /pdf/{name}/annotations/square
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquareAnnotationsResponse> 
     */
    open class func getDocumentSquareAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquareAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/square"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquareAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document squiggly annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentSquigglyAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentSquigglyAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document squiggly annotations.
     - GET /pdf/{name}/annotations/squiggly
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquigglyAnnotationsResponse> 
     */
    open class func getDocumentSquigglyAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquigglyAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/squiggly"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquigglyAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document stamp annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentStampAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentStampAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document stamp annotations.
     - GET /pdf/{name}/annotations/stamp
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StampAnnotationsResponse> 
     */
    open class func getDocumentStampAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StampAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/stamp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StampAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document stamps.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentStamps(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampsInfoResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentStampsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document stamps.
     - GET /pdf/{name}/stamps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StampsInfoResponse> 
     */
    open class func getDocumentStampsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StampsInfoResponse> {
        var pathUrl = "/pdf/{name}/stamps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StampsInfoResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document StrikeOut annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentStrikeOutAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentStrikeOutAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document StrikeOut annotations.
     - GET /pdf/{name}/annotations/strikeout
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StrikeOutAnnotationsResponse> 
     */
    open class func getDocumentStrikeOutAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StrikeOutAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/strikeout"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StrikeOutAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document tables.
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentTables(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TablesRecognizedResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentTablesWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document tables.
     - GET /pdf/{name}/tables
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TablesRecognizedResponse> 
     */
    open class func getDocumentTablesWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TablesRecognizedResponse> {
        var pathUrl = "/pdf/{name}/tables"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TablesRecognizedResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document text annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentTextAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentTextAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document text annotations.
     - GET /pdf/{name}/annotations/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TextAnnotationsResponse> 
     */
    open class func getDocumentTextAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document underline annotations.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentUnderlineAnnotations(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getDocumentUnderlineAnnotationsWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document underline annotations.
     - GET /pdf/{name}/annotations/underline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<UnderlineAnnotationsResponse> 
     */
    open class func getDocumentUnderlineAnnotationsWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<UnderlineAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/annotations/underline"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<UnderlineAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEpubInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getEpubInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/epub
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getEpubInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/epub"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Export fields from from PDF in storage to FDF file.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExportFieldsFromPdfToFdfInStorage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getExportFieldsFromPdfToFdfInStorageWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Export fields from from PDF in storage to FDF file.
     - GET /pdf/{name}/export/fdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getExportFieldsFromPdfToFdfInStorageWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/export/fdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
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
     Export fields from from PDF in storage to XFDF file.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExportFieldsFromPdfToXfdfInStorage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getExportFieldsFromPdfToXfdfInStorageWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Export fields from from PDF in storage to XFDF file.
     - GET /pdf/{name}/export/xfdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getExportFieldsFromPdfToXfdfInStorageWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/export/xfdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
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
     Export fields from from PDF in storage to XML file.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExportFieldsFromPdfToXmlInStorage(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getExportFieldsFromPdfToXmlInStorageWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Export fields from from PDF in storage to XML file.
     - GET /pdf/{name}/export/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getExportFieldsFromPdfToXmlInStorageWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/export/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
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
     Get document field by name.
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name (name should be encoded). 
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The field name (name should be encoded). 
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Read document page FileAttachment annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileAttachmentAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFileAttachmentAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page FileAttachment annotation by ID.
     - GET /pdf/{name}/annotations/fileattachment/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FileAttachmentAnnotationResponse> 
     */
    open class func getFileAttachmentAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FileAttachmentAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/fileattachment/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FileAttachmentAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page FileAttachment annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileAttachmentAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFileAttachmentAnnotationDataWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page FileAttachment annotation by ID.
     - GET /pdf/{name}/annotations/fileattachment/{annotationId}/data
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getFileAttachmentAnnotationDataWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/annotations/fileattachment/{annotationId}/data"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
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
     Get file versions
     
     - parameter path: (path) File path e.g. &#39;/file.ext&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileVersions(path: String, storageName: String? = nil, completion: @escaping ((_ data: FileVersions?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFileVersionsWithRequestBuilder(path: path, storageName: storageName).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Get file versions
     - GET /pdf/storage/version/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ "", "" ]
}}]
     
     - parameter path: (path) File path e.g. &#39;/file.ext&#39; 
     - parameter storageName: (query) Storage name (optional)

     - returns: RequestBuilder<FileVersions> 
     */
    open class func getFileVersionsWithRequestBuilder(path: String, storageName: String? = nil) -> RequestBuilder<FileVersions> {
        var pathUrl = "/pdf/storage/version/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName
        ])
        

        let requestBuilder: RequestBuilder<FileVersions>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all files and folders within a folder
     
     - parameter path: (path) Folder path e.g. &#39;/folder&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFilesList(path: String, storageName: String? = nil, completion: @escaping ((_ data: FilesList?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFilesListWithRequestBuilder(path: path, storageName: storageName).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Get all files and folders within a folder
     - GET /pdf/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Value" : [ {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  }, {
    "Path" : "Path",
    "Size" : 0,
    "IsFolder" : true,
    "ModifiedDate" : "2000-01-23T04:56:07.000+00:00",
    "Name" : "Name"
  } ]
}}]
     
     - parameter path: (path) Folder path e.g. &#39;/folder&#39; 
     - parameter storageName: (query) Storage name (optional)

     - returns: RequestBuilder<FilesList> 
     */
    open class func getFilesListWithRequestBuilder(path: String, storageName: String? = nil) -> RequestBuilder<FilesList> {
        var pathUrl = "/pdf/storage/folder/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName
        ])
        

        let requestBuilder: RequestBuilder<FilesList>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page free text annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFreeTextAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getFreeTextAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page free text annotation by ID.
     - GET /pdf/{name}/annotations/freetext/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FreeTextAnnotationResponse> 
     */
    open class func getFreeTextAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FreeTextAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/freetext/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FreeTextAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page highlight annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getHighlightAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getHighlightAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page highlight annotation by ID.
     - GET /pdf/{name}/annotations/highlight/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<HighlightAnnotationResponse> 
     */
    open class func getHighlightAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<HighlightAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/highlight/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<HighlightAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert HTML file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getHtmlInStorageToPdf(srcPath: String, htmlFileName: String? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getHtmlInStorageToPdfWithRequestBuilder(srcPath: srcPath, htmlFileName: htmlFileName, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert HTML file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/html
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getHtmlInStorageToPdfWithRequestBuilder(srcPath: String, htmlFileName: String? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil) -> RequestBuilder<Data> {
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
            "marginTop": marginTop, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document image by ID.
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImage(name: String, imageId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ImageResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImageWithRequestBuilder(name: name, imageId: imageId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document image by ID.
     - GET /pdf/{name}/images/{imageId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<ImageResponse> 
     */
    open class func getImageWithRequestBuilder(name: String, imageId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<ImageResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ImageResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in GIF format
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImageExtractAsGif(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImageExtractAsGifWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in GIF format
     - GET /pdf/{name}/images/{imageId}/extract/gif
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImageExtractAsGifWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in JPEG format
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImageExtractAsJpeg(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImageExtractAsJpegWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in JPEG format
     - GET /pdf/{name}/images/{imageId}/extract/jpeg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImageExtractAsJpegWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in PNG format
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImageExtractAsPng(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImageExtractAsPngWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in PNG format
     - GET /pdf/{name}/images/{imageId}/extract/png
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImageExtractAsPngWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in TIFF format
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImageExtractAsTiff(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImageExtractAsTiffWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in TIFF format
     - GET /pdf/{name}/images/{imageId}/extract/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImageExtractAsTiffWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Update fields from FDF file in storage.
     
     - parameter name: (path) The document name. 
     - parameter fdfFilePath: (query) The Fdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImportFieldsFromFdfInStorage(name: String, fdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImportFieldsFromFdfInStorageWithRequestBuilder(name: name, fdfFilePath: fdfFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from FDF file in storage.
     - GET /pdf/{name}/import/fdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter fdfFilePath: (query) The Fdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImportFieldsFromFdfInStorageWithRequestBuilder(name: String, fdfFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/import/fdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "fdfFilePath": fdfFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from XFDF file in storage.
     
     - parameter name: (path) The document name. 
     - parameter xfdfFilePath: (query) The XFDF file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImportFieldsFromXfdfInStorage(name: String, xfdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImportFieldsFromXfdfInStorageWithRequestBuilder(name: name, xfdfFilePath: xfdfFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from XFDF file in storage.
     - GET /pdf/{name}/import/xfdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter xfdfFilePath: (query) The XFDF file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImportFieldsFromXfdfInStorageWithRequestBuilder(name: String, xfdfFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/import/xfdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "xfdfFilePath": xfdfFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Import from XML file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter name: (path) The document name. 
     - parameter xmlFilePath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getImportFieldsFromXmlInStorage(name: String, xmlFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getImportFieldsFromXmlInStorageWithRequestBuilder(name: name, xmlFilePath: xmlFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Import from XML file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/{name}/import/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter xmlFilePath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getImportFieldsFromXmlInStorageWithRequestBuilder(name: String, xmlFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/import/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "xmlFilePath": xmlFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page ink annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInkAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getInkAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page ink annotation by ID.
     - GET /pdf/{name}/annotations/ink/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<InkAnnotationResponse> 
     */
    open class func getInkAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<InkAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/ink/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<InkAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLaTeXInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getLaTeXInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/latex
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getLaTeXInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/latex"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page line annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLineAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getLineAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page line annotation by ID.
     - GET /pdf/{name}/annotations/line/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LineAnnotationResponse> 
     */
    open class func getLineAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LineAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/line/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LineAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document link annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter linkId: (path) The link ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLinkAnnotation(name: String, linkId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getLinkAnnotationWithRequestBuilder(name: name, linkId: linkId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document link annotation by ID.
     - GET /pdf/{name}/links/{linkId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter linkId: (path) The link ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LinkAnnotationResponse> 
     */
    open class func getLinkAnnotationWithRequestBuilder(name: String, linkId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LinkAnnotationResponse> {
        var pathUrl = "/pdf/{name}/links/{linkId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{linkId}", with: "\(linkId)", options: .literal, range: nil)
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
     Convert MHT file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMhtInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getMhtInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert MHT file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/mht
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getMhtInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/mht"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page movie annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMovieAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getMovieAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page movie annotation by ID.
     - GET /pdf/{name}/annotations/movie/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<MovieAnnotationResponse> 
     */
    open class func getMovieAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<MovieAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/movie/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<MovieAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page info.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPage(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPageResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page info.
     - GET /pdf/{name}/pages/{pageNumber}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<DocumentPageResponse> 
     */
    open class func getPageWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPageResponse> {
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
        

        let requestBuilder: RequestBuilder<DocumentPageResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AnnotationsInfoResponse?,_ error: Error?) -> Void)) {
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
     Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
     - GET /pdf/{name}/pages/{pageNumber}/annotations
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AnnotationsInfoResponse> 
     */
    open class func getPageAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AnnotationsInfoResponse> {
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
        

        let requestBuilder: RequestBuilder<AnnotationsInfoResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page caret annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageCaretAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageCaretAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page caret annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/caret
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CaretAnnotationsResponse> 
     */
    open class func getPageCaretAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CaretAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/caret"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CaretAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page circle annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageCircleAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageCircleAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page circle annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/circle
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CircleAnnotationsResponse> 
     */
    open class func getPageCircleAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CircleAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/circle"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CircleAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Bmp image and return resulting file in response.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToBmp(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToBmpWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Bmp image and return resulting file in response.
     - GET /pdf/{name}/pages/{pageNumber}/convert/bmp
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToBmpWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/bmp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Emf image and return resulting file in response.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToEmf(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToEmfWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Emf image and return resulting file in response.
     - GET /pdf/{name}/pages/{pageNumber}/convert/emf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToEmfWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/emf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Gif image and return resulting file in response.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToGifWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Gif image and return resulting file in response.
     - GET /pdf/{name}/pages/{pageNumber}/convert/gif
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToGifWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Jpeg image and return resulting file in response.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToJpegWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Jpeg image and return resulting file in response.
     - GET /pdf/{name}/pages/{pageNumber}/convert/jpeg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToJpegWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Png image and return resulting file in response.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToPngWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Png image and return resulting file in response.
     - GET /pdf/{name}/pages/{pageNumber}/convert/png
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToPngWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Tiff image  and return resulting file in response.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageConvertToTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageConvertToTiffWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Tiff image  and return resulting file in response.
     - GET /pdf/{name}/pages/{pageNumber}/convert/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPageConvertToTiffWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page FileAttachment annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageFileAttachmentAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageFileAttachmentAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page FileAttachment annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/fileattachment
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FileAttachmentAnnotationsResponse> 
     */
    open class func getPageFileAttachmentAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FileAttachmentAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/fileattachment"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FileAttachmentAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page free text annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageFreeTextAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageFreeTextAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page free text annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/freetext
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FreeTextAnnotationsResponse> 
     */
    open class func getPageFreeTextAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FreeTextAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/freetext"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FreeTextAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page highlight annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageHighlightAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageHighlightAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page highlight annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/highlight
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<HighlightAnnotationsResponse> 
     */
    open class func getPageHighlightAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<HighlightAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/highlight"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<HighlightAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page ink annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageInkAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageInkAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page ink annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/ink
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<InkAnnotationsResponse> 
     */
    open class func getPageInkAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<InkAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/ink"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<InkAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page line annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageLineAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageLineAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page line annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/line
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LineAnnotationsResponse> 
     */
    open class func getPageLineAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LineAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/line"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LineAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page link annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter linkId: (path) The link ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageLinkAnnotation(name: String, pageNumber: Int, linkId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageLinkAnnotationWithRequestBuilder(name: name, pageNumber: pageNumber, linkId: linkId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page link annotation by ID.
     - GET /pdf/{name}/pages/{pageNumber}/links/{linkId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter linkId: (path) The link ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LinkAnnotationResponse> 
     */
    open class func getPageLinkAnnotationWithRequestBuilder(name: String, pageNumber: Int, linkId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LinkAnnotationResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/links/{linkId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{linkId}", with: "\(linkId)", options: .literal, range: nil)
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Read document page movie annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageMovieAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageMovieAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page movie annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/movie
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<MovieAnnotationsResponse> 
     */
    open class func getPageMovieAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<MovieAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/movie"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<MovieAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page polyline annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPagePolyLineAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPagePolyLineAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page polyline annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/polyline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolyLineAnnotationsResponse> 
     */
    open class func getPagePolyLineAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolyLineAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/polyline"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolyLineAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page polygon annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPagePolygonAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPagePolygonAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page polygon annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/polygon
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolygonAnnotationsResponse> 
     */
    open class func getPagePolygonAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolygonAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/polygon"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolygonAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page popup annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPagePopupAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPagePopupAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page popup annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/popup
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PopupAnnotationsResponse> 
     */
    open class func getPagePopupAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PopupAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/popup"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PopupAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page redaction annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageRedactionAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageRedactionAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page redaction annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/redaction
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<RedactionAnnotationsResponse> 
     */
    open class func getPageRedactionAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<RedactionAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/redaction"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<RedactionAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page screen annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageScreenAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageScreenAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page screen annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/screen
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<ScreenAnnotationsResponse> 
     */
    open class func getPageScreenAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<ScreenAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/screen"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ScreenAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page sound annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageSoundAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageSoundAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page sound annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/sound
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SoundAnnotationsResponse> 
     */
    open class func getPageSoundAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SoundAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/sound"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SoundAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page square annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageSquareAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageSquareAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page square annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/square
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquareAnnotationsResponse> 
     */
    open class func getPageSquareAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquareAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/square"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquareAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page squiggly annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageSquigglyAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageSquigglyAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page squiggly annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/squiggly
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquigglyAnnotationsResponse> 
     */
    open class func getPageSquigglyAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquigglyAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/squiggly"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquigglyAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page stamp annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageStampAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageStampAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page stamp annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/stamp
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StampAnnotationsResponse> 
     */
    open class func getPageStampAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StampAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/stamp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StampAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page document stamps.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageStamps(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampsInfoResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageStampsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page document stamps.
     - GET /pdf/{name}/pages/{pageNumber}/stamps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StampsInfoResponse> 
     */
    open class func getPageStampsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StampsInfoResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/stamps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StampsInfoResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page StrikeOut annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageStrikeOutAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageStrikeOutAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page StrikeOut annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/strikeout
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StrikeOutAnnotationsResponse> 
     */
    open class func getPageStrikeOutAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StrikeOutAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/strikeout"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StrikeOutAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page tables.
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageTables(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TablesRecognizedResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageTablesWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page tables.
     - GET /pdf/{name}/pages/{pageNumber}/tables
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter pageNumber: (path)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<TablesRecognizedResponse> 
     */
    open class func getPageTablesWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TablesRecognizedResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/tables"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TablesRecognizedResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read page text items.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter LLX: (query) X-coordinate of lower - left corner. 
     - parameter LLY: (query) Y - coordinate of lower-left corner. 
     - parameter URX: (query) X - coordinate of upper-right corner. 
     - parameter URY: (query) Y - coordinate of upper-right corner. 
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional, default to true)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageText(name: String, pageNumber: Int, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: TextRectsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageTextWithRequestBuilder(name: name, pageNumber: pageNumber, LLX: LLX, LLY: LLY, URX: URX, URY: URY, format: format, regex: regex, splitRects: splitRects, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read page text items.
     - GET /pdf/{name}/pages/{pageNumber}/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter LLX: (query) X-coordinate of lower - left corner. 
     - parameter LLY: (query) Y - coordinate of lower-left corner. 
     - parameter URX: (query) X - coordinate of upper-right corner. 
     - parameter URY: (query) Y - coordinate of upper-right corner. 
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional, default to true)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<TextRectsResponse> 
     */
    open class func getPageTextWithRequestBuilder(name: String, pageNumber: Int, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<TextRectsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "regex": regex, 
            "splitRects": splitRects, 
            "folder": folder, 
            "LLX": LLX, 
            "LLY": LLY, 
            "URX": URX, 
            "URY": URY, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<TextRectsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page text annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageTextAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageTextAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page text annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TextAnnotationsResponse> 
     */
    open class func getPageTextAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page underline annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPageUnderlineAnnotations(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPageUnderlineAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page underline annotations.
     - GET /pdf/{name}/pages/{pageNumber}/annotations/underline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<UnderlineAnnotationsResponse> 
     */
    open class func getPageUnderlineAnnotationsWithRequestBuilder(name: String, pageNumber: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<UnderlineAnnotationsResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/underline"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<UnderlineAnnotationsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPclInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPclInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PCL file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/pcl
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPclInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/pcl"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToDoc(name: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToDocWithRequestBuilder(name: name, addReturnToLineEnd: addReturnToLineEnd, format: format, imageResolutionX: imageResolutionX, imageResolutionY: imageResolutionY, maxDistanceBetweenTextLines: maxDistanceBetweenTextLines, mode: mode, recognizeBullets: recognizeBullets, relativeHorizontalProximity: relativeHorizontalProximity, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to DOC format and returns resulting file in response content
     - GET /pdf/{name}/convert/doc
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToDocWithRequestBuilder(name: String, addReturnToLineEnd: Bool? = nil, format: Format_getPdfInStorageToDoc? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: Mode_getPdfInStorageToDoc? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/doc"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "addReturnToLineEnd": addReturnToLineEnd, 
            "format": format?.rawValue, 
            "imageResolutionX": imageResolutionX?.encodeToJSON(), 
            "imageResolutionY": imageResolutionY?.encodeToJSON(), 
            "maxDistanceBetweenTextLines": maxDistanceBetweenTextLines, 
            "mode": mode?.rawValue, 
            "recognizeBullets": recognizeBullets, 
            "relativeHorizontalProximity": relativeHorizontalProximity, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter contentRecognitionMode: (query) Property tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToEpub(name: String, contentRecognitionMode: String? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToEpubWithRequestBuilder(name: name, contentRecognitionMode: contentRecognitionMode, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
     - GET /pdf/{name}/convert/epub
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter contentRecognitionMode: (query) Property tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToEpubWithRequestBuilder(name: String, contentRecognitionMode: ContentRecognitionMode_getPdfInStorageToEpub? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/epub"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "contentRecognitionMode": contentRecognitionMode?.rawValue, 
            "folder": folder, 
            "storage": storage
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToHtml(name: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToHtmlWithRequestBuilder(name: name, additionalMarginWidthInPoints: additionalMarginWidthInPoints, compressSvgGraphicsIfAny: compressSvgGraphicsIfAny, convertMarkedContentToLayers: convertMarkedContentToLayers, defaultFontName: defaultFontName, documentType: documentType, fixedLayout: fixedLayout, imageResolution: imageResolution, minimalLineWidth: minimalLineWidth, preventGlyphsGrouping: preventGlyphsGrouping, splitCssIntoPages: splitCssIntoPages, splitIntoPages: splitIntoPages, useZOrder: useZOrder, antialiasingProcessing: antialiasingProcessing, cssClassNamesPrefix: cssClassNamesPrefix, explicitListOfSavedPages: explicitListOfSavedPages, fontEncodingStrategy: fontEncodingStrategy, fontSavingMode: fontSavingMode, htmlMarkupGenerationMode: htmlMarkupGenerationMode, lettersPositioningMethod: lettersPositioningMethod, pagesFlowTypeDependsOnViewersScreenSize: pagesFlowTypeDependsOnViewersScreenSize, partsEmbeddingMode: partsEmbeddingMode, rasterImagesSavingMode: rasterImagesSavingMode, removeEmptyAreasOnTopAndBottom: removeEmptyAreasOnTopAndBottom, saveShadowedTextsAsTransparentTexts: saveShadowedTextsAsTransparentTexts, saveTransparentTexts: saveTransparentTexts, specialFolderForAllImages: specialFolderForAllImages, specialFolderForSvgImages: specialFolderForSvgImages, trySaveTextUnderliningAndStrikeoutingInCss: trySaveTextUnderliningAndStrikeoutingInCss, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to Html format and returns resulting file in response content
     - GET /pdf/{name}/convert/html
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToHtmlWithRequestBuilder(name: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: DocumentType_getPdfInStorageToHtml? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: AntialiasingProcessing_getPdfInStorageToHtml? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: FontEncodingStrategy_getPdfInStorageToHtml? = nil, fontSavingMode: FontSavingMode_getPdfInStorageToHtml? = nil, htmlMarkupGenerationMode: HtmlMarkupGenerationMode_getPdfInStorageToHtml? = nil, lettersPositioningMethod: LettersPositioningMethod_getPdfInStorageToHtml? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: PartsEmbeddingMode_getPdfInStorageToHtml? = nil, rasterImagesSavingMode: RasterImagesSavingMode_getPdfInStorageToHtml? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
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
            "documentType": documentType?.rawValue, 
            "fixedLayout": fixedLayout, 
            "imageResolution": imageResolution?.encodeToJSON(), 
            "minimalLineWidth": minimalLineWidth?.encodeToJSON(), 
            "preventGlyphsGrouping": preventGlyphsGrouping, 
            "splitCssIntoPages": splitCssIntoPages, 
            "splitIntoPages": splitIntoPages, 
            "useZOrder": useZOrder, 
            "antialiasingProcessing": antialiasingProcessing?.rawValue, 
            "cssClassNamesPrefix": cssClassNamesPrefix, 
            "explicitListOfSavedPages": explicitListOfSavedPages, 
            "fontEncodingStrategy": fontEncodingStrategy?.rawValue, 
            "fontSavingMode": fontSavingMode?.rawValue, 
            "htmlMarkupGenerationMode": htmlMarkupGenerationMode?.rawValue, 
            "lettersPositioningMethod": lettersPositioningMethod?.rawValue, 
            "pagesFlowTypeDependsOnViewersScreenSize": pagesFlowTypeDependsOnViewersScreenSize, 
            "partsEmbeddingMode": partsEmbeddingMode?.rawValue, 
            "rasterImagesSavingMode": rasterImagesSavingMode?.rawValue, 
            "removeEmptyAreasOnTopAndBottom": removeEmptyAreasOnTopAndBottom, 
            "saveShadowedTextsAsTransparentTexts": saveShadowedTextsAsTransparentTexts, 
            "saveTransparentTexts": saveTransparentTexts, 
            "specialFolderForAllImages": specialFolderForAllImages, 
            "specialFolderForSvgImages": specialFolderForSvgImages, 
            "trySaveTextUnderliningAndStrikeoutingInCss": trySaveTextUnderliningAndStrikeoutingInCss, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToLaTeX(name: String, pagesCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToLaTeXWithRequestBuilder(name: name, pagesCount: pagesCount, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
     - GET /pdf/{name}/convert/latex
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToLaTeXWithRequestBuilder(name: String, pagesCount: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/latex"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "pagesCount": pagesCount?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToMobiXml(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToMobiXmlWithRequestBuilder(name: name, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
     - GET /pdf/{name}/convert/mobixml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToMobiXmlWithRequestBuilder(name: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/mobixml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToPdfA(name: String, type: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToPdfAWithRequestBuilder(name: name, type: type, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
     - GET /pdf/{name}/convert/pdfa
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToPdfAWithRequestBuilder(name: String, type: ModelType_getPdfInStorageToPdfA, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/pdfa"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "type": type.rawValue, 
            "folder": folder, 
            "storage": storage
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToPptx(name: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToPptxWithRequestBuilder(name: name, separateImages: separateImages, slidesAsImages: slidesAsImages, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
     - GET /pdf/{name}/convert/pptx
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToPptxWithRequestBuilder(name: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/pptx"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "separateImages": separateImages, 
            "slidesAsImages": slidesAsImages, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to SVG format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToSvg(name: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToSvgWithRequestBuilder(name: name, compressOutputToZipArchive: compressOutputToZipArchive, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to SVG format and returns resulting file in response content
     - GET /pdf/{name}/convert/svg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter compressOutputToZipArchive: (query) Specifies whether output will be created as one zip-archive. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToSvgWithRequestBuilder(name: String, compressOutputToZipArchive: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/svg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "compressOutputToZipArchive": compressOutputToZipArchive, 
            "folder": folder, 
            "storage": storage
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToTiff(name: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToTiffWithRequestBuilder(name: name, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
     - GET /pdf/{name}/convert/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToTiffWithRequestBuilder(name: String, brightness: Double? = nil, compression: Compression_getPdfInStorageToTiff? = nil, colorDepth: ColorDepth_getPdfInStorageToTiff? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: Orientation_getPdfInStorageToTiff? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "brightness": brightness, 
            "compression": compression?.rawValue, 
            "colorDepth": colorDepth?.rawValue, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation?.rawValue, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXls(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXlsWithRequestBuilder(name: name, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XLS format and returns resulting file in response content
     - GET /pdf/{name}/convert/xls
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXlsWithRequestBuilder(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XLSX format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXlsx(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXlsxWithRequestBuilder(name: name, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XLSX format and returns resulting file in response content
     - GET /pdf/{name}/convert/xlsx
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXlsxWithRequestBuilder(name: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xlsx"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "insertBlankColumnAtFirst": insertBlankColumnAtFirst, 
            "minimizeTheNumberOfWorksheets": minimizeTheNumberOfWorksheets, 
            "scaleFactor": scaleFactor, 
            "uniformWorksheets": uniformWorksheets, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XML format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXml(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXmlWithRequestBuilder(name: name, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XML format and returns resulting file in response content
     - GET /pdf/{name}/convert/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXmlWithRequestBuilder(name: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XPS format and returns resulting file in response content
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPdfInStorageToXps(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPdfInStorageToXpsWithRequestBuilder(name: name, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XPS format and returns resulting file in response content
     - GET /pdf/{name}/convert/xps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPdfInStorageToXpsWithRequestBuilder(name: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page polyline annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPolyLineAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPolyLineAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page polyline annotation by ID.
     - GET /pdf/{name}/annotations/polyline/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolyLineAnnotationResponse> 
     */
    open class func getPolyLineAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolyLineAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/polyline/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolyLineAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page polygon annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPolygonAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPolygonAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page polygon annotation by ID.
     - GET /pdf/{name}/annotations/polygon/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolygonAnnotationResponse> 
     */
    open class func getPolygonAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolygonAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/polygon/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolygonAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page popup annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPopupAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPopupAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page popup annotation by ID.
     - GET /pdf/{name}/annotations/popup/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PopupAnnotationResponse> 
     */
    open class func getPopupAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PopupAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/popup/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PopupAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert PS file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPsInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getPsInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PS file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/ps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getPsInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/ps"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page redaction annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRedactionAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getRedactionAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page redaction annotation by ID.
     - GET /pdf/{name}/annotations/redaction/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<RedactionAnnotationResponse> 
     */
    open class func getRedactionAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<RedactionAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/redaction/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<RedactionAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page screen annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScreenAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getScreenAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page screen annotation by ID.
     - GET /pdf/{name}/annotations/screen/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<ScreenAnnotationResponse> 
     */
    open class func getScreenAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<ScreenAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/screen/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ScreenAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page screen annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScreenAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getScreenAnnotationDataWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page screen annotation by ID.
     - GET /pdf/{name}/annotations/screen/{annotationId}/data
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getScreenAnnotationDataWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/annotations/screen/{annotationId}/data"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
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
     Read document page sound annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSoundAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSoundAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page sound annotation by ID.
     - GET /pdf/{name}/annotations/sound/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SoundAnnotationResponse> 
     */
    open class func getSoundAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SoundAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/sound/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SoundAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page sound annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSoundAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSoundAnnotationDataWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page sound annotation by ID.
     - GET /pdf/{name}/annotations/sound/{annotationId}/data
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getSoundAnnotationDataWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/annotations/sound/{annotationId}/data"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
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
     Read document page square annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSquareAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSquareAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page square annotation by ID.
     - GET /pdf/{name}/annotations/square/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquareAnnotationResponse> 
     */
    open class func getSquareAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquareAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/square/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquareAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page squiggly annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSquigglyAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSquigglyAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page squiggly annotation by ID.
     - GET /pdf/{name}/annotations/squiggly/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquigglyAnnotationResponse> 
     */
    open class func getSquigglyAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquigglyAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/squiggly/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquigglyAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page stamp annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStampAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getStampAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page stamp annotation by ID.
     - GET /pdf/{name}/annotations/stamp/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StampAnnotationResponse> 
     */
    open class func getStampAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StampAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/stamp/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StampAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page stamp annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStampAnnotationData(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getStampAnnotationDataWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page stamp annotation by ID.
     - GET /pdf/{name}/annotations/stamp/{annotationId}/data
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getStampAnnotationDataWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/annotations/stamp/{annotationId}/data"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
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
     Read document page StrikeOut annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStrikeOutAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getStrikeOutAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page StrikeOut annotation by ID.
     - GET /pdf/{name}/annotations/strikeout/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StrikeOutAnnotationResponse> 
     */
    open class func getStrikeOutAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StrikeOutAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/strikeout/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StrikeOutAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSvgInStorageToPdf(srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getSvgInStorageToPdfWithRequestBuilder(srcPath: srcPath, adjustPageSize: adjustPageSize, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert SVG file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/svg
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getSvgInStorageToPdfWithRequestBuilder(srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil) -> RequestBuilder<Data> {
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
            "marginTop": marginTop, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page table by ID.
     
     - parameter name: (path) The document name. 
     - parameter tableId: (path) The table ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTable(name: String, tableId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TableRecognizedResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getTableWithRequestBuilder(name: name, tableId: tableId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page table by ID.
     - GET /pdf/{name}/tables/{tableId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter tableId: (path) The table ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TableRecognizedResponse> 
     */
    open class func getTableWithRequestBuilder(name: String, tableId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TableRecognizedResponse> {
        var pathUrl = "/pdf/{name}/tables/{tableId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{tableId}", with: "\(tableId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TableRecognizedResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document text.
     
     - parameter name: (path) The document name. 
     - parameter LLX: (query) X-coordinate of lower - left corner. 
     - parameter LLY: (query) Y - coordinate of lower-left corner. 
     - parameter URX: (query) X - coordinate of upper-right corner. 
     - parameter URY: (query) Y - coordinate of upper-right corner. 
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional, default to true)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getText(name: String, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: TextRectsResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getTextWithRequestBuilder(name: name, LLX: LLX, LLY: LLY, URX: URX, URY: URY, format: format, regex: regex, splitRects: splitRects, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document text.
     - GET /pdf/{name}/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter LLX: (query) X-coordinate of lower - left corner. 
     - parameter LLY: (query) Y - coordinate of lower-left corner. 
     - parameter URX: (query) X - coordinate of upper-right corner. 
     - parameter URY: (query) Y - coordinate of upper-right corner. 
     - parameter format: (query) List of formats for search. (optional)
     - parameter regex: (query) Formats are specified as a regular expression. (optional)
     - parameter splitRects: (query) Split result fragments (default is true). (optional, default to true)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<TextRectsResponse> 
     */
    open class func getTextWithRequestBuilder(name: String, LLX: Double, LLY: Double, URX: Double, URY: Double, format: [String]? = nil, regex: String? = nil, splitRects: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<TextRectsResponse> {
        var pathUrl = "/pdf/{name}/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "format": format, 
            "regex": regex, 
            "splitRects": splitRects, 
            "folder": folder, 
            "LLX": LLX, 
            "LLY": LLY, 
            "URX": URX, 
            "URY": URY, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<TextRectsResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page text annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTextAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getTextAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page text annotation by ID.
     - GET /pdf/{name}/annotations/text/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TextAnnotationResponse> 
     */
    open class func getTextAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/text/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Read document page underline annotation by ID.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUnderlineAnnotation(name: String, annotationId: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getUnderlineAnnotationWithRequestBuilder(name: name, annotationId: annotationId, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Read document page underline annotation by ID.
     - GET /pdf/{name}/annotations/underline/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<UnderlineAnnotationResponse> 
     */
    open class func getUnderlineAnnotationWithRequestBuilder(name: String, annotationId: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<UnderlineAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/underline/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<UnderlineAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Verify signature document.
     
     - parameter name: (path) The document name. 
     - parameter signName: (query) Sign name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVerifySignature(name: String, signName: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SignatureVerifyResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getVerifySignatureWithRequestBuilder(name: name, signName: signName, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Verify signature document.
     - GET /pdf/{name}/verifySignature
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter signName: (query) Sign name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SignatureVerifyResponse> 
     */
    open class func getVerifySignatureWithRequestBuilder(name: String, signName: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SignatureVerifyResponse> {
        var pathUrl = "/pdf/{name}/verifySignature"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "signName": signName, 
            "storage": storage, 
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWebInStorageToPdf(url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getWebInStorageToPdfWithRequestBuilder(url: url, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert web page to PDF format and return resulting file in response. 
     - GET /pdf/create/web
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter url: (query) Source url 
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getWebInStorageToPdfWithRequestBuilder(url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, storage: String? = nil) -> RequestBuilder<Data> {
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
            "marginTop": marginTop, 
            "storage": storage
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXfaPdfInStorageToAcroForm(name: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXfaPdfInStorageToAcroFormWithRequestBuilder(name: name, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
     - GET /pdf/{name}/convert/xfatoacroform
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter name: (path) The document name. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getXfaPdfInStorageToAcroFormWithRequestBuilder(name: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        var pathUrl = "/pdf/{name}/convert/xfatoacroform"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XML file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXmlInStorageToPdf(srcPath: String, xslFilePath: String? = nil, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXmlInStorageToPdfWithRequestBuilder(srcPath: srcPath, xslFilePath: xslFilePath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XML file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getXmlInStorageToPdfWithRequestBuilder(srcPath: String, xslFilePath: String? = nil, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/xml"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "xslFilePath": xslFilePath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XPS file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXpsInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXpsInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XPS file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/xps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getXpsInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/xps"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xslfo) 
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getXslFoInStorageToPdf(srcPath: String, storage: String? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            getXslFoInStorageToPdfWithRequestBuilder(srcPath: srcPath, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
     - GET /pdf/create/xslfo
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xslfo) 
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<Data> 
     */
    open class func getXslFoInStorageToPdfWithRequestBuilder(srcPath: String, storage: String? = nil) -> RequestBuilder<Data> {
        let pathUrl = "/pdf/create/xslfo"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<Data>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Move file
     
     - parameter srcPath: (path) Source file path e.g. &#39;/src.ext&#39; 
     - parameter destPath: (query) Destination file path e.g. &#39;/dest.ext&#39; 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)
     - parameter versionId: (query) File version ID to move (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFile(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            moveFileWithRequestBuilder(srcPath: srcPath, destPath: destPath, srcStorageName: srcStorageName, destStorageName: destStorageName, versionId: versionId).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Move file
     - PUT /pdf/storage/file/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter srcPath: (path) Source file path e.g. &#39;/src.ext&#39; 
     - parameter destPath: (query) Destination file path e.g. &#39;/dest.ext&#39; 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)
     - parameter versionId: (query) File version ID to move (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func moveFileWithRequestBuilder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, versionId: String? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/file/move/{srcPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{srcPath}", with: "\(srcPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName, 
            "versionId": versionId
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Move folder
     
     - parameter srcPath: (path) Folder path to move e.g. &#39;/folder&#39; 
     - parameter destPath: (query) Destination folder path to move to e.g &#39;/dst&#39; 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFolder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(authError)
                return
            }
            moveFolderWithRequestBuilder(srcPath: srcPath, destPath: destPath, srcStorageName: srcStorageName, destStorageName: destStorageName).execute { (response, error) -> Void in
                completion(error);
            }
        }
    }


    /**
     Move folder
     - PUT /pdf/storage/folder/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     
     - parameter srcPath: (path) Folder path to move e.g. &#39;/folder&#39; 
     - parameter destPath: (query) Destination folder path to move to e.g &#39;/dst&#39; 
     - parameter srcStorageName: (query) Source storage name (optional)
     - parameter destStorageName: (query) Destination storage name (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func moveFolderWithRequestBuilder(srcPath: String, destPath: String, srcStorageName: String? = nil, destStorageName: String? = nil) -> RequestBuilder<Void> {
        var pathUrl = "/pdf/storage/folder/move/{srcPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{srcPath}", with: "\(srcPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = AsposePdfCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Check if file or folder exists
     
     - parameter path: (path) File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter versionId: (query) File version ID (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objectExists(path: String, storageName: String? = nil, versionId: String? = nil, completion: @escaping ((_ data: ObjectExist?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            objectExistsWithRequestBuilder(path: path, storageName: storageName, versionId: versionId).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Check if file or folder exists
     - GET /pdf/storage/exist/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true,
  "IsFolder" : true
}}]
     
     - parameter path: (path) File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; 
     - parameter storageName: (query) Storage name (optional)
     - parameter versionId: (query) File version ID (optional)

     - returns: RequestBuilder<ObjectExist> 
     */
    open class func objectExistsWithRequestBuilder(path: String, storageName: String? = nil, versionId: String? = nil) -> RequestBuilder<ObjectExist> {
        var pathUrl = "/pdf/storage/exist/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName, 
            "versionId": versionId
        ])
        

        let requestBuilder: RequestBuilder<ObjectExist>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Append document to existing one.
     
     - parameter name: (path) The original document name. 
     - parameter appendFile: (query) Append file server path. 
     - parameter startPage: (query) Appending start page. (optional, default to 0)
     - parameter endPage: (query) Appending end page. (optional, default to 0)
     - parameter storage: (query) The documents storage. (optional)
     - parameter folder: (query) The original document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAppendDocument(name: String, appendFile: String, startPage: Int? = nil, endPage: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postAppendDocumentWithRequestBuilder(name: name, appendFile: appendFile, startPage: startPage, endPage: endPage, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Append document to existing one.
     - POST /pdf/{name}/appendDocument
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The original document name. 
     - parameter appendFile: (query) Append file server path. 
     - parameter startPage: (query) Appending start page. (optional, default to 0)
     - parameter endPage: (query) Appending end page. (optional, default to 0)
     - parameter storage: (query) The documents storage. (optional)
     - parameter folder: (query) The original document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func postAppendDocumentWithRequestBuilder(name: String, appendFile: String, startPage: Int? = nil, endPage: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}/appendDocument"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "appendFile": appendFile, 
            "startPage": startPage?.encodeToJSON(), 
            "endPage": endPage?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add document bookmarks.
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter bookmarks: (body) The array of bookmark. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBookmark(name: String, bookmarkPath: String, bookmarks: [Bookmark], folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarksResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postBookmarkWithRequestBuilder(name: name, bookmarkPath: bookmarkPath, bookmarks: bookmarks, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document bookmarks.
     - POST /pdf/{name}/bookmarks/bookmark/{bookmarkPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter bookmarks: (body) The array of bookmark. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<BookmarksResponse> 
     */
    open class func postBookmarkWithRequestBuilder(name: String, bookmarkPath: String, bookmarks: [Bookmark], folder: String? = nil, storage: String? = nil) -> RequestBuilder<BookmarksResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/bookmark/{bookmarkPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{bookmarkPath}", with: "\(bookmarkPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bookmarks)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<BookmarksResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Change document password in storage.
     
     - parameter name: (path) Document name. 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter newUserPassword: (query) New user password (encrypted Base64). 
     - parameter newOwnerPassword: (query) New owner password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postChangePasswordDocumentInStorage(name: String, ownerPassword: String, newUserPassword: String, newOwnerPassword: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postChangePasswordDocumentInStorageWithRequestBuilder(name: name, ownerPassword: ownerPassword, newUserPassword: newUserPassword, newOwnerPassword: newOwnerPassword, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Change document password in storage.
     - POST /pdf/{name}/changepassword
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) Document name. 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter newUserPassword: (query) New user password (encrypted Base64). 
     - parameter newOwnerPassword: (query) New owner password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postChangePasswordDocumentInStorageWithRequestBuilder(name: String, ownerPassword: String, newUserPassword: String, newOwnerPassword: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/changepassword"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "ownerPassword": ownerPassword, 
            "newUserPassword": newUserPassword, 
            "newOwnerPassword": newOwnerPassword, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create field.
     
     - parameter name: (path) The document name. 
     - parameter page: (query) Document page number. 
     - parameter field: (body) Field with the field data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCreateField(name: String, page: Int, field: Field, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter page: (query) Document page number. 
     - parameter field: (body) Field with the field data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postCreateFieldWithRequestBuilder(name: String, page: Int, field: Field, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Decrypt document in storage.
     
     - parameter name: (path) Document name. 
     - parameter password: (query) The password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDecryptDocumentInStorage(name: String, password: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDecryptDocumentInStorageWithRequestBuilder(name: name, password: password, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Decrypt document in storage.
     - POST /pdf/{name}/decrypt
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) Document name. 
     - parameter password: (query) The password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postDecryptDocumentInStorageWithRequestBuilder(name: String, password: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/decrypt"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "password": password, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add document image footer.
     
     - parameter name: (path) The document name. 
     - parameter imageFooter: (body) The image footer. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentImageFooter(name: String, imageFooter: ImageFooter, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentImageFooterWithRequestBuilder(name: name, imageFooter: imageFooter, startPageNumber: startPageNumber, endPageNumber: endPageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document image footer.
     - POST /pdf/{name}/footer/image
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageFooter: (body) The image footer. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postDocumentImageFooterWithRequestBuilder(name: String, imageFooter: ImageFooter, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/footer/image"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: imageFooter)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "startPageNumber": startPageNumber?.encodeToJSON(), 
            "endPageNumber": endPageNumber?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document image header.
     
     - parameter name: (path) The document name. 
     - parameter imageHeader: (body) The image header. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentImageHeader(name: String, imageHeader: ImageHeader, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentImageHeaderWithRequestBuilder(name: name, imageHeader: imageHeader, startPageNumber: startPageNumber, endPageNumber: endPageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document image header.
     - POST /pdf/{name}/header/image
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageHeader: (body) The image header. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postDocumentImageHeaderWithRequestBuilder(name: String, imageHeader: ImageHeader, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/header/image"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: imageHeader)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "startPageNumber": startPageNumber?.encodeToJSON(), 
            "endPageNumber": endPageNumber?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page number stamps.
     
     - parameter name: (path) The document name. 
     - parameter stamp: (body) The stamp. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentPageNumberStamps(name: String, stamp: PageNumberStamp, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentPageNumberStampsWithRequestBuilder(name: name, stamp: stamp, startPageNumber: startPageNumber, endPageNumber: endPageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page number stamps.
     - POST /pdf/{name}/stamps/pagenumber
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter stamp: (body) The stamp. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postDocumentPageNumberStampsWithRequestBuilder(name: String, stamp: PageNumberStamp, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/stamps/pagenumber"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: stamp)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "startPageNumber": startPageNumber?.encodeToJSON(), 
            "endPageNumber": endPageNumber?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document text footer.
     
     - parameter name: (path) The document name. 
     - parameter textFooter: (body) The text footer. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentTextFooter(name: String, textFooter: TextFooter, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentTextFooterWithRequestBuilder(name: name, textFooter: textFooter, startPageNumber: startPageNumber, endPageNumber: endPageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document text footer.
     - POST /pdf/{name}/footer/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter textFooter: (body) The text footer. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postDocumentTextFooterWithRequestBuilder(name: String, textFooter: TextFooter, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/footer/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textFooter)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "startPageNumber": startPageNumber?.encodeToJSON(), 
            "endPageNumber": endPageNumber?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document text header.
     
     - parameter name: (path) The document name. 
     - parameter textHeader: (body) The text header. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDocumentTextHeader(name: String, textHeader: TextHeader, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postDocumentTextHeaderWithRequestBuilder(name: name, textHeader: textHeader, startPageNumber: startPageNumber, endPageNumber: endPageNumber, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document text header.
     - POST /pdf/{name}/header/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter textHeader: (body) The text header. 
     - parameter startPageNumber: (query) The start page number. (optional)
     - parameter endPageNumber: (query) The end page number. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postDocumentTextHeaderWithRequestBuilder(name: String, textHeader: TextHeader, startPageNumber: Int? = nil, endPageNumber: Int? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/header/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: textHeader)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "startPageNumber": startPageNumber?.encodeToJSON(), 
            "endPageNumber": endPageNumber?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Encrypt document in storage.
     
     - parameter name: (path) Document name. 
     - parameter userPassword: (query) User password (encrypted Base64). 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter cryptoAlgorithm: (query) Cryptographic algorithm, see CryptoAlgorithm for details. 
     - parameter permissionsFlags: (query) Array of document permissions, see PermissionsFlags for details. (optional)
     - parameter usePdf20: (query) Support for revision 6 (Extension 8). (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postEncryptDocumentInStorage(name: String, userPassword: String, ownerPassword: String, cryptoAlgorithm: String, permissionsFlags: [PermissionsFlags]? = nil, usePdf20: Bool? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postEncryptDocumentInStorageWithRequestBuilder(name: name, userPassword: userPassword, ownerPassword: ownerPassword, cryptoAlgorithm: cryptoAlgorithm, permissionsFlags: permissionsFlags, usePdf20: usePdf20, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Encrypt document in storage.
     - POST /pdf/{name}/encrypt
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) Document name. 
     - parameter userPassword: (query) User password (encrypted Base64). 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter cryptoAlgorithm: (query) Cryptographic algorithm, see CryptoAlgorithm for details. 
     - parameter permissionsFlags: (query) Array of document permissions, see PermissionsFlags for details. (optional)
     - parameter usePdf20: (query) Support for revision 6 (Extension 8). (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postEncryptDocumentInStorageWithRequestBuilder(name: String, userPassword: String, ownerPassword: String, cryptoAlgorithm: CryptoAlgorithm_postEncryptDocumentInStorage, permissionsFlags: [PermissionsFlags]? = nil, usePdf20: Bool? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/encrypt"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "userPassword": userPassword, 
            "ownerPassword": ownerPassword, 
            "cryptoAlgorithm": cryptoAlgorithm.rawValue, 
            "permissionsFlags": permissionsFlags, 
            "usePdf20": usePdf20, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Flatten the document.
     
     - parameter name: (path) The document name. 
     - parameter updateAppearances: (query) If set, all field appearances will be regenerated before flattening. This option may help if field is incorrectly flattened. This option may decrease performance.. (optional)
     - parameter callEvents: (query) If set, formatting and other JavaScript events will be called. (optional)
     - parameter hideButtons: (query) If set, buttons will be removed from flattened document. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postFlattenDocument(name: String, updateAppearances: Bool? = nil, callEvents: Bool? = nil, hideButtons: Bool? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postFlattenDocumentWithRequestBuilder(name: name, updateAppearances: updateAppearances, callEvents: callEvents, hideButtons: hideButtons, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Flatten the document.
     - POST /pdf/{name}/flatten
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter updateAppearances: (query) If set, all field appearances will be regenerated before flattening. This option may help if field is incorrectly flattened. This option may decrease performance.. (optional)
     - parameter callEvents: (query) If set, formatting and other JavaScript events will be called. (optional)
     - parameter hideButtons: (query) If set, buttons will be removed from flattened document. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postFlattenDocumentWithRequestBuilder(name: String, updateAppearances: Bool? = nil, callEvents: Bool? = nil, hideButtons: Bool? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/flatten"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "updateAppearances": updateAppearances, 
            "callEvents": callEvents, 
            "hideButtons": hideButtons, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from FDF file in request.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter fdfData: (form) Fdf file. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postImportFieldsFromFdf(name: String, storage: String? = nil, folder: String? = nil, fdfData: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postImportFieldsFromFdfWithRequestBuilder(name: name, storage: storage, folder: folder, fdfData: fdfData).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from FDF file in request.
     - POST /pdf/{name}/import/fdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter fdfData: (form) Fdf file. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postImportFieldsFromFdfWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil, fdfData: URL? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/import/fdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "fdfData": fdfData
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from XFDF file in request.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter xfdfData: (form) Xfdf file. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postImportFieldsFromXfdf(name: String, storage: String? = nil, folder: String? = nil, xfdfData: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postImportFieldsFromXfdfWithRequestBuilder(name: name, storage: storage, folder: folder, xfdfData: xfdfData).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from XFDF file in request.
     - POST /pdf/{name}/import/xfdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter xfdfData: (form) Xfdf file. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postImportFieldsFromXfdfWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil, xfdfData: URL? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/import/xfdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "xfdfData": xfdfData
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from XML file in request.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter xmlData: (form) Xml file. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postImportFieldsFromXml(name: String, storage: String? = nil, folder: String? = nil, xmlData: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postImportFieldsFromXmlWithRequestBuilder(name: name, storage: storage, folder: folder, xmlData: xmlData).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from XML file in request.
     - POST /pdf/{name}/import/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter xmlData: (form) Xml file. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postImportFieldsFromXmlWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil, xmlData: URL? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/import/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "xmlData": xmlData
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Insert image to document page.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter llx: (query) Coordinate lower left X. 
     - parameter lly: (query) Coordinate lower left Y. 
     - parameter urx: (query) Coordinate upper right X. 
     - parameter ury: (query) Coordinate upper right Y. 
     - parameter imageFilePath: (query) Path to image file if specified. Request content is used otherwise. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter image: (form) Image file. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postInsertImage(name: String, pageNumber: Int, llx: Double, lly: Double, urx: Double, ury: Double, imageFilePath: String? = nil, storage: String? = nil, folder: String? = nil, image: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postInsertImageWithRequestBuilder(name: name, pageNumber: pageNumber, llx: llx, lly: lly, urx: urx, ury: ury, imageFilePath: imageFilePath, storage: storage, folder: folder, image: image).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Insert image to document page.
     - POST /pdf/{name}/pages/{pageNumber}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter llx: (query) Coordinate lower left X. 
     - parameter lly: (query) Coordinate lower left Y. 
     - parameter urx: (query) Coordinate upper right X. 
     - parameter ury: (query) Coordinate upper right Y. 
     - parameter imageFilePath: (query) Path to image file if specified. Request content is used otherwise. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter image: (form) Image file. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postInsertImageWithRequestBuilder(name: String, pageNumber: Int, llx: Double, lly: Double, urx: Double, ury: Double, imageFilePath: String? = nil, storage: String? = nil, folder: String? = nil, image: URL? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "image": image
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "llx": llx, 
            "lly": lly, 
            "urx": urx, 
            "ury": ury, 
            "imageFilePath": imageFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
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
    open class func postMovePage(name: String, pageNumber: Int, newIndex: Int, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter newIndex: (query) The new page position/index. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postMovePageWithRequestBuilder(name: String, pageNumber: Int, newIndex: Int, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Optimize document.
     
     - parameter name: (path) The document name. 
     - parameter options: (body) The optimization options. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postOptimizeDocument(name: String, options: OptimizeOptions, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter options: (body) The optimization options. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postOptimizeDocumentWithRequestBuilder(name: String, options: OptimizeOptions, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/optimize"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page caret annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageCaretAnnotations(name: String, pageNumber: Int, annotations: [CaretAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageCaretAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page caret annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/caret
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageCaretAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [CaretAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/caret"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page circle annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageCircleAnnotations(name: String, pageNumber: Int, annotations: [CircleAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageCircleAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page circle annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/circle
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageCircleAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [CircleAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/circle"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page FileAttachment annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageFileAttachmentAnnotations(name: String, pageNumber: Int, annotations: [FileAttachmentAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageFileAttachmentAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page FileAttachment annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/fileattachment
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageFileAttachmentAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [FileAttachmentAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/fileattachment"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page free text annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageFreeTextAnnotations(name: String, pageNumber: Int, annotations: [FreeTextAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageFreeTextAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page free text annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/freetext
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageFreeTextAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [FreeTextAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/freetext"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page highlight annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageHighlightAnnotations(name: String, pageNumber: Int, annotations: [HighlightAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageHighlightAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page highlight annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/highlight
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageHighlightAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [HighlightAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/highlight"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page image stamps.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamps: (body) The array of stamp. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageImageStamps(name: String, pageNumber: Int, stamps: [ImageStamp], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageImageStampsWithRequestBuilder(name: name, pageNumber: pageNumber, stamps: stamps, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page image stamps.
     - POST /pdf/{name}/pages/{pageNumber}/stamps/image
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamps: (body) The array of stamp. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageImageStampsWithRequestBuilder(name: String, pageNumber: Int, stamps: [ImageStamp], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/stamps/image"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: stamps)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page ink annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageInkAnnotations(name: String, pageNumber: Int, annotations: [InkAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageInkAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page ink annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/ink
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageInkAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [InkAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/ink"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page line annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageLineAnnotations(name: String, pageNumber: Int, annotations: [LineAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageLineAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page line annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/line
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageLineAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [LineAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/line"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page link annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter links: (body) Array of link anotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageLinkAnnotations(name: String, pageNumber: Int, links: [LinkAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageLinkAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, links: links, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page link annotations.
     - POST /pdf/{name}/pages/{pageNumber}/links
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter links: (body) Array of link anotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageLinkAnnotationsWithRequestBuilder(name: String, pageNumber: Int, links: [LinkAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/links"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: links)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page movie annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageMovieAnnotations(name: String, pageNumber: Int, annotations: [MovieAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageMovieAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page movie annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/movie
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageMovieAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [MovieAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/movie"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document pdf page stamps.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamps: (body) The array of stamp. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPagePdfPageStamps(name: String, pageNumber: Int, stamps: [PdfPageStamp], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPagePdfPageStampsWithRequestBuilder(name: name, pageNumber: pageNumber, stamps: stamps, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document pdf page stamps.
     - POST /pdf/{name}/pages/{pageNumber}/stamps/pdfpage
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamps: (body) The array of stamp. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPagePdfPageStampsWithRequestBuilder(name: String, pageNumber: Int, stamps: [PdfPageStamp], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/stamps/pdfpage"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: stamps)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page polyline annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPagePolyLineAnnotations(name: String, pageNumber: Int, annotations: [PolyLineAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPagePolyLineAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page polyline annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/polyline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPagePolyLineAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [PolyLineAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/polyline"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page polygon annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPagePolygonAnnotations(name: String, pageNumber: Int, annotations: [PolygonAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPagePolygonAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page polygon annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/polygon
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPagePolygonAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [PolygonAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/polygon"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page redaction annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageRedactionAnnotations(name: String, pageNumber: Int, annotations: [RedactionAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageRedactionAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page redaction annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/redaction
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageRedactionAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [RedactionAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/redaction"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page screen annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageScreenAnnotations(name: String, pageNumber: Int, annotations: [ScreenAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageScreenAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page screen annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/screen
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageScreenAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [ScreenAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/screen"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page sound annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageSoundAnnotations(name: String, pageNumber: Int, annotations: [SoundAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageSoundAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page sound annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/sound
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageSoundAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [SoundAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/sound"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page square annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageSquareAnnotations(name: String, pageNumber: Int, annotations: [SquareAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageSquareAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page square annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/square
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageSquareAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [SquareAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/square"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page squiggly annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageSquigglyAnnotations(name: String, pageNumber: Int, annotations: [SquigglyAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageSquigglyAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page squiggly annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/squiggly
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageSquigglyAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [SquigglyAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/squiggly"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page stamp annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageStampAnnotations(name: String, pageNumber: Int, annotations: [StampAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageStampAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page stamp annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/stamp
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageStampAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [StampAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/stamp"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page StrikeOut annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageStrikeOutAnnotations(name: String, pageNumber: Int, annotations: [StrikeOutAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageStrikeOutAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page StrikeOut annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/strikeout
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageStrikeOutAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [StrikeOutAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/strikeout"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page tables.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter tables: (body) The array of table. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageTables(name: String, pageNumber: Int, tables: [Table], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageTablesWithRequestBuilder(name: name, pageNumber: pageNumber, tables: tables, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page tables.
     - POST /pdf/{name}/pages/{pageNumber}/tables
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter tables: (body) The array of table. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageTablesWithRequestBuilder(name: String, pageNumber: Int, tables: [Table], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/tables"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tables)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page text annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageTextAnnotations(name: String, pageNumber: Int, annotations: [TextAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageTextAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page text annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageTextAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [TextAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Add document page text stamps.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamps: (body) The array of stamp. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageTextStamps(name: String, pageNumber: Int, stamps: [TextStamp], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageTextStampsWithRequestBuilder(name: name, pageNumber: pageNumber, stamps: stamps, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page text stamps.
     - POST /pdf/{name}/pages/{pageNumber}/stamps/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamps: (body) The array of stamp. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageTextStampsWithRequestBuilder(name: String, pageNumber: Int, stamps: [TextStamp], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/stamps/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: stamps)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document page underline annotations.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPageUnderlineAnnotations(name: String, pageNumber: Int, annotations: [UnderlineAnnotation], storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPageUnderlineAnnotationsWithRequestBuilder(name: name, pageNumber: pageNumber, annotations: annotations, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document page underline annotations.
     - POST /pdf/{name}/pages/{pageNumber}/annotations/underline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter annotations: (body) The array of annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPageUnderlineAnnotationsWithRequestBuilder(name: String, pageNumber: Int, annotations: [UnderlineAnnotation], storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/annotations/underline"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotations)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add document popup annotations.
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The parent annotation ID. 
     - parameter annotation: (body) The annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPopupAnnotation(name: String, annotationId: String, annotation: PopupAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postPopupAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add document popup annotations.
     - POST /pdf/{name}/annotations/{annotationId}/popup
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The parent annotation ID. 
     - parameter annotation: (body) The annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postPopupAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: PopupAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/{annotationId}/popup"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sign document.
     
     - parameter name: (path) The document name. 
     - parameter sign: (body) Signature object containing signature data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSignDocument(name: String, sign: Signature, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postSignDocumentWithRequestBuilder(name: name, sign: sign, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Sign document.
     - POST /pdf/{name}/sign
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter sign: (body) Signature object containing signature data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postSignDocumentWithRequestBuilder(name: String, sign: Signature, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/sign"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sign)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Sign page.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter sign: (body) Signature object containing signature data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSignPage(name: String, pageNumber: Int, sign: Signature, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            postSignPageWithRequestBuilder(name: name, pageNumber: pageNumber, sign: sign, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Sign page.
     - POST /pdf/{name}/pages/{pageNumber}/sign
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter sign: (body) Signature object containing signature data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func postSignPageWithRequestBuilder(name: String, pageNumber: Int, sign: Signature, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/sign"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sign)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     - OAuth:
       - type: oauth2
       - name: JWT
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
     Add text to PDF document page.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter paragraph: (body) Paragraph data. 
     - parameter folder: (query) Document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAddText(name: String, pageNumber: Int, paragraph: Paragraph, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putAddTextWithRequestBuilder(name: name, pageNumber: pageNumber, paragraph: paragraph, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add text to PDF document page.
     - PUT /pdf/{name}/pages/{pageNumber}/text
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) Number of page (starting from 1). 
     - parameter paragraph: (body) Paragraph data. 
     - parameter folder: (query) Document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putAddTextWithRequestBuilder(name: String, pageNumber: Int, paragraph: Paragraph, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/text"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: paragraph)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Flattens the annotations of the specified types
     
     - parameter name: (path) The document name. 
     - parameter startPage: (query) The start page number. (optional)
     - parameter endPage: (query) The end page number. (optional)
     - parameter annotationTypes: (query) Array of annotation types. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAnnotationsFlatten(name: String, startPage: Int? = nil, endPage: Int? = nil, annotationTypes: [AnnotationType]? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putAnnotationsFlattenWithRequestBuilder(name: name, startPage: startPage, endPage: endPage, annotationTypes: annotationTypes, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Flattens the annotations of the specified types
     - PUT /pdf/{name}/annotations/flatten
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter startPage: (query) The start page number. (optional)
     - parameter endPage: (query) The end page number. (optional)
     - parameter annotationTypes: (query) Array of annotation types. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putAnnotationsFlattenWithRequestBuilder(name: String, startPage: Int? = nil, endPage: Int? = nil, annotationTypes: [AnnotationType]? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/flatten"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "startPage": startPage?.encodeToJSON(), 
            "endPage": endPage?.encodeToJSON(), 
            "annotationTypes": annotationTypes, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update document bookmark.
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter bookmark: (body) The bookmark. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putBookmark(name: String, bookmarkPath: String, bookmark: Bookmark, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: BookmarkResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putBookmarkWithRequestBuilder(name: name, bookmarkPath: bookmarkPath, bookmark: bookmark, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update document bookmark.
     - PUT /pdf/{name}/bookmarks/bookmark/{bookmarkPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter bookmarkPath: (path) The bookmark path. 
     - parameter bookmark: (body) The bookmark. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<BookmarkResponse> 
     */
    open class func putBookmarkWithRequestBuilder(name: String, bookmarkPath: String, bookmark: Bookmark, folder: String? = nil, storage: String? = nil) -> RequestBuilder<BookmarkResponse> {
        var pathUrl = "/pdf/{name}/bookmarks/bookmark/{bookmarkPath}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{bookmarkPath}", with: "\(bookmarkPath)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bookmark)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<BookmarkResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document caret annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putCaretAnnotation(name: String, annotationId: String, annotation: CaretAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CaretAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putCaretAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document caret annotation
     - PUT /pdf/{name}/annotations/caret/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CaretAnnotationResponse> 
     */
    open class func putCaretAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: CaretAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CaretAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/caret/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CaretAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Change document password from content.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter newUserPassword: (query) New user password (encrypted Base64). 
     - parameter newOwnerPassword: (query) New owner password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be changed password. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putChangePasswordDocument(outPath: String, ownerPassword: String, newUserPassword: String, newOwnerPassword: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putChangePasswordDocumentWithRequestBuilder(outPath: outPath, ownerPassword: ownerPassword, newUserPassword: newUserPassword, newOwnerPassword: newOwnerPassword, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Change document password from content.
     - PUT /pdf/changepassword
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter newUserPassword: (query) New user password (encrypted Base64). 
     - parameter newOwnerPassword: (query) New owner password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be changed password. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putChangePasswordDocumentWithRequestBuilder(outPath: String, ownerPassword: String, newUserPassword: String, newOwnerPassword: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/changepassword"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "ownerPassword": ownerPassword, 
            "newUserPassword": newUserPassword, 
            "newOwnerPassword": newOwnerPassword, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document circle annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putCircleAnnotation(name: String, annotationId: String, annotation: CircleAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: CircleAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putCircleAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document circle annotation
     - PUT /pdf/{name}/annotations/circle/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<CircleAnnotationResponse> 
     */
    open class func putCircleAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: CircleAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<CircleAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/circle/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<CircleAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create empty document.
     
     - parameter name: (path) The new document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The new document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putCreateDocument(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putCreateDocumentWithRequestBuilder(name: name, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Create empty document.
     - PUT /pdf/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The new document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The new document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func putCreateDocumentWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
        var pathUrl = "/pdf/{name}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Decrypt document from content.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter password: (query) The password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be derypted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putDecryptDocument(outPath: String, password: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putDecryptDocumentWithRequestBuilder(outPath: outPath, password: password, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Decrypt document from content.
     - PUT /pdf/decrypt
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter password: (query) The password (encrypted Base64). 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be derypted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putDecryptDocumentWithRequestBuilder(outPath: String, password: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/decrypt"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "password": password, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Encrypt document from content.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter userPassword: (query) User password (encrypted Base64). 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter cryptoAlgorithm: (query) Cryptographic algorithm, see CryptoAlgorithm for details. 
     - parameter permissionsFlags: (query) Array of document permissions, see PermissionsFlags for details. (optional)
     - parameter usePdf20: (query) Support for revision 6 (Extension 8). (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be encrypted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putEncryptDocument(outPath: String, userPassword: String, ownerPassword: String, cryptoAlgorithm: String, permissionsFlags: [PermissionsFlags]? = nil, usePdf20: Bool? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putEncryptDocumentWithRequestBuilder(outPath: outPath, userPassword: userPassword, ownerPassword: ownerPassword, cryptoAlgorithm: cryptoAlgorithm, permissionsFlags: permissionsFlags, usePdf20: usePdf20, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Encrypt document from content.
     - PUT /pdf/encrypt
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.doc) 
     - parameter userPassword: (query) User password (encrypted Base64). 
     - parameter ownerPassword: (query) Owner password (encrypted Base64). 
     - parameter cryptoAlgorithm: (query) Cryptographic algorithm, see CryptoAlgorithm for details. 
     - parameter permissionsFlags: (query) Array of document permissions, see PermissionsFlags for details. (optional)
     - parameter usePdf20: (query) Support for revision 6 (Extension 8). (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be encrypted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putEncryptDocumentWithRequestBuilder(outPath: String, userPassword: String, ownerPassword: String, cryptoAlgorithm: CryptoAlgorithm_putEncryptDocument, permissionsFlags: [PermissionsFlags]? = nil, usePdf20: Bool? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/encrypt"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "userPassword": userPassword, 
            "ownerPassword": ownerPassword, 
            "cryptoAlgorithm": cryptoAlgorithm.rawValue, 
            "permissionsFlags": permissionsFlags, 
            "usePdf20": usePdf20, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 
     - parameter storage: (query) The document storage. (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putEpubInStorageToPdf(name: String, srcPath: String, storage: String? = nil, dstFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putEpubInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, storage: storage, dstFolder: dstFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/epub
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.epub) 
     - parameter storage: (query) The document storage. (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putEpubInStorageToPdfWithRequestBuilder(name: String, srcPath: String, storage: String? = nil, dstFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/epub"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "storage": storage, 
            "dstFolder": dstFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Export fields from from PDF in storage to FDF file in storage.
     
     - parameter name: (path) The document name. 
     - parameter fdfOutputFilePath: (query) The output Fdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putExportFieldsFromPdfToFdfInStorage(name: String, fdfOutputFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putExportFieldsFromPdfToFdfInStorageWithRequestBuilder(name: name, fdfOutputFilePath: fdfOutputFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Export fields from from PDF in storage to FDF file in storage.
     - PUT /pdf/{name}/export/fdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter fdfOutputFilePath: (query) The output Fdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putExportFieldsFromPdfToFdfInStorageWithRequestBuilder(name: String, fdfOutputFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/export/fdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "fdfOutputFilePath": fdfOutputFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Export fields from from PDF in storage to XFDF file in storage.
     
     - parameter name: (path) The document name. 
     - parameter xfdfOutputFilePath: (query) The output xfdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putExportFieldsFromPdfToXfdfInStorage(name: String, xfdfOutputFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putExportFieldsFromPdfToXfdfInStorageWithRequestBuilder(name: name, xfdfOutputFilePath: xfdfOutputFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Export fields from from PDF in storage to XFDF file in storage.
     - PUT /pdf/{name}/export/xfdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter xfdfOutputFilePath: (query) The output xfdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putExportFieldsFromPdfToXfdfInStorageWithRequestBuilder(name: String, xfdfOutputFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/export/xfdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "xfdfOutputFilePath": xfdfOutputFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Export fields from from PDF in storage to XML file in storage.
     
     - parameter name: (path) The document name. 
     - parameter xmlOutputFilePath: (query) The output xml file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putExportFieldsFromPdfToXmlInStorage(name: String, xmlOutputFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putExportFieldsFromPdfToXmlInStorageWithRequestBuilder(name: name, xmlOutputFilePath: xmlOutputFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Export fields from from PDF in storage to XML file in storage.
     - PUT /pdf/{name}/export/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter xmlOutputFilePath: (query) The output xml file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putExportFieldsFromPdfToXmlInStorageWithRequestBuilder(name: String, xmlOutputFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/export/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "xmlOutputFilePath": xmlOutputFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Flatten form fields in document.
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFieldsFlatten(name: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putFieldsFlattenWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/fields/flatten"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document FileAttachment annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFileAttachmentAnnotation(name: String, annotationId: String, annotation: FileAttachmentAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FileAttachmentAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putFileAttachmentAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document FileAttachment annotation
     - PUT /pdf/{name}/annotations/fileattachment/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FileAttachmentAnnotationResponse> 
     */
    open class func putFileAttachmentAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: FileAttachmentAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FileAttachmentAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/fileattachment/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FileAttachmentAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Extract document FileAttachment annotation content to storage
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFolder: (query) The output folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFileAttachmentAnnotationDataExtract(name: String, annotationId: String, outFolder: String? = nil, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putFileAttachmentAnnotationDataExtractWithRequestBuilder(name: name, annotationId: annotationId, outFolder: outFolder, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document FileAttachment annotation content to storage
     - PUT /pdf/{name}/annotations/fileattachment/{annotationId}/data/extract
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFolder: (query) The output folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putFileAttachmentAnnotationDataExtractWithRequestBuilder(name: String, annotationId: String, outFolder: String? = nil, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/fileattachment/{annotationId}/data/extract"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outFolder": outFolder, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document free text annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFreeTextAnnotation(name: String, annotationId: String, annotation: FreeTextAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FreeTextAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putFreeTextAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document free text annotation
     - PUT /pdf/{name}/annotations/freetext/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FreeTextAnnotationResponse> 
     */
    open class func putFreeTextAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: FreeTextAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FreeTextAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/freetext/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<FreeTextAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document highlight annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putHighlightAnnotation(name: String, annotationId: String, annotation: HighlightAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: HighlightAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putHighlightAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document highlight annotation
     - PUT /pdf/{name}/annotations/highlight/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<HighlightAnnotationResponse> 
     */
    open class func putHighlightAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: HighlightAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<HighlightAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/highlight/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<HighlightAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putHtmlInStorageToPdf(name: String, srcPath: String, htmlFileName: String? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putHtmlInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, htmlFileName: htmlFileName, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/html
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.zip) 
     - parameter htmlFileName: (query) Name of HTML file in ZIP. (optional)
     - parameter height: (query) Page height (optional)
     - parameter width: (query) Page width (optional)
     - parameter isLandscape: (query) Is page landscaped (optional)
     - parameter marginLeft: (query) Page margin left (optional)
     - parameter marginBottom: (query) Page margin bottom (optional)
     - parameter marginRight: (query) Page margin right (optional)
     - parameter marginTop: (query) Page margin top (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putHtmlInStorageToPdfWithRequestBuilder(name: String, srcPath: String, htmlFileName: String? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in GIF format to folder
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImageExtractAsGif(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImageExtractAsGifWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in GIF format to folder
     - PUT /pdf/{name}/images/{imageId}/extract/gif
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImageExtractAsGifWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in JPEG format to folder
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImageExtractAsJpeg(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImageExtractAsJpegWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in JPEG format to folder
     - PUT /pdf/{name}/images/{imageId}/extract/jpeg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImageExtractAsJpegWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in PNG format to folder
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImageExtractAsPng(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImageExtractAsPngWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in PNG format to folder
     - PUT /pdf/{name}/images/{imageId}/extract/png
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImageExtractAsPngWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document image in TIFF format to folder
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImageExtractAsTiff(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImageExtractAsTiffWithRequestBuilder(name: name, imageId: imageId, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document image in TIFF format to folder
     - PUT /pdf/{name}/images/{imageId}/extract/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) Image ID. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImageExtractAsTiffWithRequestBuilder(name: String, imageId: String, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}/extract/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert image file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter imageTemplates: (body) ImageTemplatesRequestImage templates 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImageInStorageToPdf(name: String, imageTemplates: ImageTemplatesRequest, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImageInStorageToPdfWithRequestBuilder(name: name, imageTemplates: imageTemplates, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert image file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter imageTemplates: (body) ImageTemplatesRequestImage templates 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImageInStorageToPdfWithRequestBuilder(name: String, imageTemplates: ImageTemplatesRequest, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/images"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: imageTemplates)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Extract document images in GIF format to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsGif(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsGifWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in GIF format to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/gif
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImagesExtractAsGifWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/gif"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document images in JPEG format to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsJpeg(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsJpegWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in JPEG format to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/jpeg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImagesExtractAsJpegWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/jpeg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document images in PNG format to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsPng(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsPngWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in PNG format to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/png
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImagesExtractAsPngWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/png"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Extract document images in TIFF format to folder.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImagesExtractAsTiff(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImagesExtractAsTiffWithRequestBuilder(name: name, pageNumber: pageNumber, width: width, height: height, storage: storage, folder: folder, destFolder: destFolder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document images in TIFF format to folder.
     - PUT /pdf/{name}/pages/{pageNumber}/images/extract/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter destFolder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImagesExtractAsTiffWithRequestBuilder(name: String, pageNumber: Int, width: Int? = nil, height: Int? = nil, storage: String? = nil, folder: String? = nil, destFolder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/pages/{pageNumber}/images/extract/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{pageNumber}", with: "\(pageNumber)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "folder": folder, 
            "destFolder": destFolder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from FDF file in storage.
     
     - parameter name: (path) The document name. 
     - parameter fdfFilePath: (query) The Fdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImportFieldsFromFdfInStorage(name: String, fdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImportFieldsFromFdfInStorageWithRequestBuilder(name: name, fdfFilePath: fdfFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from FDF file in storage.
     - PUT /pdf/{name}/import/fdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter fdfFilePath: (query) The Fdf file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImportFieldsFromFdfInStorageWithRequestBuilder(name: String, fdfFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/import/fdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "fdfFilePath": fdfFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from XFDF file in storage.
     
     - parameter name: (path) The document name. 
     - parameter xfdfFilePath: (query) The XFDF file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImportFieldsFromXfdfInStorage(name: String, xfdfFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImportFieldsFromXfdfInStorageWithRequestBuilder(name: name, xfdfFilePath: xfdfFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from XFDF file in storage.
     - PUT /pdf/{name}/import/xfdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter xfdfFilePath: (query) The XFDF file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImportFieldsFromXfdfInStorageWithRequestBuilder(name: String, xfdfFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/import/xfdf"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "xfdfFilePath": xfdfFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update fields from XML file in storage.
     
     - parameter name: (path) The document name. 
     - parameter xmlFilePath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putImportFieldsFromXmlInStorage(name: String, xmlFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putImportFieldsFromXmlInStorageWithRequestBuilder(name: name, xmlFilePath: xmlFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update fields from XML file in storage.
     - PUT /pdf/{name}/import/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter xmlFilePath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putImportFieldsFromXmlInStorageWithRequestBuilder(name: String, xmlFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/import/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "xmlFilePath": xmlFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document ink annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putInkAnnotation(name: String, annotationId: String, annotation: InkAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: InkAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putInkAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document ink annotation
     - PUT /pdf/{name}/annotations/ink/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<InkAnnotationResponse> 
     */
    open class func putInkAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: InkAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<InkAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/ink/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<InkAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putLaTeXInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putLaTeXInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/latex
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.tex) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putLaTeXInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/latex"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document line annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putLineAnnotation(name: String, annotationId: String, annotation: LineAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LineAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putLineAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document line annotation
     - PUT /pdf/{name}/annotations/line/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LineAnnotationResponse> 
     */
    open class func putLineAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: LineAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LineAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/line/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LineAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document page link annotations
     
     - parameter name: (path) The document name. 
     - parameter linkId: (path) The link ID. 
     - parameter link: (body) Link anotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putLinkAnnotation(name: String, linkId: String, link: LinkAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: LinkAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putLinkAnnotationWithRequestBuilder(name: name, linkId: linkId, link: link, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document page link annotations
     - PUT /pdf/{name}/links/{linkId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter linkId: (path) The link ID. 
     - parameter link: (body) Link anotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<LinkAnnotationResponse> 
     */
    open class func putLinkAnnotationWithRequestBuilder(name: String, linkId: String, link: LinkAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<LinkAnnotationResponse> {
        var pathUrl = "/pdf/{name}/links/{linkId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{linkId}", with: "\(linkId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: link)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<LinkAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Merge a list of documents.
     
     - parameter name: (path) Resulting documen name. 
     - parameter mergeDocuments: (body) MergeDocuments with a list of documents. 
     - parameter storage: (query) Resulting document storage. (optional)
     - parameter folder: (query) Resulting document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMergeDocuments(name: String, mergeDocuments: MergeDocuments, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) Resulting documen name. 
     - parameter mergeDocuments: (body) MergeDocuments with a list of documents. 
     - parameter storage: (query) Resulting document storage. (optional)
     - parameter folder: (query) Resulting document folder. (optional)

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func putMergeDocumentsWithRequestBuilder(name: String, mergeDocuments: MergeDocuments, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentResponse> {
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMhtInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putMhtInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/mht
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.mht) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putMhtInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/mht"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document movie annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMovieAnnotation(name: String, annotationId: String, annotation: MovieAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: MovieAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putMovieAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document movie annotation
     - PUT /pdf/{name}/annotations/movie/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<MovieAnnotationResponse> 
     */
    open class func putMovieAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: MovieAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<MovieAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/movie/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<MovieAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add page stamp.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamp: (body) Stamp with data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageAddStamp(name: String, pageNumber: Int, stamp: Stamp, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter stamp: (body) Stamp with data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageAddStampWithRequestBuilder(name: String, pageNumber: Int, stamp: Stamp, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert document page to bmp image and upload resulting file to storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToBmp(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToBmpWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to bmp image and upload resulting file to storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/bmp
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageConvertToBmpWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to emf image and upload resulting file to storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToEmf(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToEmfWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to emf image and upload resulting file to storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/emf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageConvertToEmfWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to gif image and upload resulting file to storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToGif(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToGifWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to gif image and upload resulting file to storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/gif
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageConvertToGifWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Jpeg image and upload resulting file to storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToJpeg(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToJpegWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Jpeg image and upload resulting file to storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/jpeg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageConvertToJpegWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to png image and upload resulting file to storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToPng(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToPngWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to png image and upload resulting file to storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/png
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageConvertToPngWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert document page to Tiff image and upload resulting file to storage.
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPageConvertToTiff(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPageConvertToTiffWithRequestBuilder(name: name, pageNumber: pageNumber, outPath: outPath, width: width, height: height, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert document page to Tiff image and upload resulting file to storage.
     - PUT /pdf/{name}/pages/{pageNumber}/convert/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter pageNumber: (path) The page number. 
     - parameter outPath: (query) The out path of result image. 
     - parameter width: (query) The converted image width. (optional, default to 0)
     - parameter height: (query) The converted image height. (optional, default to 0)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPageConvertToTiffWithRequestBuilder(name: String, pageNumber: Int, outPath: String, width: Int? = nil, height: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPclInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPclInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/pcl
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.pcl) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPclInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/pcl"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToDoc(outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToDocWithRequestBuilder(outPath: outPath, addReturnToLineEnd: addReturnToLineEnd, format: format, imageResolutionX: imageResolutionX, imageResolutionY: imageResolutionY, maxDistanceBetweenTextLines: maxDistanceBetweenTextLines, mode: mode, recognizeBullets: recognizeBullets, relativeHorizontalProximity: relativeHorizontalProximity, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
     - PUT /pdf/convert/doc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToDocWithRequestBuilder(outPath: String, addReturnToLineEnd: Bool? = nil, format: Format_putPdfInRequestToDoc? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: Mode_putPdfInRequestToDoc? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "format": format?.rawValue, 
            "imageResolutionX": imageResolutionX?.encodeToJSON(), 
            "imageResolutionY": imageResolutionY?.encodeToJSON(), 
            "maxDistanceBetweenTextLines": maxDistanceBetweenTextLines, 
            "mode": mode?.rawValue, 
            "recognizeBullets": recognizeBullets, 
            "relativeHorizontalProximity": relativeHorizontalProximity, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) Property tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToEpub(outPath: String, contentRecognitionMode: String? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToEpubWithRequestBuilder(outPath: outPath, contentRecognitionMode: contentRecognitionMode, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
     - PUT /pdf/convert/epub
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) Property tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToEpubWithRequestBuilder(outPath: String, contentRecognitionMode: ContentRecognitionMode_putPdfInRequestToEpub? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "contentRecognitionMode": contentRecognitionMode?.rawValue, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToHtml(outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToHtmlWithRequestBuilder(outPath: outPath, additionalMarginWidthInPoints: additionalMarginWidthInPoints, compressSvgGraphicsIfAny: compressSvgGraphicsIfAny, convertMarkedContentToLayers: convertMarkedContentToLayers, defaultFontName: defaultFontName, documentType: documentType, fixedLayout: fixedLayout, imageResolution: imageResolution, minimalLineWidth: minimalLineWidth, preventGlyphsGrouping: preventGlyphsGrouping, splitCssIntoPages: splitCssIntoPages, splitIntoPages: splitIntoPages, useZOrder: useZOrder, antialiasingProcessing: antialiasingProcessing, cssClassNamesPrefix: cssClassNamesPrefix, explicitListOfSavedPages: explicitListOfSavedPages, fontEncodingStrategy: fontEncodingStrategy, fontSavingMode: fontSavingMode, htmlMarkupGenerationMode: htmlMarkupGenerationMode, lettersPositioningMethod: lettersPositioningMethod, pagesFlowTypeDependsOnViewersScreenSize: pagesFlowTypeDependsOnViewersScreenSize, partsEmbeddingMode: partsEmbeddingMode, rasterImagesSavingMode: rasterImagesSavingMode, removeEmptyAreasOnTopAndBottom: removeEmptyAreasOnTopAndBottom, saveShadowedTextsAsTransparentTexts: saveShadowedTextsAsTransparentTexts, saveTransparentTexts: saveTransparentTexts, specialFolderForAllImages: specialFolderForAllImages, specialFolderForSvgImages: specialFolderForSvgImages, trySaveTextUnderliningAndStrikeoutingInCss: trySaveTextUnderliningAndStrikeoutingInCss, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to Html format and uploads resulting file to storage.
     - PUT /pdf/convert/html
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToHtmlWithRequestBuilder(outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: DocumentType_putPdfInRequestToHtml? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: AntialiasingProcessing_putPdfInRequestToHtml? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: FontEncodingStrategy_putPdfInRequestToHtml? = nil, fontSavingMode: FontSavingMode_putPdfInRequestToHtml? = nil, htmlMarkupGenerationMode: HtmlMarkupGenerationMode_putPdfInRequestToHtml? = nil, lettersPositioningMethod: LettersPositioningMethod_putPdfInRequestToHtml? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: PartsEmbeddingMode_putPdfInRequestToHtml? = nil, rasterImagesSavingMode: RasterImagesSavingMode_putPdfInRequestToHtml? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "documentType": documentType?.rawValue, 
            "fixedLayout": fixedLayout, 
            "imageResolution": imageResolution?.encodeToJSON(), 
            "minimalLineWidth": minimalLineWidth?.encodeToJSON(), 
            "preventGlyphsGrouping": preventGlyphsGrouping, 
            "splitCssIntoPages": splitCssIntoPages, 
            "splitIntoPages": splitIntoPages, 
            "useZOrder": useZOrder, 
            "antialiasingProcessing": antialiasingProcessing?.rawValue, 
            "cssClassNamesPrefix": cssClassNamesPrefix, 
            "explicitListOfSavedPages": explicitListOfSavedPages, 
            "fontEncodingStrategy": fontEncodingStrategy?.rawValue, 
            "fontSavingMode": fontSavingMode?.rawValue, 
            "htmlMarkupGenerationMode": htmlMarkupGenerationMode?.rawValue, 
            "lettersPositioningMethod": lettersPositioningMethod?.rawValue, 
            "pagesFlowTypeDependsOnViewersScreenSize": pagesFlowTypeDependsOnViewersScreenSize, 
            "partsEmbeddingMode": partsEmbeddingMode?.rawValue, 
            "rasterImagesSavingMode": rasterImagesSavingMode?.rawValue, 
            "removeEmptyAreasOnTopAndBottom": removeEmptyAreasOnTopAndBottom, 
            "saveShadowedTextsAsTransparentTexts": saveShadowedTextsAsTransparentTexts, 
            "saveTransparentTexts": saveTransparentTexts, 
            "specialFolderForAllImages": specialFolderForAllImages, 
            "specialFolderForSvgImages": specialFolderForSvgImages, 
            "trySaveTextUnderliningAndStrikeoutingInCss": trySaveTextUnderliningAndStrikeoutingInCss, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToLaTeX(outPath: String, pagesCount: Int? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToLaTeXWithRequestBuilder(outPath: outPath, pagesCount: pagesCount, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
     - PUT /pdf/convert/latex
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToLaTeXWithRequestBuilder(outPath: String, pagesCount: Int? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "pagesCount": pagesCount?.encodeToJSON(), 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToMobiXml(outPath: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToMobiXmlWithRequestBuilder(outPath: outPath, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
     - PUT /pdf/convert/mobixml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToMobiXmlWithRequestBuilder(outPath: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/convert/mobixml"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToPdfA(outPath: String, type: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToPdfAWithRequestBuilder(outPath: outPath, type: type, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
     - PUT /pdf/convert/pdfa
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToPdfAWithRequestBuilder(outPath: String, type: ModelType_putPdfInRequestToPdfA, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "type": type.rawValue, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToPptx(outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToPptxWithRequestBuilder(outPath: outPath, separateImages: separateImages, slidesAsImages: slidesAsImages, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
     - PUT /pdf/convert/pptx
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToPptxWithRequestBuilder(outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "slidesAsImages": slidesAsImages, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToSvg(outPath: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToSvgWithRequestBuilder(outPath: outPath, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
     - PUT /pdf/convert/svg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToSvgWithRequestBuilder(outPath: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToTiff(outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToTiffWithRequestBuilder(outPath: outPath, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
     - PUT /pdf/convert/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToTiffWithRequestBuilder(outPath: String, brightness: Double? = nil, compression: Compression_putPdfInRequestToTiff? = nil, colorDepth: ColorDepth_putPdfInRequestToTiff? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: Orientation_putPdfInRequestToTiff? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "compression": compression?.rawValue, 
            "colorDepth": colorDepth?.rawValue, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation?.rawValue, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON(), 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXls(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXlsWithRequestBuilder(outPath: outPath, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
     - PUT /pdf/convert/xls
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToXlsWithRequestBuilder(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
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
            "uniformWorksheets": uniformWorksheets, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xlsx) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXlsx(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXlsxWithRequestBuilder(outPath: outPath, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.
     - PUT /pdf/convert/xlsx
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xlsx) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToXlsxWithRequestBuilder(outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/convert/xlsx"
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
            "uniformWorksheets": uniformWorksheets, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XML format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXml(outPath: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXmlWithRequestBuilder(outPath: outPath, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XML format and uploads resulting file to storage.
     - PUT /pdf/convert/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToXmlWithRequestBuilder(outPath: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/convert/xml"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInRequestToXps(outPath: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInRequestToXpsWithRequestBuilder(outPath: outPath, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
     - PUT /pdf/convert/xps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInRequestToXpsWithRequestBuilder(outPath: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/convert/xps"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToDoc(name: String, outPath: String, addReturnToLineEnd: Bool? = nil, format: String? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: String? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToDocWithRequestBuilder(name: name, outPath: outPath, addReturnToLineEnd: addReturnToLineEnd, format: format, imageResolutionX: imageResolutionX, imageResolutionY: imageResolutionY, maxDistanceBetweenTextLines: maxDistanceBetweenTextLines, mode: mode, recognizeBullets: recognizeBullets, relativeHorizontalProximity: relativeHorizontalProximity, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/doc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToDocWithRequestBuilder(name: String, outPath: String, addReturnToLineEnd: Bool? = nil, format: Format_putPdfInStorageToDoc? = nil, imageResolutionX: Int? = nil, imageResolutionY: Int? = nil, maxDistanceBetweenTextLines: Double? = nil, mode: Mode_putPdfInStorageToDoc? = nil, recognizeBullets: Bool? = nil, relativeHorizontalProximity: Double? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/doc"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "addReturnToLineEnd": addReturnToLineEnd, 
            "format": format?.rawValue, 
            "imageResolutionX": imageResolutionX?.encodeToJSON(), 
            "imageResolutionY": imageResolutionY?.encodeToJSON(), 
            "maxDistanceBetweenTextLines": maxDistanceBetweenTextLines, 
            "mode": mode?.rawValue, 
            "recognizeBullets": recognizeBullets, 
            "relativeHorizontalProximity": relativeHorizontalProximity, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) Property tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToEpub(name: String, outPath: String, contentRecognitionMode: String? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToEpubWithRequestBuilder(name: name, outPath: outPath, contentRecognitionMode: contentRecognitionMode, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/epub
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.epub) 
     - parameter contentRecognitionMode: (query) Property tunes conversion for this or that desirable method of recognition of content. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToEpubWithRequestBuilder(name: String, outPath: String, contentRecognitionMode: ContentRecognitionMode_putPdfInStorageToEpub? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/epub"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "contentRecognitionMode": contentRecognitionMode?.rawValue, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToHtml(name: String, outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: String? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: String? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: String? = nil, fontSavingMode: String? = nil, htmlMarkupGenerationMode: String? = nil, lettersPositioningMethod: String? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: String? = nil, rasterImagesSavingMode: String? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToHtmlWithRequestBuilder(name: name, outPath: outPath, additionalMarginWidthInPoints: additionalMarginWidthInPoints, compressSvgGraphicsIfAny: compressSvgGraphicsIfAny, convertMarkedContentToLayers: convertMarkedContentToLayers, defaultFontName: defaultFontName, documentType: documentType, fixedLayout: fixedLayout, imageResolution: imageResolution, minimalLineWidth: minimalLineWidth, preventGlyphsGrouping: preventGlyphsGrouping, splitCssIntoPages: splitCssIntoPages, splitIntoPages: splitIntoPages, useZOrder: useZOrder, antialiasingProcessing: antialiasingProcessing, cssClassNamesPrefix: cssClassNamesPrefix, explicitListOfSavedPages: explicitListOfSavedPages, fontEncodingStrategy: fontEncodingStrategy, fontSavingMode: fontSavingMode, htmlMarkupGenerationMode: htmlMarkupGenerationMode, lettersPositioningMethod: lettersPositioningMethod, pagesFlowTypeDependsOnViewersScreenSize: pagesFlowTypeDependsOnViewersScreenSize, partsEmbeddingMode: partsEmbeddingMode, rasterImagesSavingMode: rasterImagesSavingMode, removeEmptyAreasOnTopAndBottom: removeEmptyAreasOnTopAndBottom, saveShadowedTextsAsTransparentTexts: saveShadowedTextsAsTransparentTexts, saveTransparentTexts: saveTransparentTexts, specialFolderForAllImages: specialFolderForAllImages, specialFolderForSvgImages: specialFolderForSvgImages, trySaveTextUnderliningAndStrikeoutingInCss: trySaveTextUnderliningAndStrikeoutingInCss, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to Html format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/html
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToHtmlWithRequestBuilder(name: String, outPath: String, additionalMarginWidthInPoints: Int? = nil, compressSvgGraphicsIfAny: Bool? = nil, convertMarkedContentToLayers: Bool? = nil, defaultFontName: String? = nil, documentType: DocumentType_putPdfInStorageToHtml? = nil, fixedLayout: Bool? = nil, imageResolution: Int? = nil, minimalLineWidth: Int? = nil, preventGlyphsGrouping: Bool? = nil, splitCssIntoPages: Bool? = nil, splitIntoPages: Bool? = nil, useZOrder: Bool? = nil, antialiasingProcessing: AntialiasingProcessing_putPdfInStorageToHtml? = nil, cssClassNamesPrefix: String? = nil, explicitListOfSavedPages: [Int]? = nil, fontEncodingStrategy: FontEncodingStrategy_putPdfInStorageToHtml? = nil, fontSavingMode: FontSavingMode_putPdfInStorageToHtml? = nil, htmlMarkupGenerationMode: HtmlMarkupGenerationMode_putPdfInStorageToHtml? = nil, lettersPositioningMethod: LettersPositioningMethod_putPdfInStorageToHtml? = nil, pagesFlowTypeDependsOnViewersScreenSize: Bool? = nil, partsEmbeddingMode: PartsEmbeddingMode_putPdfInStorageToHtml? = nil, rasterImagesSavingMode: RasterImagesSavingMode_putPdfInStorageToHtml? = nil, removeEmptyAreasOnTopAndBottom: Bool? = nil, saveShadowedTextsAsTransparentTexts: Bool? = nil, saveTransparentTexts: Bool? = nil, specialFolderForAllImages: String? = nil, specialFolderForSvgImages: String? = nil, trySaveTextUnderliningAndStrikeoutingInCss: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "documentType": documentType?.rawValue, 
            "fixedLayout": fixedLayout, 
            "imageResolution": imageResolution?.encodeToJSON(), 
            "minimalLineWidth": minimalLineWidth?.encodeToJSON(), 
            "preventGlyphsGrouping": preventGlyphsGrouping, 
            "splitCssIntoPages": splitCssIntoPages, 
            "splitIntoPages": splitIntoPages, 
            "useZOrder": useZOrder, 
            "antialiasingProcessing": antialiasingProcessing?.rawValue, 
            "cssClassNamesPrefix": cssClassNamesPrefix, 
            "explicitListOfSavedPages": explicitListOfSavedPages, 
            "fontEncodingStrategy": fontEncodingStrategy?.rawValue, 
            "fontSavingMode": fontSavingMode?.rawValue, 
            "htmlMarkupGenerationMode": htmlMarkupGenerationMode?.rawValue, 
            "lettersPositioningMethod": lettersPositioningMethod?.rawValue, 
            "pagesFlowTypeDependsOnViewersScreenSize": pagesFlowTypeDependsOnViewersScreenSize, 
            "partsEmbeddingMode": partsEmbeddingMode?.rawValue, 
            "rasterImagesSavingMode": rasterImagesSavingMode?.rawValue, 
            "removeEmptyAreasOnTopAndBottom": removeEmptyAreasOnTopAndBottom, 
            "saveShadowedTextsAsTransparentTexts": saveShadowedTextsAsTransparentTexts, 
            "saveTransparentTexts": saveTransparentTexts, 
            "specialFolderForAllImages": specialFolderForAllImages, 
            "specialFolderForSvgImages": specialFolderForSvgImages, 
            "trySaveTextUnderliningAndStrikeoutingInCss": trySaveTextUnderliningAndStrikeoutingInCss, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToLaTeX(name: String, outPath: String, pagesCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToLaTeXWithRequestBuilder(name: name, outPath: outPath, pagesCount: pagesCount, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/latex
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.tex) 
     - parameter pagesCount: (query) Pages count. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToLaTeXWithRequestBuilder(name: String, outPath: String, pagesCount: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/latex"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "pagesCount": pagesCount?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToMobiXml(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToMobiXmlWithRequestBuilder(name: name, outPath: outPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/mobixml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.mobixml) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToMobiXmlWithRequestBuilder(name: String, outPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/mobixml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToPdfA(name: String, outPath: String, type: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToPdfAWithRequestBuilder(name: name, outPath: outPath, type: type, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/pdfa
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter type: (query) Type of PdfA format. 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToPdfAWithRequestBuilder(name: String, outPath: String, type: ModelType_putPdfInStorageToPdfA, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/pdfa"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "type": type.rawValue, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToPptx(name: String, outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToPptxWithRequestBuilder(name: name, outPath: outPath, separateImages: separateImages, slidesAsImages: slidesAsImages, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/pptx
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pptx) 
     - parameter separateImages: (query) Separate images. (optional)
     - parameter slidesAsImages: (query) Slides as images. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToPptxWithRequestBuilder(name: String, outPath: String, separateImages: Bool? = nil, slidesAsImages: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/pptx"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "separateImages": separateImages, 
            "slidesAsImages": slidesAsImages, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToSvg(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToSvgWithRequestBuilder(name: name, outPath: outPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/svg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.svg) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToSvgWithRequestBuilder(name: String, outPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/svg"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToTiff(name: String, outPath: String, brightness: Double? = nil, compression: String? = nil, colorDepth: String? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: String? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToTiffWithRequestBuilder(name: name, outPath: outPath, brightness: brightness, compression: compression, colorDepth: colorDepth, leftMargin: leftMargin, rightMargin: rightMargin, topMargin: topMargin, bottomMargin: bottomMargin, orientation: orientation, skipBlankPages: skipBlankPages, width: width, height: height, xResolution: xResolution, yResolution: yResolution, pageIndex: pageIndex, pageCount: pageCount, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/tiff
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToTiffWithRequestBuilder(name: String, outPath: String, brightness: Double? = nil, compression: Compression_putPdfInStorageToTiff? = nil, colorDepth: ColorDepth_putPdfInStorageToTiff? = nil, leftMargin: Int? = nil, rightMargin: Int? = nil, topMargin: Int? = nil, bottomMargin: Int? = nil, orientation: Orientation_putPdfInStorageToTiff? = nil, skipBlankPages: Bool? = nil, width: Int? = nil, height: Int? = nil, xResolution: Int? = nil, yResolution: Int? = nil, pageIndex: Int? = nil, pageCount: Int? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/tiff"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "brightness": brightness, 
            "compression": compression?.rawValue, 
            "colorDepth": colorDepth?.rawValue, 
            "leftMargin": leftMargin?.encodeToJSON(), 
            "rightMargin": rightMargin?.encodeToJSON(), 
            "topMargin": topMargin?.encodeToJSON(), 
            "bottomMargin": bottomMargin?.encodeToJSON(), 
            "orientation": orientation?.rawValue, 
            "skipBlankPages": skipBlankPages, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "xResolution": xResolution?.encodeToJSON(), 
            "yResolution": yResolution?.encodeToJSON(), 
            "pageIndex": pageIndex?.encodeToJSON(), 
            "pageCount": pageCount?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXls(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXlsWithRequestBuilder(name: name, outPath: outPath, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xls
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xls) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToXlsWithRequestBuilder(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xlsx) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXlsx(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXlsxWithRequestBuilder(name: name, outPath: outPath, insertBlankColumnAtFirst: insertBlankColumnAtFirst, minimizeTheNumberOfWorksheets: minimizeTheNumberOfWorksheets, scaleFactor: scaleFactor, uniformWorksheets: uniformWorksheets, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xlsx
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xlsx) 
     - parameter insertBlankColumnAtFirst: (query) Insert blank column at first (optional)
     - parameter minimizeTheNumberOfWorksheets: (query) Minimize the number of worksheets (optional)
     - parameter scaleFactor: (query) Scale factor (optional)
     - parameter uniformWorksheets: (query) Uniform worksheets (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToXlsxWithRequestBuilder(name: String, outPath: String, insertBlankColumnAtFirst: Bool? = nil, minimizeTheNumberOfWorksheets: Bool? = nil, scaleFactor: Double? = nil, uniformWorksheets: Bool? = nil, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xlsx"
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
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XML format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXml(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXmlWithRequestBuilder(name: name, outPath: outPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XML format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xml) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToXmlWithRequestBuilder(name: String, outPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPdfInStorageToXps(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPdfInStorageToXpsWithRequestBuilder(name: name, outPath: outPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.xps) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPdfInStorageToXpsWithRequestBuilder(name: String, outPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document polyline annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPolyLineAnnotation(name: String, annotationId: String, annotation: PolyLineAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolyLineAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPolyLineAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document polyline annotation
     - PUT /pdf/{name}/annotations/polyline/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolyLineAnnotationResponse> 
     */
    open class func putPolyLineAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: PolyLineAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolyLineAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/polyline/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolyLineAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document polygon annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPolygonAnnotation(name: String, annotationId: String, annotation: PolygonAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PolygonAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPolygonAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document polygon annotation
     - PUT /pdf/{name}/annotations/polygon/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PolygonAnnotationResponse> 
     */
    open class func putPolygonAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: PolygonAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PolygonAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/polygon/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PolygonAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document popup annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPopupAnnotation(name: String, annotationId: String, annotation: PopupAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: PopupAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPopupAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document popup annotation
     - PUT /pdf/{name}/annotations/popup/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<PopupAnnotationResponse> 
     */
    open class func putPopupAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: PopupAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<PopupAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/popup/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<PopupAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update privilege document.
     
     - parameter name: (path) The document name. 
     - parameter privileges: (body) Document privileges. DocumentPrivilege 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPrivileges(name: String, privileges: DocumentPrivilege, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPrivilegesWithRequestBuilder(name: name, privileges: privileges, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Update privilege document.
     - PUT /pdf/{name}/privileges
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter privileges: (body) Document privileges. DocumentPrivilege 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPrivilegesWithRequestBuilder(name: String, privileges: DocumentPrivilege, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/privileges"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: privileges)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putPsInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putPsInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/ps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.ps) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putPsInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/ps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document redaction annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putRedactionAnnotation(name: String, annotationId: String, annotation: RedactionAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: RedactionAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putRedactionAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document redaction annotation
     - PUT /pdf/{name}/annotations/redaction/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<RedactionAnnotationResponse> 
     */
    open class func putRedactionAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: RedactionAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<RedactionAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/redaction/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<RedactionAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document image.
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) The image ID. 
     - parameter imageFilePath: (query) Path to image file if specified. Request content is used otherwise. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter image: (form) Image file. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putReplaceImage(name: String, imageId: String, imageFilePath: String? = nil, storage: String? = nil, folder: String? = nil, image: URL? = nil, completion: @escaping ((_ data: ImageResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putReplaceImageWithRequestBuilder(name: name, imageId: imageId, imageFilePath: imageFilePath, storage: storage, folder: folder, image: image).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document image.
     - PUT /pdf/{name}/images/{imageId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter imageId: (path) The image ID. 
     - parameter imageFilePath: (query) Path to image file if specified. Request content is used otherwise. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter image: (form) Image file. (optional)

     - returns: RequestBuilder<ImageResponse> 
     */
    open class func putReplaceImageWithRequestBuilder(name: String, imageId: String, imageFilePath: String? = nil, storage: String? = nil, folder: String? = nil, image: URL? = nil) -> RequestBuilder<ImageResponse> {
        var pathUrl = "/pdf/{name}/images/{imageId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{imageId}", with: "\(imageId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "image": image
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "imageFilePath": imageFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ImageResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document screen annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putScreenAnnotation(name: String, annotationId: String, annotation: ScreenAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: ScreenAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putScreenAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document screen annotation
     - PUT /pdf/{name}/annotations/screen/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<ScreenAnnotationResponse> 
     */
    open class func putScreenAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: ScreenAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<ScreenAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/screen/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<ScreenAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Extract document screen annotation content to storage
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFilePath: (query) The output file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putScreenAnnotationDataExtract(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putScreenAnnotationDataExtractWithRequestBuilder(name: name, annotationId: annotationId, outFilePath: outFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document screen annotation content to storage
     - PUT /pdf/{name}/annotations/screen/{annotationId}/data/extract
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFilePath: (query) The output file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putScreenAnnotationDataExtractWithRequestBuilder(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/screen/{annotationId}/data/extract"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outFilePath": outFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
    open class func putSearchableDocument(name: String, storage: String? = nil, folder: String? = nil, lang: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter lang: (query) language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus  (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putSearchableDocumentWithRequestBuilder(name: String, storage: String? = nil, folder: String? = nil, lang: String? = nil) -> RequestBuilder<AsposeResponse> {
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
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add/update document property.
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter value: (query)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSetProperty(name: String, propertyName: String, value: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: DocumentPropertyResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSetPropertyWithRequestBuilder(name: name, propertyName: propertyName, value: value, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Add/update document property.
     - PUT /pdf/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path)  
     - parameter propertyName: (path)  
     - parameter value: (query)  
     - parameter storage: (query)  (optional)
     - parameter folder: (query)  (optional)

     - returns: RequestBuilder<DocumentPropertyResponse> 
     */
    open class func putSetPropertyWithRequestBuilder(name: String, propertyName: String, value: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<DocumentPropertyResponse> {
        var pathUrl = "/pdf/{name}/documentproperties/{propertyName}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{propertyName}", with: "\(propertyName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "value": value, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<DocumentPropertyResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document sound annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSoundAnnotation(name: String, annotationId: String, annotation: SoundAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SoundAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSoundAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document sound annotation
     - PUT /pdf/{name}/annotations/sound/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SoundAnnotationResponse> 
     */
    open class func putSoundAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: SoundAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SoundAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/sound/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SoundAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Extract document sound annotation content to storage
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFilePath: (query) The output file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSoundAnnotationDataExtract(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSoundAnnotationDataExtractWithRequestBuilder(name: name, annotationId: annotationId, outFilePath: outFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document sound annotation content to storage
     - PUT /pdf/{name}/annotations/sound/{annotationId}/data/extract
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFilePath: (query) The output file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putSoundAnnotationDataExtractWithRequestBuilder(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/sound/{annotationId}/data/extract"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outFilePath": outFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document square annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSquareAnnotation(name: String, annotationId: String, annotation: SquareAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquareAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSquareAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document square annotation
     - PUT /pdf/{name}/annotations/square/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquareAnnotationResponse> 
     */
    open class func putSquareAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: SquareAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquareAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/square/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquareAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document squiggly annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSquigglyAnnotation(name: String, annotationId: String, annotation: SquigglyAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: SquigglyAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSquigglyAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document squiggly annotation
     - PUT /pdf/{name}/annotations/squiggly/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<SquigglyAnnotationResponse> 
     */
    open class func putSquigglyAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: SquigglyAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<SquigglyAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/squiggly/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<SquigglyAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document stamp annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putStampAnnotation(name: String, annotationId: String, annotation: StampAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StampAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putStampAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document stamp annotation
     - PUT /pdf/{name}/annotations/stamp/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StampAnnotationResponse> 
     */
    open class func putStampAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: StampAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StampAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/stamp/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StampAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Extract document stamp annotation content to storage
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFilePath: (query) The output file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putStampAnnotationDataExtract(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putStampAnnotationDataExtractWithRequestBuilder(name: name, annotationId: annotationId, outFilePath: outFilePath, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Extract document stamp annotation content to storage
     - PUT /pdf/{name}/annotations/stamp/{annotationId}/data/extract
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter outFilePath: (query) The output file path. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putStampAnnotationDataExtractWithRequestBuilder(name: String, annotationId: String, outFilePath: String, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/annotations/stamp/{annotationId}/data/extract"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outFilePath": outFilePath, 
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document StrikeOut annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putStrikeOutAnnotation(name: String, annotationId: String, annotation: StrikeOutAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: StrikeOutAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putStrikeOutAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document StrikeOut annotation
     - PUT /pdf/{name}/annotations/strikeout/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<StrikeOutAnnotationResponse> 
     */
    open class func putStrikeOutAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: StrikeOutAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<StrikeOutAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/strikeout/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<StrikeOutAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSvgInStorageToPdf(name: String, srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putSvgInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, adjustPageSize: adjustPageSize, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/svg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putSvgInStorageToPdfWithRequestBuilder(name: String, srcPath: String, adjustPageSize: Bool? = nil, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace document page table.
     
     - parameter name: (path) The document name. 
     - parameter tableId: (path) The table ID. 
     - parameter table: (body) The table. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putTable(name: String, tableId: String, table: Table, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putTableWithRequestBuilder(name: name, tableId: tableId, table: table, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document page table.
     - PUT /pdf/{name}/tables/{tableId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter tableId: (path) The table ID. 
     - parameter table: (body) The table. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putTableWithRequestBuilder(name: String, tableId: String, table: Table, storage: String? = nil, folder: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/tables/{tableId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{tableId}", with: "\(tableId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: table)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document text annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putTextAnnotation(name: String, annotationId: String, annotation: TextAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: TextAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putTextAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document text annotation
     - PUT /pdf/{name}/annotations/text/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<TextAnnotationResponse> 
     */
    open class func putTextAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: TextAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<TextAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/text/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<TextAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Replace document underline annotation
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUnderlineAnnotation(name: String, annotationId: String, annotation: UnderlineAnnotation, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: UnderlineAnnotationResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putUnderlineAnnotationWithRequestBuilder(name: name, annotationId: annotationId, annotation: annotation, storage: storage, folder: folder).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Replace document underline annotation
     - PUT /pdf/{name}/annotations/underline/{annotationId}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter annotationId: (path) The annotation ID. 
     - parameter annotation: (body) Annotation. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<UnderlineAnnotationResponse> 
     */
    open class func putUnderlineAnnotationWithRequestBuilder(name: String, annotationId: String, annotation: UnderlineAnnotation, storage: String? = nil, folder: String? = nil) -> RequestBuilder<UnderlineAnnotationResponse> {
        var pathUrl = "/pdf/{name}/annotations/underline/{annotationId}"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        pathUrl = pathUrl.replacingOccurrences(of: "{annotationId}", with: "\(annotationId)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: annotation)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storage": storage, 
            "folder": folder
        ])
        

        let requestBuilder: RequestBuilder<UnderlineAnnotationResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update field.
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The name of a field to be updated. 
     - parameter field: (body) Field with the field data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateField(name: String, fieldName: String, field: Field, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter fieldName: (path) The name of a field to be updated. 
     - parameter field: (body) Field with the field data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FieldResponse> 
     */
    open class func putUpdateFieldWithRequestBuilder(name: String, fieldName: String, field: Field, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FieldResponse> {
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
     - parameter fields: (body) Fields with the fields data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putUpdateFields(name: String, fields: Fields, storage: String? = nil, folder: String? = nil, completion: @escaping ((_ data: FieldsResponse?,_ error: Error?) -> Void)) {
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
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example=""}]
     
     - parameter name: (path) The document name. 
     - parameter fields: (body) Fields with the fields data. 
     - parameter storage: (query) The document storage. (optional)
     - parameter folder: (query) The document folder. (optional)

     - returns: RequestBuilder<FieldsResponse> 
     */
    open class func putUpdateFieldsWithRequestBuilder(name: String, fields: Fields, storage: String? = nil, folder: String? = nil) -> RequestBuilder<FieldsResponse> {
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
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putWebInStorageToPdf(name: String, url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putWebInStorageToPdfWithRequestBuilder(name: name, url: url, height: height, width: width, isLandscape: isLandscape, marginLeft: marginLeft, marginBottom: marginBottom, marginRight: marginRight, marginTop: marginTop, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert web page to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/web
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
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
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putWebInStorageToPdfWithRequestBuilder(name: String, url: String, height: Double? = nil, width: Double? = nil, isLandscape: Bool? = nil, marginLeft: Double? = nil, marginBottom: Double? = nil, marginRight: Double? = nil, marginTop: Double? = nil, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
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
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXfaPdfInRequestToAcroForm(outPath: String, storage: String? = nil, file: URL? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXfaPdfInRequestToAcroFormWithRequestBuilder(outPath: outPath, storage: storage, file: file).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
     - PUT /pdf/convert/xfatoacroform
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter storage: (query) The document storage. (optional)
     - parameter file: (form) A file to be converted. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putXfaPdfInRequestToAcroFormWithRequestBuilder(outPath: String, storage: String? = nil, file: URL? = nil) -> RequestBuilder<AsposeResponse> {
        let pathUrl = "/pdf/convert/xfatoacroform"
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "file": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXfaPdfInStorageToAcroForm(name: String, outPath: String, folder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXfaPdfInStorageToAcroFormWithRequestBuilder(name: name, outPath: outPath, folder: folder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
     - PUT /pdf/{name}/convert/xfatoacroform
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter outPath: (query) Full resulting filename (ex. /folder1/folder2/result.pdf) 
     - parameter folder: (query) The document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putXfaPdfInStorageToAcroFormWithRequestBuilder(name: String, outPath: String, folder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/convert/xfatoacroform"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXmlInStorageToPdf(name: String, srcPath: String, xslFilePath: String? = nil, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXmlInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, xslFilePath: xslFilePath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/xml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xml) 
     - parameter xslFilePath: (query) Full XSL source filename (ex. /folder1/folder2/template.xsl) (optional)
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putXmlInStorageToPdfWithRequestBuilder(name: String, srcPath: String, xslFilePath: String? = nil, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/xml"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "xslFilePath": xslFilePath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXpsInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXpsInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/xps
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xps) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putXpsInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/xps"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xpsfo) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putXslFoInStorageToPdf(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil, completion: @escaping ((_ data: AsposeResponse?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            putXslFoInStorageToPdfWithRequestBuilder(name: name, srcPath: srcPath, dstFolder: dstFolder, storage: storage).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
     - PUT /pdf/{name}/create/xslfo
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Status" : "Status",
  "Code" : 0
}}]
     
     - parameter name: (path) The document name. 
     - parameter srcPath: (query) Full source filename (ex. /folder1/folder2/template.xpsfo) 
     - parameter dstFolder: (query) The destination document folder. (optional)
     - parameter storage: (query) The document storage. (optional)

     - returns: RequestBuilder<AsposeResponse> 
     */
    open class func putXslFoInStorageToPdfWithRequestBuilder(name: String, srcPath: String, dstFolder: String? = nil, storage: String? = nil) -> RequestBuilder<AsposeResponse> {
        var pathUrl = "/pdf/{name}/create/xslfo"
        pathUrl = pathUrl.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "srcPath": srcPath, 
            "dstFolder": dstFolder, 
            "storage": storage
        ])
        

        let requestBuilder: RequestBuilder<AsposeResponse>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Check if storage exists
     
     - parameter storageName: (path) Storage name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func storageExists(storageName: String, completion: @escaping ((_ data: StorageExist?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            storageExistsWithRequestBuilder(storageName: storageName).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Check if storage exists
     - GET /pdf/storage/{storageName}/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Exists" : true
}}]
     
     - parameter storageName: (path) Storage name 

     - returns: RequestBuilder<StorageExist> 
     */
    open class func storageExistsWithRequestBuilder(storageName: String) -> RequestBuilder<StorageExist> {
        var pathUrl = "/pdf/storage/{storageName}/exist"
        pathUrl = pathUrl.replacingOccurrences(of: "{storageName}", with: "\(storageName)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let parameters: [String:Any]? = nil

        let urlObj = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StorageExist>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Upload file
     
     - parameter path: (path) Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              
     - parameter file: (form) File to upload 
     - parameter storageName: (query) Storage name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(path: String, file: URL, storageName: String? = nil, completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        AuthAspose.checkAuth() {
            (authError) in
            guard authError == nil else {
                completion(nil, authError)
                return
            }
            uploadFileWithRequestBuilder(path: path, file: file, storageName: storageName).execute { (response, error) -> Void in
                completion(response?.body, error);
            }
        }
    }


    /**
     Upload file
     - PUT /pdf/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "Errors" : [ {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  }, {
    "Description" : "Description",
    "Message" : "Message",
    "InnerError" : {
      "RequestId" : "RequestId",
      "Date" : "2000-01-23T04:56:07.000+00:00"
    },
    "Code" : "Code"
  } ],
  "Uploaded" : [ "Uploaded", "Uploaded" ]
}}]
     
     - parameter path: (path) Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              
     - parameter file: (form) File to upload 
     - parameter storageName: (query) Storage name (optional)

     - returns: RequestBuilder<FilesUploadResult> 
     */
    open class func uploadFileWithRequestBuilder(path: String, file: URL, storageName: String? = nil) -> RequestBuilder<FilesUploadResult> {
        var pathUrl = "/pdf/storage/file/{path}"
        pathUrl = pathUrl.replacingOccurrences(of: "{path}", with: "\(path)", options: .literal, range: nil)
        let URLString = AsposePdfCloudAPI.basePath + pathUrl
        let formParams: [String:Any?] = [
            "File": file
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let urlObj = NSURLComponents(string: URLString)
        urlObj?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "storageName": storageName
        ])
        

        let requestBuilder: RequestBuilder<FilesUploadResult>.Type = AsposePdfCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlObj?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
