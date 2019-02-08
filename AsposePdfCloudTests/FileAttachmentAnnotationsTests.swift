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

class FileAttachmentAnnotationsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentFileAttachmentAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentFileAttachmentAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentFileAttachmentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentFileAttachmentAnnotations")
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
    
    
    func testGetPageFileAttachmentAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testGetPageFileAttachmentAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageFileAttachmentAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageFileAttachmentAnnotations")
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
    
    
    func testGetFileAttachmentAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetFileAttachmentAnnotation")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentFileAttachmentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.getFileAttachmentAnnotation(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetFileAttachmentAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageFileAttachmentAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        let attachmentFile = "4pages.pdf"
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageFileAttachmentAnnotations")
        
        let annotation = FileAttachmentAnnotation(
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
            creationDate: nil,
            subject: "Subject",
            title: "Title",
            richText: "Rich Text",
            icon: nil,
            opacity: nil,
            fileDescription: nil,
            fileName: attachmentFile,
            filePath: self.tempFolder + "/" + attachmentFile
        )
        
        uploadFiles(names: [name, attachmentFile]) {
            
            PdfAPI.postPageFileAttachmentAnnotations(name: name, pageNumber: pageNumber, annotations: [annotation], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageFileAttachmentAnnotations")
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
    
    
    func testPutFileAttachmentAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        let attachmentFile = "4pages.pdf"
        
        let expectation = self.expectation(description: "testPutFileAttachmentAnnotation")
        
        let annotation = FileAttachmentAnnotation(
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
            creationDate: nil,
            subject: "Subject",
            title: "Title",
            richText: "Rich Text",
            icon: nil,
            opacity: nil,
            fileDescription: nil,
            fileName: attachmentFile,
            filePath: self.tempFolder + "/" + attachmentFile
        )
        
        uploadFiles(names: [name, attachmentFile]) {
            PdfAPI.getDocumentFileAttachmentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putFileAttachmentAnnotation(name: name, annotationId: annotationId, annotation: annotation, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutFileAttachmentAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    }
                }
            }
            
            
            
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetFileAttachmentAnnotationData() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetFileAttachmentAnnotationData")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentFileAttachmentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.getFileAttachmentAnnotationData(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetFileAttachmentAnnotationData")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertFalse(response.isEmpty)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutFileAttachmentAnnotationDataExtract() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testPutFileAttachmentAnnotationDataExtract")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentFileAttachmentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putFileAttachmentAnnotationDataExtract(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutFileAttachmentAnnotationDataExtract")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentFileAttachmentAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}

