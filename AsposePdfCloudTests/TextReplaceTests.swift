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

class TextReplaceTests: AsposePdfCloudTests {
    
    private let fileName = "4pages.pdf"
    
    private var replaceRequest: TextReplaceRequest?
    private var replaceListRequest: TextReplaceListRequest?
    
    
    override func setUp() {
        super.setUp()
        
        replaceRequest = CodableHelper.decode(
            TextReplaceRequest.self,
            from:
                """
                {
                    "OldValue": "Page",
                    "NewValue": "p_a_g_e",
                    "Regex": false
                }
                """.data(using: .utf8)!
            ).decodableObj!
        
        replaceListRequest = TextReplaceListRequest(
            textReplaces: [
                TextReplace(oldValue: "First", newValue: "1", regex: false, textState: nil, rect: nil),
                TextReplace(oldValue: "Page", newValue: "p_a_g_e", regex: false, textState: nil, rect: nil)
            ],
            defaultFont: nil,
            startIndex: nil,
            countReplace: nil
        )

        
    }
    
    func testPostDocumentReplaceText()
    {
        let expectation = self.expectation(description: "testPostDocumentReplaceText")
    
        let data: Data =
            """
            {
                "OldValue": "Page",
                "NewValue": "PagE",
                "Regex": false,
                "TextState": null,
                "Rect": null,
                "DefaultFont": null
            }
            """.data(using: .utf8)!
        let rr: TextReplaceRequest = CodableHelper.decode(TextReplaceRequest.self, from: data).decodableObj!
        
        uploadFile(name: self.fileName)
        {
            PdfAPI.postDocumentReplaceText(name: self.fileName, textReplace: rr, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDocumentReplaceText: " + (error.debugDescription))
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
    
    
    func testPostDocumentReplaceTextList() {
        
        let expectation = self.expectation(description: "testPostDocumentReplaceTextList")
        
        uploadFile(name: fileName) {
            
            PdfAPI.postDocumentReplaceTextList(name: self.fileName, textReplaceListRequest: self.replaceListRequest!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDocumentReplaceTextList")
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
    
    
    func testPostPageReplaceText() {
        
        let expectation = self.expectation(description: "testPostPageReplaceText")
        
        uploadFile(name: fileName) {
            
            PdfAPI.postPageReplaceText(name: self.fileName, pageNumber: 1, textReplace: self.replaceRequest!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageReplaceText")
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
    
    
    func testPostPageReplaceTextList() {
        
        let expectation = self.expectation(description: "testPostPageReplaceTextList")
        
        uploadFile(name: fileName) {
            
            PdfAPI.postPageReplaceTextList(name: self.fileName, pageNumber: 1, textReplaceListRequest: self.replaceListRequest!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageReplaceTextList")
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
    
    
    func testPostDocumentTextReplace() {
        
        let expectation = self.expectation(description: "testPostDocumentTextReplace")
        let textReplaceListRequest = TextReplaceListRequest(
            textReplaces: [
                TextReplace(
                    oldValue: "Page",
                    newValue: "P_a_g_e",
                    regex: false,
                    textState: nil,
                    rect: Rectangle(X: 100, Y: 700, width: 300, height: 300)
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
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
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
                    rect: Rectangle(X: 100, Y: 700, width: 300, height: 300)
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
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
