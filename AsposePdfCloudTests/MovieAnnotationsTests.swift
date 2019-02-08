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

class MovieAnnotationsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentMovieAnnotations() {
        let name = "PdfWithAnnotations1.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentMovieAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentMovieAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentMovieAnnotations")
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
    
    
    func testGetPageMovieAnnotations() {
        let name = "PdfWithAnnotations1.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testGetPageMovieAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageMovieAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageMovieAnnotations")
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
    
    
    func testGetMovieAnnotation() {
        let name = "PdfWithAnnotations1.pdf"
        
        let expectation = self.expectation(description: "testGetMovieAnnotation")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentMovieAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentMovieAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.getMovieAnnotation(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetMovieAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentMovieAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageMovieAnnotations() {
        let name = "PdfWithAnnotations1.pdf"
        let attachmentFile = "4pages.pdf"
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageMovieAnnotations")
        
        let annotation = MovieAnnotation(
            links: nil,
            color: nil,
            contents: nil,
            modified: nil,
            id: nil,
            flags: [AnnotationFlags._default],
            name: "Name",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 200, URY: 200),
            pageIndex: nil,
            zIndex: 1,
            horizontalAlignment: HorizontalAlignment.center,
            verticalAlignment: VerticalAlignment._none,
            title: nil,
            fileName: attachmentFile,
            filePath: self.tempFolder + "/" + attachmentFile
        )
        
        uploadFiles(names: [name, attachmentFile]) {
            
            PdfAPI.postPageMovieAnnotations(name: name, pageNumber: pageNumber, annotations: [annotation], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageMovieAnnotations")
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
    
    
    func testPutMovieAnnotation() {
        let name = "PdfWithAnnotations1.pdf"
        let attachmentFile = "4pages.pdf"
        let expectation = self.expectation(description: "testPutMovieAnnotation")
        
        let annotation = MovieAnnotation(
            links: nil,
            color: nil,
            contents: nil,
            modified: nil,
            id: nil,
            flags: [AnnotationFlags._default],
            name: "Name",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 200, URY: 200),
            pageIndex: nil,
            zIndex: 1,
            horizontalAlignment: HorizontalAlignment.center,
            verticalAlignment: VerticalAlignment._none,
            title: nil,
            fileName: attachmentFile,
            filePath: self.tempFolder + "/" + attachmentFile
        )
        
        uploadFiles(names: [name, attachmentFile]) {
            PdfAPI.getDocumentMovieAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentMovieAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putMovieAnnotation(name: name, annotationId: annotationId, annotation: annotation, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutMovieAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentMovieAnnotations")
                    }
                }
            }
            
            
            
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}

