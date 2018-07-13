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

class TextTests: AsposePdfCloudTests {
    
    func testGetText() {
        
        let expectation = self.expectation(description: "testGetText")
        let fileName = "4pages.pdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getText(name: fileName, X: 0, Y: 0, width: 0, height: 0, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetText")
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
    
    
    func testGetPageText() {
        
        let expectation = self.expectation(description: "testGetPageText")
        let fileName = "4pages.pdf"
        let format = ["First Page", "Second Page"]
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageText(name: fileName, pageNumber: 1, X: 0, Y: 0, width: 0, height: 0, format: format, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageText")
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
