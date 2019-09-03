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
        
        PdfAPI.uploadFile(path: path, file: file!) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file " + name)
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.uploaded?.count, 1)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testDownloadFile() {
        
        let name = "4pages.pdf"
        let path = "\(self.tempFolder)/\(name)"
        let expectation = self.expectation(description: "testDownloadFile")
        
        uploadFile(name: name) {
        
            PdfAPI.downloadFile(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDownloadFile")
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
    
    func testMoveFile() {
        
        let expectation = self.expectation(description: "testMoveFile")
        let name = "4pages.pdf"
        let src = self.tempFolder + "/" + name
        let dest = self.tempFolder + "/4pages_renamed.pdf"
        uploadFile(name: name) {
            PdfAPI.moveFile(srcPath: src, destPath: dest) {
                (error) in
                guard error == nil else {
                    XCTFail("error testMoveFile")
                    return
                }
                expectation.fulfill()
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
                (error) in
                guard error == nil else {
                    XCTFail("error testDeleteFile")
                    return
                }
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetFilesList() {
        
        let expectation = self.expectation(description: "testGetFilesList")
        
        PdfAPI.getFilesList(path: self.tempFolder) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testGetFilesList")
                return
            }
            
            if let response = response {
                XCTAssertGreaterThan(response.value!.count, 0)
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testCreateFolder() {
        
        let expectation = self.expectation(description: "testCreateFolder")

        let path = self.tempFolder + "/testFolder"

        PdfAPI.createFolder(path: path) {
            (error) in
            guard error == nil else {
                XCTFail("error testCreateFolder")
                return
            }
            expectation.fulfill()
        }
        
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testMoveFolder() {
        
        let expectation = self.expectation(description: "testMoveFolder")
        
        let src = self.tempFolder + "/testFolder"
        let dest = self.tempFolder + "/testFolderRenamed"
        
        PdfAPI.createFolder(path: src) {
            (error) in
            guard error == nil else {
                XCTFail("error testCreateFolder")
                return
            }
       
            PdfAPI.moveFolder(srcPath: src, destPath: dest) {
                (error) in
                guard error == nil else {
                    XCTFail("error testMoveFolder")
                    return
                }
                expectation.fulfill()
            }
        
        }
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testDeleteFolder() {
        
        let expectation = self.expectation(description: "testDeleteFolder")
        
        let path = self.tempFolder + "/testFolder"
        
        PdfAPI.createFolder(path: path) {
            (error) in
            guard error == nil else {
                XCTFail("error testCreateFolder")
                return
            }
            
            PdfAPI.deleteFolder(path: path) {
                (error) in
                guard error == nil else {
                    XCTFail("error testDeleteFolder")
                    return
                }
                expectation.fulfill()
            }
            
        }
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testStorageExistx() {
        
        let expectation = self.expectation(description: "testStorageExistx")
        
        let name = "PDF-CI"
        
            
        PdfAPI.storageExists(storageName: name) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testStorageExistx")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.exists, true)
                expectation.fulfill()
            }
        }
            
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func objectExists() {
        
        let expectation = self.expectation(description: "objectExists")
        let name = "4pages.pdf"
        let path = self.tempFolder + "/" + name
        
        uploadFile(name: name) {
            PdfAPI.objectExists(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error objectExists")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.exists, true)
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
                XCTAssertGreaterThan(response.totalSize, 0)
                expectation.fulfill()
            }
        }
        
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
    
    
    func testGetFileVersions() {
        
        let expectation = self.expectation(description: "testGetFileVersions")
        let name = "4pages.pdf"
        let path = self.tempFolder + "/" + name
        
        uploadFile(name: name) {
            PdfAPI.getFileVersions(path: path) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetFileVersions" + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertGreaterThan(response.value!.count, 0)
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: self.testTimeout, handler: nil)
    }
}
