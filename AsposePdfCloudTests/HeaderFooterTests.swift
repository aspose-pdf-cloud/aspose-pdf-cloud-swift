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

class HeaderFooterTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testPostDocumentTextHeader() {
        let name = "4pages.pdf"
        
        let expectation = self.expectation(description: "testPostDocumentTextHeader")
        
        let header = TextHeader(
            links: nil,
            background: true,
            horizontalAlignment: HorizontalAlignment.center,
            opacity: 1,
            rotate: Rotation._none,
            rotateAngle: 0,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            textAlignment: HorizontalAlignment.center,
            value: "Header",
            textState: TextState(
                fontSize: 14,
                font: "Arial Bold",
                foregroundColor: Color(A: 255, R: 255, G: 0, B: 0),
                backgroundColor: nil,
                fontStyle: FontStyles.regular),
            leftMargin: 1,
            topMargin: 2,
            rightMargin: 3
        )
        
        let startPage = 2
        let endPage = 3
        
        uploadFile(name: name) {
            
            PdfAPI.postDocumentTextHeader(name: name, textHeader: header,
                startPageNumber: startPage, endPageNumber: endPage, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDocumentTextHeader")
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
    
    func testPostDocumentTextFooter() {
        let name = "4pages.pdf"
        
        let expectation = self.expectation(description: "testPostDocumentTextFooter")
        
        let footer = TextFooter(
            links: nil,
            background: true,
            horizontalAlignment: HorizontalAlignment.center,
            opacity: 1,
            rotate: Rotation._none,
            rotateAngle: 0,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            textAlignment: HorizontalAlignment.center,
            value: "Header",
            textState: TextState(
                fontSize: 14,
                font: "Arial Bold",
                foregroundColor: Color(A: 255, R: 255, G: 0, B: 0),
                backgroundColor: nil,
                fontStyle: FontStyles.regular),
            bottomMargin: 2,
            leftMargin: 1,
            rightMargin: 3
        )
        
        let startPage = 2
        let endPage = 3
        
        uploadFile(name: name) {
            
            PdfAPI.postDocumentTextFooter(name: name, textFooter: footer,
              startPageNumber: startPage, endPageNumber: endPage, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDocumentTextFooter")
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
    
    func testPostDocumentImageFooter() {
        let name = "4pages.pdf"
        let image = "Koala.jpg"
        let expectation = self.expectation(description: "testPostDocumentImageFooter")
        
        let footer = ImageFooter(
            links: nil,
            background: true,
            horizontalAlignment: HorizontalAlignment.center,
            opacity: 1,
            rotate: Rotation._none,
            rotateAngle: 0,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            fileName: self.tempFolder + "/" + image,
            width: nil,
            height: nil,
            bottomMargin: 2,
            leftMargin: 1,
            rightMargin: 3
        )
        
        let startPage = 2
        let endPage = 3
        
        uploadFiles(names: [name, image]) {
            
            PdfAPI.postDocumentImageFooter(name: name, imageFooter: footer,
              startPageNumber: startPage, endPageNumber: endPage, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDocumentImageFooter")
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
    
    func testPostDocumentImageHeader() {
        let name = "4pages.pdf"
        let image = "Koala.jpg"
        let expectation = self.expectation(description: "testPostDocumentImageHeader")
        
        let header = ImageHeader(
            links: nil,
            background: true,
            horizontalAlignment: HorizontalAlignment.center,
            opacity: 1,
            rotate: Rotation._none,
            rotateAngle: 0,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            fileName: self.tempFolder + "/" + image,
            width: nil,
            height: nil,
            leftMargin: 1,
            topMargin: 2,
            rightMargin: 3
        )
        
        let startPage = 2
        let endPage = 3
        
        uploadFiles(names: [name, image]) {
            
            PdfAPI.postDocumentImageHeader(name: name, imageHeader: header,
                                           startPageNumber: startPage, endPageNumber: endPage, folder: self.tempFolder) {
                                            (response, error) in
                                            guard error == nil else {
                                                XCTFail("error testPostDocumentImageHeader")
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
