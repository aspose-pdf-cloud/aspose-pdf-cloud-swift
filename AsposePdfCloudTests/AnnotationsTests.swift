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

class AnnotationsTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentAnnotations")
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
    
    
    func testDeleteDocumentAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testDeleteDocumentAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.deleteDocumentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteDocumentAnnotations")
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
    
    
    func testGetPageAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testGetPageAnnotations")
        
        uploadFile(name: name) {

            PdfAPI.getPageAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageAnnotations")
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
    
    
    func testDeletePageAnnotations() {
        let name = "PdfWithAnnotations.pdf"
        
        let pageNumber = 2
        let expectation = self.expectation(description: "testDeletePageAnnotations")
        
        uploadFile(name: name) {
            
            PdfAPI.deletePageAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeletePageAnnotations")
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
    
    
    func testDeleteAnnotation() {
        let name = "PdfWithAnnotations.pdf"
        
        let expectation = self.expectation(description: "testDeleteAnnotation")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentAnnotations(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentAnnotations")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let annotations = response.annotations, let list = annotations.list, let annotationId = list[0].id {
                    
                        PdfAPI.deleteAnnotation(name: name, annotationId: annotationId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testDeleteAnnotation")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetDocumentFreeTextAnnotations")
                        
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
