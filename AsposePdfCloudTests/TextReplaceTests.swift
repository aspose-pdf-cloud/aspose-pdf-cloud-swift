/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
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

class TextReplaceTests: AsposePdfCloudTests {
    
    private let fileName = "marketing.pdf"
    
    private var replaceListRequest: TextReplaceListRequest?
    
    func testPostDocumentTextReplace() {
        
        let expectation = self.expectation(description: "testPostDocumentTextReplace")
        let textReplaceListRequest = TextReplaceListRequest(
            textReplaces: [
                TextReplace(
                    oldValue: "market",
                    newValue: "m_a_r_k_e_t",
                    regex: false,
                    textState: nil,
                    rect: RectanglePdf(LLX: 100, LLY: 100, URX: 400, URY: 400)
                )
            ],
            defaultFont: nil,
            startIndex: 0,
            countReplace: 0)
        
        
        uploadFile(name: fileName) {
            
            PdfAPI.postDocumentTextReplace(name: self.fileName, textReplace: textReplaceListRequest, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDocumentTextReplace")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPostPageTextReplaceTest() {
        
        let expectation = self.expectation(description: "testPostPageTextReplaceTest")
        let textReplaceListRequest = TextReplaceListRequest(
            textReplaces: [
                TextReplace(
                    oldValue: "Page",
                    newValue: "P_a_g_e",
                    regex: false,
                    textState: nil,
                    rect: RectanglePdf(LLX: 100, LLY: 100, URX: 400, URY: 400)
                )
            ],
            defaultFont: nil,
            startIndex: 0,
            countReplace: 0)
        
        
        uploadFile(name: fileName) {
            
            PdfAPI.postPageTextReplace(name: self.fileName, pageNumber: 1, textReplaceListRequest: textReplaceListRequest, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageTextReplaceTest")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
