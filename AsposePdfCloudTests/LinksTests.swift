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

class LinksTests: AsposePdfCloudTests {
    
    let fileName = "PdfWithLinks.pdf"
    
    func testGetPageLinkAnnotationByIndex() {
        
        let expectation = self.expectation(description: "testGetPageLinkAnnotationByIndex")
        let pageNumber = 1
        let linkIndex = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotationByIndex(name: self.fileName, pageNumber: pageNumber, linkIndex: linkIndex, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotationByIndex: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetPageLinkAnnotations() {
        
        let expectation = self.expectation(description: "testGetPageLinkAnnotations")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotations: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
