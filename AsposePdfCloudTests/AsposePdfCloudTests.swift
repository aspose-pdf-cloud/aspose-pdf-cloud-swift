/**
 *
 *   Copyright (c) 2020 Aspose.PDF Cloud
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

import XCTest
@testable import AsposePdfCloud

class AsposePdfCloudTests: XCTestCase {
    
    internal let tempFolder = "TempPdfCloud"
    internal let testDataFolder = "TestData"
    internal let testTimeout: TimeInterval = 160.0
    
    internal let codeOk = 200
    
    override func setUp() {
        super.setUp()
        
        // read App Key and App Sid from setup.json file
        // Get App key and App SID from https://cloud.aspose.com
        readSettings()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    private func readSettings() {
        if let path = Bundle(for: type(of: self)).path(forResource: "setup", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject> {
                    AsposePdfCloudAPI.appSid = jsonResult["app_sid"] as? String
                    AsposePdfCloudAPI.appKey = jsonResult["app_key"] as? String
                    
                    if let basePath = jsonResult["product_uri"] as? String
                    {
                        AsposePdfCloudAPI.basePath = basePath
                    }
                }
            } catch {
                XCTFail("error reading settings file")
            }
        }
    }
    
    internal func uploadFile(name: String, completion: @escaping ()->Void) {
        let path = "\(self.tempFolder)/\(name)"
        
        let url: URL? = getURL(name)
        if (nil == url) {
            XCTFail("no file found \(name)")
            return
        }
        
        PdfAPI.uploadFile(path: path, file: url!) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file \(name)")
                return
            }
            if let response = response, response.uploaded!.count == 1 {
                completion()
            } else {
                XCTFail("error uploading file \(name)")
            }
            
        }
    }

    internal func uploadFiles(names: [String], completion: @escaping ()->Void) {
        
        var _names = names
        
        if names.count > 1 {
            uploadFile(name: _names.removeFirst()) {
                self.uploadFiles(names: _names, completion: completion)
            }
        } else if names.count == 1 {
            uploadFile(name: _names.removeFirst(), completion: completion)
        } else {
            completion()
        }
        
    }
    
    internal func getURL(_ name: String) -> URL? {
        let bundle = Bundle(for: type(of: self))
        return bundle.url(forResource: name, withExtension: nil)
    }
}
