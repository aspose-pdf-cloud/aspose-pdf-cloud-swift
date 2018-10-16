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

class PagesTests: AsposePdfCloudTests {
    
    let fileName = "4pages.pdf"
    
    func testDeletePage() {
        
        let expectation = self.expectation(description: "testDeletePage")
        let pageNumber = 3
        
        uploadFile(name: fileName) {
            
            PdfAPI.deletePage(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeletePage: " + (error.debugDescription))
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
    
    
    func testGetPage() {
        
        let expectation = self.expectation(description: "testGetPage")
        let pageNumber = 3
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPage(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPage: " + (error.debugDescription))
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
    
    /*
    func testGetPageWithFormat() {
        
        let expectation = self.expectation(description: "testGetPageWithFormat")
        let pageNumber = 3
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPage(name: self.fileName,
                           pageNumber: pageNumber,
                           format: "jpeg",
                           width: 100,
                           height: 100,
                           folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageWithFormat: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    */
    
    func testGetPages() {
        
        let expectation = self.expectation(description: "testGetPages")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPages(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPages: " + (error.debugDescription))
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
    
    
    func testGetWordsPerPage() {
        
        let expectation = self.expectation(description: "testGetWordsPerPage")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getWordsPerPage(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetWordsPerPage: " + (error.debugDescription))
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
    
    
    func testPostMovePage() {
        
        let expectation = self.expectation(description: "testPostMovePage")
        
        uploadFile(name: fileName) {
            
            PdfAPI.postMovePage(name: self.fileName, pageNumber: 3, newIndex: 2, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostMovePage: " + (error.debugDescription))
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
    
    
    func testPutAddNewPage() {
        
        let expectation = self.expectation(description: "testPutAddNewPage")
        uploadFile(name: fileName) {
            
            PdfAPI.putAddNewPage(name: self.fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutAddNewPage: " + (error.debugDescription))
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
    
    
    func testPutPageAddStamp() {
        
        let expectation = self.expectation(description: "testPutPageAddStamp")
        let stampFile = "Penguins.jpg"
        let stamp = Stamp(type: StampType.image, background: true, bottomMargin: nil, horizontalAlignment: nil, leftMargin: nil, opacity: nil, rightMargin: nil, rotate: nil, rotateAngle: nil, topMargin: nil, verticalAlignment: nil, xIndent: 100, yIndent: 100, zoom: nil, textAlignment: nil, value: nil, textState: nil, fileName: "\(self.tempFolder)/\(stampFile)", width: 200, height: 200, pageIndex: nil, startingNumber: nil)
        
        
        uploadFiles(names: [fileName, stampFile]) {
            
            PdfAPI.putPageAddStamp(name: self.fileName, pageNumber: 1, stamp: stamp, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageAddStamp: " + (error.debugDescription))
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

