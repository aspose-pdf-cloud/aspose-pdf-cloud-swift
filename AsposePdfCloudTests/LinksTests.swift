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

class LinksTests: AsposePdfCloudTests {
    
    let fileName = "PdfWithLinks.pdf"
    
    func testGetPageLinkAnnotation() {
        
        let expectation = self.expectation(description: "testGetPageLinkAnnotation")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotations: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    let linkId = response.links?.list![0].id
                        
                    PdfAPI.getPageLinkAnnotation(name: self.fileName, pageNumber: pageNumber, linkId: linkId!, folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testGetPageLinkAnnotation: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeOk)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
 
    
    func testDeleteLinkAnnotation() {
        
        let expectation = self.expectation(description: "testDeleteLinkAnnotation")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotations: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    let linkId = response.links?.list![0].id
                    
                    PdfAPI.deleteLinkAnnotation(name: self.fileName, linkId: linkId!, folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testDeleteLinkAnnotation: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeOk)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetPageLinkAnnotations() {
        
        let expectation = self.expectation(description: "testGetPageLinkAnnotations")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotations: " + (error.debugDescription))
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
    
    
    func testPostPageLinkAnnotations() {
        
        let expectation = self.expectation(description: "testPostPageLinkAnnotations")
        let pageNumber = 1
        
        let link = LinkAnnotation(links: nil, actionType: LinkActionType.goToURIAction, action: "https://products.aspose.cloud/pdf", highlighting: nil, color: nil, rect: RectanglePdf(LLX: 100, LLY: 100, URX: 500, URY: 500), id: nil)
        
        
        uploadFile(name: fileName) {
            
            PdfAPI.postPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, links: [link], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostPageLinkAnnotations: " + (error.debugDescription))
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
    
    
    func testPutLinkAnnotation() {
        
        let expectation = self.expectation(description: "testPutLinkAnnotation")
        let pageNumber = 1
        
        let link = LinkAnnotation(links: nil, actionType: LinkActionType.goToURIAction, action: "https://products.aspose.cloud/pdf", highlighting: nil, color: nil, rect: RectanglePdf(LLX: 100, LLY: 100, URX: 500, URY: 500), id: nil)
        
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotations: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    let linkId: String = (response.links?.list![0].id)!
                    
                    PdfAPI.putLinkAnnotation(name: self.fileName, linkId: linkId, link: link, folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testPutLinkAnnotation: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeCreated)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
            
            
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testDeletePageLinkAnnotations() {
        
        let expectation = self.expectation(description: "testDeletePageLinkAnnotations")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.deletePageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeletePageLinkAnnotations: " + (error.debugDescription))
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
    
    
    func testDeleteDocumentLinkAnnotations() {
        
        let expectation = self.expectation(description: "testDeleteDocumentLinkAnnotations")
        
        uploadFile(name: fileName) {
            
            PdfAPI.deleteDocumentLinkAnnotations(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteDocumentLinkAnnotations: " + (error.debugDescription))
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
    
    
    func testGetLinkAnnotation() {
        
        let expectation = self.expectation(description: "testGetLinkAnnotation")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageLinkAnnotations(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageLinkAnnotations: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    let linkId = response.links?.list![0].id
                    
                    PdfAPI.getLinkAnnotation(name: self.fileName, linkId: linkId!, folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testGetLinkAnnotation: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeOk)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
