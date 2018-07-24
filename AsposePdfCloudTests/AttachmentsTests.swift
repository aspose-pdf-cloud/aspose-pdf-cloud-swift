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

class AttachmentsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
     }
    
    override func tearDown() {
         super.tearDown()
    }
    
    private let fileName = "PdfWithEmbeddedFiles.pdf"
    
    func testGetDocumentAttachmentByIndex() {

        let expectation = self.expectation(description: "testGetDocumentAttachmentByIndex")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getDocumentAttachmentByIndex(name: self.fileName, attachmentIndex: 1,                                               folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentAttachmentByIndex")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetDocumentAttachments() {
        
        let expectation = self.expectation(description: "testGetDocumentAttachments")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getDocumentAttachments(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentAttachments")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetDownloadDocumentAttachmentByIndex() {
        
        let expectation = self.expectation(description: "testGetDownloadDocumentAttachmentByIndex")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getDownloadDocumentAttachmentByIndex(name: self.fileName, attachmentIndex: 1,                                               folder: self.tempFolder) {
                (data, error) in
                guard error == nil else {
                    XCTFail("error testGetDownloadDocumentAttachmentByIndex")
                    return
                }
                
                if let data = data {
                    XCTAssertNotNil(data)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
