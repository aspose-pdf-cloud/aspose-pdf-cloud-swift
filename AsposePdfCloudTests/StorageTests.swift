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


class StorageTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testUploadFile() {
        let name = "MhtExample.mht"
        let path = self.tempFolder + "/" + name
        let file: URL? = getURL(name)
        
        if (nil == file) {
            XCTFail("no file found \(name)")
            return
        }
        
        let expectation = self.expectation(description: "testUploadFile")
        
        PdfAPI.putCreate(path: path, file: file!) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file " + name)
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetDownloadFile() {
        
        let name = "4pages.pdf"
        let path = "\(self.tempFolder)/\(name)"
        let expectation = self.expectation(description: "testGetDownloadFile")
        
        uploadFile(name: name) {
        
            PdfAPI.getDownload(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDownloadFile")
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    func testPostMoveFile() {
        
        let expectation = self.expectation(description: "testPostMoveFile")
        let name = "4pages.pdf"
        let src = self.tempFolder + "/" + name
        let dest = self.tempFolder + "/4pages_renamed.pdf"
        uploadFile(name: name) {
            PdfAPI.postMoveFile(src: src, dest: dest) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostMoveFile")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    func testDeleteFile() {
        
        let expectation = self.expectation(description: "testDeleteFile")
        let name = "4pages.pdf"
        let path = self.tempFolder + "/" + name
        
        uploadFile(name: name) {
            PdfAPI.deleteFile(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteFile")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetListFiles() {
        
        let expectation = self.expectation(description: "testGetListFiles")
        
        PdfAPI.getListFiles(path: self.tempFolder) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testGetListFiles")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testPutCreateFolder() {
        
        let expectation = self.expectation(description: "testPutCreateFolder")

        let path = self.tempFolder + "/testFolder"

        PdfAPI.putCreateFolder(path: path) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutCreateFolder")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                expectation.fulfill()
            }
        }
        
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testPostMoveFolder() {
        
        let expectation = self.expectation(description: "testPostMoveFolder")
        
        let src = self.tempFolder + "/testFolder"
        let dest = self.tempFolder + "/testFolderRenamed"
        
        PdfAPI.putCreateFolder(path: src) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutCreateFolder")
                return
            }
       
            PdfAPI.postMoveFolder(src: src, dest: dest) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostMoveFolder")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    expectation.fulfill()
                }
            }
        
        }
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testDeleteFolder() {
        
        let expectation = self.expectation(description: "testDeleteFolder")
        
        let path = self.tempFolder + "/testFolder"
        
        PdfAPI.putCreateFolder(path: path) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutCreateFolder")
                return
            }
            
            PdfAPI.deleteFolder(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteFolder")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    expectation.fulfill()
                }
            }
            
        }
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetIsStorageExist() {
        
        let expectation = self.expectation(description: "testGetIsStorageExist")
        
        let name = "PDF-CI"
        
            
        PdfAPI.getIsStorageExist(name: name) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testGetIsStorageExist")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                expectation.fulfill()
            }
        }
            
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetIsExist() {
        
        let expectation = self.expectation(description: "testGetIsExist")
        let name = "4pages.pdf"
        let path = self.tempFolder + "/" + name
        
        uploadFile(name: name) {
            PdfAPI.getIsExist(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetIsExist")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetDiscUsage() {
        let expectation = self.expectation(description: "testGetDiscUsage")
        
        PdfAPI.getDiscUsage() {
            (response, error) in
            guard error == nil else {
                XCTFail("error testGetDiscUsage")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                expectation.fulfill()
            }
        }
        
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetListFileVersions() {
        
        let expectation = self.expectation(description: "testGetListFileVersions")
        let name = "4pages.pdf"
        let path = self.tempFolder + "/" + name
        
        uploadFile(name: name) {
            PdfAPI.getListFileVersions(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetListFileVersions")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
}
