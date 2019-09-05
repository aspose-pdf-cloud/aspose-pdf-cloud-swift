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

class BookmarksTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentBookmarks() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentBookmarks")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentBookmarks(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentBookmarks")
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
    
    func testGetBookmarks() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testGetBookmarks")
        let bookmarkPath = "1/1"
        
        uploadFile(name: name) {
            
            PdfAPI.getBookmarks(name: name, bookmarkPath: bookmarkPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetBookmarks")
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
    
    func testGetBookmark() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testGetBookmark")
        let bookmarkPath = "1/1"
        
        uploadFile(name: name) {
            
            PdfAPI.getBookmark(name: name, bookmarkPath: bookmarkPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetBookmark")
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
    
    func testDeleteDocumentBookmarks() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testDeleteDocumentBookmarks")
        
        uploadFile(name: name) {
            
            PdfAPI.deleteDocumentBookmarks(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteDocumentBookmarks")
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
    
    func testDeleteBookmark() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testDeleteBookmark")
        let bookmarkPath = "1/1"
        
        uploadFile(name: name) {
            
            PdfAPI.deleteBookmark(name: name, bookmarkPath: bookmarkPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteBookmark")
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
    
    func testPostBookmark() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testPostBookmark")
        let bookmarkPath = "1/1"
        
        let bookmark = Bookmark(links: nil,
                                title: "New Bookmark swift",
                                italic: false,
                                bold: true,
                                color: Color(A: 255, R: 255, G: 0, B: 0),
                                action: "GoTo",
                                level: nil,
                                destination: nil,
                                pageDisplay: "XYZ",
                                pageDisplayBottom: 10,
                                pageDisplayLeft: 10,
                                pageDisplayRight: 10,
                                pageDisplayTop: 10,
                                pageDisplayZoom: 2,
                                pageNumber: 2,
                                remoteFile: nil,
                                bookmarks: nil)
        
        
        uploadFile(name: name) {
            
            PdfAPI.postBookmark(name: name, bookmarkPath: bookmarkPath, bookmarks: [bookmark], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostBookmark")
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
    
    func testPutBookmark() {
        let name = "PdfWithBookmarks.pdf"
        
        let expectation = self.expectation(description: "testPutBookmark")
        let bookmarkPath = "1/1"
        
        let bookmark = Bookmark(links: nil,
                                title: "New Bookmark swift",
                                italic: false,
                                bold: true,
                                color: Color(A: 255, R: 255, G: 0, B: 0),
                                action: "GoTo",
                                level: nil,
                                destination: nil,
                                pageDisplay: "XYZ",
                                pageDisplayBottom: 10,
                                pageDisplayLeft: 10,
                                pageDisplayRight: 10,
                                pageDisplayTop: 10,
                                pageDisplayZoom: 2,
                                pageNumber: 2,
                                remoteFile: nil,
                                bookmarks: nil)
        
        
        uploadFile(name: name) {
            
            PdfAPI.putBookmark(name: name, bookmarkPath: bookmarkPath, bookmark: bookmark, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutBookmark")
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
