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


class ImagesTests: AsposePdfCloudTests {
    
    let fileName = "PdfWithImages2.pdf"
    
    func testGetImage() {
        
        let expectation = self.expectation(description: "testGetImage")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.getImage(name: self.fileName, imageId: imageId, storage: nil, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetImage: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testDeleteImage() {
        
        let expectation = self.expectation(description: "testDeleteImage")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.deleteImage(name: self.fileName, imageId: imageId, storage: nil, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testDeleteImage: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetImages() {
        
        let expectation = self.expectation(description: "testGetImages")
        let pageNumber = 1
        
        uploadFile(name: self.fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
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
    
    
    func testPutReplaceImage() {
        
        let imageName = "Koala.jpg"
        let expectation = self.expectation(description: "testPutReplaceImage")
        let pageNumber = 1
        let imageFilePath = "\(self.tempFolder)/\(imageName)"
        uploadFiles(names: [self.fileName, imageName]) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.putReplaceImage(name: self.fileName, imageId: imageId, imageFilePath: imageFilePath, storage: nil, folder: self.tempFolder, image: nil) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutReplaceImage: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPostInsertImage() {
        
        let imageName = "Koala.jpg"
        let expectation = self.expectation(description: "testPostInsertImage")
        let pageNumber = 1
        let image = getURL(imageName)
        uploadFile(name: fileName) {
            
            PdfAPI.postInsertImage(name: self.fileName, pageNumber: pageNumber, llx: 10, lly: 10, urx: 100, ury: 100, folder: self.tempFolder, image: image) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostInsertImage: " + (error.debugDescription))
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
                    XCTAssertEqual(response.code, self.codeOk)
                    
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
                    XCTAssertEqual(response.code, self.codeOk)
                    
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
                    XCTAssertEqual(response.code, self.codeOk)
                    
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
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImageExtractAsJpeg() {
        
        let expectation = self.expectation(description: "testPutImageExtractAsJpeg")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_jpg"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.putImageExtractAsJpeg(name: self.fileName, imageId: imageId, folder: self.tempFolder, destFolder: destFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutImageExtractAsJpeg: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetImageExtractAsJpeg() {
        
        let expectation = self.expectation(description: "testGetImageExtractAsJpeg")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.getImageExtractAsJpeg(name: self.fileName, imageId: imageId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetImageExtractAsJpeg: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertFalse(response.isEmpty)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImageExtractAsTiff() {
        
        let expectation = self.expectation(description: "testPutImageExtractAsTiff")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_tiff"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.putImageExtractAsTiff(name: self.fileName, imageId: imageId, folder: self.tempFolder, destFolder: destFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutImageExtractAsTiff: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetImageExtractAsTiff() {
        
        let expectation = self.expectation(description: "testGetImageExtractAsTiff")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.getImageExtractAsTiff(name: self.fileName, imageId: imageId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetImageExtractAsTiff: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertFalse(response.isEmpty)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImageExtractAsGif() {
        
        let expectation = self.expectation(description: "testPutImageExtractAsGif")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_gif"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.putImageExtractAsGif(name: self.fileName, imageId: imageId, folder: self.tempFolder, destFolder: destFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutImageExtractAsGif: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetImageExtractAsGif() {
        
        let expectation = self.expectation(description: "testGetImageExtractAsGif")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.getImageExtractAsGif(name: self.fileName, imageId: imageId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetImageExtractAsGif: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertFalse(response.isEmpty)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImageExtractAsPng() {
        
        let expectation = self.expectation(description: "testPutImageExtractAsPng")
        let pageNumber = 1
        let destFolder = "\(self.tempFolder)/extract_png"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.putImageExtractAsPng(name: self.fileName, imageId: imageId, folder: self.tempFolder, destFolder: destFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutImageExtractAsPng: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testGetImageExtractAsPng() {
        
        let expectation = self.expectation(description: "testGetImageExtractAsPng")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getImages(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImages: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let images = response.images, let list = images.list, let imageId = list[0].id {
                    
                        PdfAPI.getImageExtractAsPng(name: self.fileName, imageId: imageId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetImageExtractAsPng: " + (error.debugDescription))
                                return
                            }
                            
                            if let response = response {
                                XCTAssertFalse(response.isEmpty)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetImages: " + (error.debugDescription))
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
