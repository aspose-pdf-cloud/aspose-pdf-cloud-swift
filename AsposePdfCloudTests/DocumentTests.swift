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

class DocumentTests: AsposePdfCloudTests {
    
    func testGetDocument() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testGetDocument")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocument(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocument")
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
    
    
    func testPostOptimizeDocument() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPostOptimizeDocument")
        let options = OptimizeOptions(
            allowReusePageContent: true,
            compressImages: true,
            imageQuality: 100,
            linkDuplcateStreams: true,
            removeUnusedObjects: true,
            removeUnusedStreams: true,
            unembedFonts: true,
            resizeImages: true,
            maxResolution: 3000,
            subsetFonts: true,
            removePrivateInfo: true,
            imageEncoding: ImageEncoding.unchanged,
            imageCompressionVersion: ImageCompressionVersion.standard
            );
        
        
        uploadFile(name: name) {
            
            PdfAPI.postOptimizeDocument(name: name, options: options, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostOptimizeDocument")
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
    
    
    func testPostSplitDocument() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPostSplitDocument")
        
        uploadFile(name: name) {
            
            PdfAPI.postSplitDocument(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostSplitDocument")
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
  
     func testCreateEmptyDocument() {
     
         let expectation = self.expectation(description: "testCreateEmptyDocument")
         let name = "empty_swift.pdf"
        
         PdfAPI.putCreateDocument(name: name, folder: self.tempFolder) { (response, error) in
         guard error == nil else {
             XCTFail("error testCreateEmptyDocument")
             return
         }
         
             if let response = response {
                 XCTAssertEqual(response.code, self.codeOk)
                
                 expectation.fulfill()
             }
         }
        
         self.waitForExpectations(timeout: testTimeout, handler: nil)
     }
    
    func testPostCreateDocument() {
    
        let expectation = self.expectation(description: "testPostCreateDocument")
        let name = "empty_swift.pdf"
       
        let documentConfig = DocumentConfig(
            displayProperties: DisplayProperties(
                links: nil,
                centerWindow: true,
                direction: Direction.l2R,
                displayDocTitle: true,
                hideMenuBar: true,
                hideToolBar: nil,
                hideWindowUI: nil,
                nonFullScreenPageMode: PageMode.useNone,
                pageLayout: PageLayout.twoPageRight,
                pageMode: PageMode.useOC
            ),
            documentProperties: DocumentProperties(
                links: nil,
                list: [
                    DocumentProperty(
                        links: nil,
                        name: "prop1",
                        value: "val1",
                        builtIn: false
                    ),
                ]
            ),
            pagesCount: 2,
            defaultPageConfig: DefaultPageConfig(
                height: 100,
                width: 100
            )
        );
        
        PdfAPI.postCreateDocument(name: name, documentConfig: documentConfig, folder: self.tempFolder) { (response, error) in
        guard error == nil else {
            XCTFail("error testPostCreateDocument")
            return
        }
        
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
               
                expectation.fulfill()
            }
        }
       
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetDocumentDisplayProperties() {
            
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testGetDocumentDisplayProperties")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentDisplayProperties(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentDisplayProperties: " + (error.debugDescription))
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
    
    func testPutDocumentDisplayProperties() {
            
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPutDocumentDisplayProperties")
        let displayProperties = DisplayProperties(
            links: nil,
            centerWindow: true,
            direction: Direction.l2R,
            displayDocTitle: true,
            hideMenuBar: true,
            hideToolBar: nil,
            hideWindowUI: nil,
            nonFullScreenPageMode: PageMode.useNone,
            pageLayout: PageLayout.twoPageRight,
            pageMode: PageMode.useOC
        )
        
        uploadFile(name: name) {
            
            PdfAPI.putDocumentDisplayProperties(name: name, displayProperties: displayProperties, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutDocumentDisplayProperties: " + (error.debugDescription))
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
