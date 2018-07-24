/**
 *
 *   Copyright (c) 2018 Aspose.Pdf for Cloud
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

class PageConvertToImageTests: AsposePdfCloudTests {
    
    let fileName = "4pages.pdf"
    let pageNumber = 2
    
    
    // TIFF
    func testGetPageConvertToTiff() {
        
        let expectation = self.expectation(description: "testGetPageConvertToTiff")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageConvertToTiff(name: self.fileName, pageNumber: self.pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageConvertToTiff: " + (error.debugDescription))
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
    
    
    func testPutPageConvertToTiff() {
        
        let expectation = self.expectation(description: "testPutPageConvertToTiff")
        let resultFile = "page.tiff"
        let outPath = "\(self.tempFolder)/\(resultFile)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPageConvertToTiff(name: self.fileName, pageNumber: self.pageNumber, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageConvertToTiff: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // JPEG
    func testGetPageConvertToJpeg() {
        
        let expectation = self.expectation(description: "testGetPageConvertToJpeg")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageConvertToJpeg(name: self.fileName, pageNumber: self.pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageConvertToJpeg: " + (error.debugDescription))
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
    
    
    func testPutPageConvertToJpeg() {
        
        let expectation = self.expectation(description: "testPutPageConvertToJpeg")
        let resultFile = "page.jpeg"
        let outPath = "\(self.tempFolder)/\(resultFile)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPageConvertToJpeg(name: self.fileName, pageNumber: self.pageNumber, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageConvertToJpeg: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // PNG
    func testGetPageConvertToPng() {
        
        let expectation = self.expectation(description: "testGetPageConvertToPng")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageConvertToPng(name: self.fileName, pageNumber: self.pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageConvertToPng: " + (error.debugDescription))
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
    
    
    func testPutPageConvertToPng() {
        
        let expectation = self.expectation(description: "testPutPageConvertToPng")
        let resultFile = "page.png"
        let outPath = "\(self.tempFolder)/\(resultFile)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPageConvertToPng(name: self.fileName, pageNumber: self.pageNumber, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageConvertToPng: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // EMF
    func testGetPageConvertToEmf() {
        
        let expectation = self.expectation(description: "testGetPageConvertToEmf")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageConvertToEmf(name: self.fileName, pageNumber: self.pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageConvertToEmf: " + (error.debugDescription))
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
    
    
    func testPutPageConvertToEmf() {
        
        let expectation = self.expectation(description: "testPutPageConvertToEmf")
        let resultFile = "page.emf"
        let outPath = "\(self.tempFolder)/\(resultFile)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPageConvertToEmf(name: self.fileName, pageNumber: self.pageNumber, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageConvertToEmf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // BMP
    func testGetPageConvertToBmp() {
        
        let expectation = self.expectation(description: "testGetPageConvertToBmp")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageConvertToBmp(name: self.fileName, pageNumber: self.pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageConvertToBmp: " + (error.debugDescription))
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
    
    
    func testPutPageConvertToBmp() {
        
        let expectation = self.expectation(description: "testPutPageConvertToBmp")
        let resultFile = "page.bmp"
        let outPath = "\(self.tempFolder)/\(resultFile)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPageConvertToBmp(name: self.fileName, pageNumber: self.pageNumber, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageConvertToBmp: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // GIF
    func testGetPageConvertToGif() {
        
        let expectation = self.expectation(description: "testGetPageConvertToGif")
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageConvertToGif(name: self.fileName, pageNumber: self.pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageConvertToGif: " + (error.debugDescription))
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
    
    
    func testPutPageConvertToGif() {
        
        let expectation = self.expectation(description: "testPutPageConvertToGif")
        let resultFile = "page.gif"
        let outPath = "\(self.tempFolder)/\(resultFile)"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putPageConvertToGif(name: self.fileName, pageNumber: self.pageNumber, outPath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPageConvertToGif: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
