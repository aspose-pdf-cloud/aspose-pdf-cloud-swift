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

import XCTest
@testable import AsposePdfCloud

class StampsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentStamps() {
        let name = "PageNumberStamp.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentStamps")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentStamps(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentStamps")
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
    
    func testDeleteDocumentStamps() {
        let name = "PageNumberStamp.pdf"
        
        let expectation = self.expectation(description: "testDeleteDocumentStamps")
        
        uploadFile(name: name) {
            
            PdfAPI.deleteDocumentStamps(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteDocumentStamps")
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
    
    func testGetPageStamps() {
        let name = "PageNumberStamp.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testGetPageStamps")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageStamps(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageStamps")
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
    
    func testDeletePageStamps() {
        let name = "PageNumberStamp.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testDeletePageStamps")
        
        uploadFile(name: name) {
            
            PdfAPI.deletePageStamps(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeletePageStamps")
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
    
    func testPostPageTextStamps() {
        let name = "PageNumberStamp.pdf"
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageTextStamps")
        
        let stamp = TextStamp(
            links: nil,
            background: true,
            bottomMargin: 1,
            horizontalAlignment: HorizontalAlignment.center,
            leftMargin: 2,
            opacity: 1,
            rightMargin: 3,
            rotate: Rotation._none,
            rotateAngle: 0,
            topMargin: 4,
            verticalAlignment: VerticalAlignment.center,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            textAlignment: HorizontalAlignment.center,
            value: "Text Stamp",
            textState: TextState(fontSize: 14, font: nil, foregroundColor: nil, backgroundColor: nil, fontStyle: FontStyles.regular)
        )
        
        uploadFile(name: name) {
            
            PdfAPI.postPageTextStamps(name: name, pageNumber: pageNumber, stamps: [stamp], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageTextStamps")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeCreated)
                    
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostImageTextStamps() {
        let name = "PageNumberStamp.pdf"
        let image = "Koala.jpg"
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageImageStamps")
        
        let stamp = ImageStamp(
            links: nil,
            background: true,
            bottomMargin: 1,
            horizontalAlignment: HorizontalAlignment.center,
            leftMargin: 2,
            opacity: 1,
            rightMargin: 3,
            rotate: Rotation._none,
            rotateAngle: 0,
            topMargin: 4,
            verticalAlignment: VerticalAlignment.center,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            fileName: self.tempFolder + "/" + image,
            width: nil,
            height: nil
        )
        
        uploadFiles(names: [name, image]) {
            
            PdfAPI.postPageImageStamps(name: name, pageNumber: pageNumber, stamps: [stamp], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageImageStamps")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeCreated)
                    
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPdfPageStamps() {
        let name = "PageNumberStamp.pdf"
        let pdf = "4pages.pdf"
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPagePdfPageStamps")
        
        let stamp = PdfPageStamp(
            links: nil,
            background: true,
            bottomMargin: 1,
            horizontalAlignment: HorizontalAlignment.center,
            leftMargin: 2,
            opacity: 1,
            rightMargin: 3,
            rotate: Rotation._none,
            rotateAngle: 0,
            topMargin: 4,
            verticalAlignment: VerticalAlignment.center,
            xIndent: 0,
            yIndent: 0,
            zoom: 1,
            fileName: self.tempFolder + "/" + pdf,
            pageIndex: 2
        )
        
        uploadFiles(names: [name, pdf]) {
            
            PdfAPI.postPagePdfPageStamps(name: name, pageNumber: pageNumber, stamps: [stamp], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPagePdfPageStamps")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeCreated)
                    
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testDeleteStamp() {
        let name = "PageNumberStamp.pdf"
        
        let expectation = self.expectation(description: "testDeleteStamp")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentStamps(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentStamps")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let stamps = response.stamps, let list = stamps.list, let stampId = list[0].id {
                        
                        PdfAPI.deleteStamp(name: name, stampId: stampId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testDeleteStamp")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testDeleteStamp")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}

