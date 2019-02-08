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

class SoundAnnotationsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentSoundAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentSoundAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSoundAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSoundAnnotations")
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
    
    
    func testGetPageSoundAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testGetPageSoundAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageSoundAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageSoundAnnotations")
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
    
    
    func testGetSoundAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetSoundAnnotation")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSoundAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSoundAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.getSoundAnnotation(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetSoundAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentSoundAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageSoundAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        let attachmentFile = "4pages.pdf"
        let pageNumber = 1
        let expectation = self.expectation(description: "testPostPageSoundAnnotations")
        
        let annotation = SoundAnnotation(
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
            filePath: self.tempFolder + "/" + attachmentFile,
            icon: nil,
            rate: nil,
            channels: nil,
            bits: nil,
            encoding: nil
        )
        
        uploadFiles(names: [name, attachmentFile]) {
            
            PdfAPI.postPageSoundAnnotations(name: name, pageNumber: pageNumber, annotations: [annotation], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageSoundAnnotations")
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
    
    
    func testPutSoundAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        let attachmentFile = "4pages.pdf"
        
        let expectation = self.expectation(description: "testPutSoundAnnotation")
        
        let annotation = SoundAnnotation(
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
            filePath: self.tempFolder + "/" + attachmentFile,
            icon: nil,
            rate: nil,
            channels: nil,
            bits: nil,
            encoding: nil
        )
        
        uploadFiles(names: [name, attachmentFile]) {
            PdfAPI.getDocumentSoundAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSoundAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putSoundAnnotation(name: name, annotationId: annotationId, annotation: annotation, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutSoundAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentSoundAnnotations")
                    }
                }
            }
            
            
            
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetSoundAnnotationData() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetSoundAnnotationData")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSoundAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSoundAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.getSoundAnnotationData(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetSoundAnnotationData")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertFalse(response.isEmpty)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentSoundAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPutSoundAnnotationDataExtract() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testPutSoundAnnotationDataExtract")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSoundAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSoundAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                        
                        PdfAPI.putSoundAnnotationDataExtract(name: name, annotationId: annotationId, outFilePath: "outFile.dat", folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutSoundAnnotationDataExtract")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeCreated)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentSoundAnnotations")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}

