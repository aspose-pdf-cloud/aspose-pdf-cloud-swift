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

class SquareAnnotationsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentSquareAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentSquareAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSquareAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSquareAnnotations")
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
    
    
    func testGetPageSquareAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testGetPageSquareAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageSquareAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageSquareAnnotations")
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
    
    
    func testGetSquareAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetSquareAnnotation")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSquareAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSquareAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.deleteAnnotation(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetSquareAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentSquareAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageSquareAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageSquareAnnotations")
        
        let annotation = SquareAnnotation(
            links: nil,
            contents: nil,
            creationDate: nil,
            subject: "Subject",
            title: "Title",
            modified: nil,
            id: nil,
            flags: [AnnotationFlags._default],
            name: "Name",
            rect: RectanglePdf(LLX: 100, LLY: 100, URX: 200, URY: 200),
            pageIndex: nil,
            zIndex: 1,
            horizontalAlignment: HorizontalAlignment.center,
            verticalAlignment: VerticalAlignment._none,
            richText: "Rich Text",
            interiorColor: nil,
            frame: nil,
            color: nil
        )
        
        uploadFile(name: name) {
            
            PdfAPI.postPageSquareAnnotations(name: name, pageNumber: pageNumber, annotations: [annotation], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageSquareAnnotations")
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
    
    
    func testPutSquareAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testPutSquareAnnotation")
        
        let annotation = SquareAnnotation(
            links: nil,
            contents: nil,
            creationDate: nil,
            subject: "Subject Updated",
            title: "Title Updated",
            modified: nil,
            id: nil,
            flags: [AnnotationFlags._default],
            name: "Name Updated",
            rect: RectanglePdf(LLX: 100, LLY: 100, URX: 200, URY: 200),
            pageIndex: nil,
            zIndex: 1,
            horizontalAlignment: HorizontalAlignment.center,
            verticalAlignment: VerticalAlignment._none,
            richText: "Rich Text Updated",
            interiorColor: nil,
            frame: nil,
            color: nil
        )
        
        uploadFile(name: name) {
            PdfAPI.getDocumentSquareAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSquareAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putSquareAnnotation(name: name, annotationId: annotationId, annotation: annotation, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutSquareAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentSquareAnnotations")
                    }
                }
            }
            
            
            
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}


