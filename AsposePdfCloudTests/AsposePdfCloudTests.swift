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

import XCTest
@testable import AsposePdfCloud

class AsposePdfCloudTests: XCTestCase {
    
    internal let tempFolder = "TempPdfCloud"
    internal let testDataFolder = "TestData"
    internal let testTimeout = 60.0
    
    override func setUp() {
        super.setUp()
        AsposePdfCloudAPI.appSid = ""
        AsposePdfCloudAPI.appKey = ""
        AsposePdfCloudAPI.basePath = "http://api-dev.aspose.cloud/v1.1"
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    internal func uploadFile(name: String, completion: @escaping ()->Void) {
        let path = "\(self.tempFolder)/\(name)"
        let file = URL(fileURLWithPath: "\(self.testDataFolder)/\(name)")
        
        PdfAPI.putCreate(path: path, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file \(name)")
                return
            }
            
            if response?.code == HttpStatusCode.ok {
                print("file \(name) was uploaded")
                completion()
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
}
