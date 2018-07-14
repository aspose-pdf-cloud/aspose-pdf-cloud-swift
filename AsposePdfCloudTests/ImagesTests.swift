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


class ImagesTests: AsposePdfCloudTests {
    
    let fileName = "PdfWithImages2.pdf"
    
    func testGetImage() {
        
        let expectation = self.expectation(description: "testGetImage")
        let pageNumber = 1
        let imageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImage(name: self.fileName, pageNumber: pageNumber, imageNumber: imageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImage: " + (error.debugDescription))
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
    
    
    func testGetImageWithFormat() {
        
        let expectation = self.expectation(description: "testGetImageWithFormat")
        let pageNumber = 1
        let imageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImage(name: self.fileName, pageNumber: pageNumber, imageNumber: imageNumber, format: "jpeg", width: 100, height: 100, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImageWithFormat: " + (error.debugDescription))
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

    
    func testGetImages() {
        
        let expectation = self.expectation(description: "testGetImages")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPostReplaceImage() {
        
        let imageName = "Koala.jpg"
        let expectation = self.expectation(description: "testPostReplaceImage")
        let pageNumber = 1
        let imageNumber = 1
        let imageFile = "\(self.tempFolder)/\(imageName)"
        uploadFiles(names: [fileName, imageName]) {
            
            PdfAPI.postReplaceImage(name: self.fileName, pageNumber: pageNumber, imageNumber: imageNumber, imageFile: imageFile, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostReplaceImage: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPostReplaceImageFromRequest() {
        
        let imageName = "Koala.jpg"
        let expectation = self.expectation(description: "testGetImages")
        let pageNumber = 1
        let imageNumber = 1
        let image = getURL(imageName)
        uploadFile(name: fileName) {
            
            PdfAPI.postReplaceImage(name: self.fileName, pageNumber: pageNumber, imageNumber: imageNumber, folder: self.tempFolder, image: image) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetSegments: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImagesExtractAsJpeg() {
        
        
        let expectation = self.expectation(description: "testPutImagesExtractAsJpeg")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_jpg"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putImagesExtractAsJpeg(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder, destFolder: destFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImagesExtractAsJpeg: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImagesExtractAsTiff() {
        
        
        let expectation = self.expectation(description: "testPutImagesExtractAsTiff")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_tiff"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putImagesExtractAsTiff(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder, destFolder: destFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImagesExtractAsTiff: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImagesExtractAsGif() {
        
        
        let expectation = self.expectation(description: "testPutImagesExtractAsGif")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_gif"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putImagesExtractAsGif(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder, destFolder: destFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImagesExtractAsGif: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImagesExtractAsPng() {
        
        
        let expectation = self.expectation(description: "testPutImagesExtractAsPng")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_png"
        
        uploadFile(name: fileName) {
            
            PdfAPI.putImagesExtractAsPng(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder, destFolder: destFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImagesExtractAsPng: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
