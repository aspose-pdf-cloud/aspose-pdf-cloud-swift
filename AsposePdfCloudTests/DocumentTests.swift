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
                    XCTAssertFalse(response.isEmpty)
                    
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
            allowReusePageContent: false,
            compressImages: true,
            imageQuality: 100,
            linkDuplcateStreams: true,
            removeUnusedObjects: true,
            removeUnusedStreams: true,
            unembedFonts: true);
        
        
        uploadFile(name: name) {
            
            PdfAPI.postOptimizeDocument(name: name, options: options, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostOptimizeDocument")
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
                    XCTAssert(response.code == HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutConvertDocument() {
        
        let urlToFile = "http://pdf995.com/samples/pdf.pdf"
        let format = "tiff"
        
        let expectation = self.expectation(description: "testPutConvertDocument")
        
        PdfAPI.putConvertDocument(format: format, url: urlToFile) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutConvertDocument")
                return
            }
            
            if let response = response {
                XCTAssertFalse(response.isEmpty)
                
                expectation.fulfill()
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
                 XCTAssert(response.code == HttpStatusCode.ok)
                
                 expectation.fulfill()
             }
         }
        
         self.waitForExpectations(timeout: testTimeout, handler: nil)
     }
    
    
    func testPutCreateDocumentFromImages() {
        
        let image1 = "33539.jpg"
        let image2 = "44781.jpg"
        let files = [image1, image2]
        let resFileName = "pdffromimagesinquery_swift.pdf"
        
        let imagesList = files.map() { el in "\(self.tempFolder)/\(el)" }
        let expectation = self.expectation(description: "testPutCreateDocumentFromImages")
        let request = ImagesListRequest(imagesList: imagesList)
        
        uploadFiles(names: files) {
            PdfAPI.putCreateDocumentFromImages(name: resFileName, images: request, ocr: false, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutCreateDocumentFromImages")
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
