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

class DocumentSaveAsTiffTests: AsposePdfCloudTests {
    
    let fileName = "4pages.pdf"
    
    func testPutDocumentSaveAsTiffUsingQueryParams() {
        
        let expectation = self.expectation(description: "testPutDocumentSaveAsTiffUsingQueryParams")
        
        uploadFile(name: fileName) {
            
            PdfAPI.putDocumentSaveAsTiff(
                name: self.fileName,
                resultFile: "4pages.tiff",
                brightness: 0.6,
                compression: CompressionType.ccitt4.rawValue,
                colorDepth: ColorDepth.format1bpp.rawValue,
                leftMargin: 0,
                rightMargin: 0,
                topMargin: 0,
                bottomMargin: 0,
                orientation: ShapeType.portrait.rawValue,
                skipBlankPages: true,
                width: 1200,
                height: 1600,
                xResolution: 200,
                yResolution: 200,
                pageIndex: 2,
                pageCount: 2,
                folder: self.tempFolder) {
                    
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutDocumentSaveAsTiffUsingQueryParams")
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
    
    func testPutDocumentSaveAsTiffUsingBodyParams() {
        
        let expectation = self.expectation(description: "testPutDocumentSaveAsTiffUsingBodyParams")
        let options = TiffExportOptions(
            brightness: 0.6,
            compression: CompressionType.ccitt4,
            colorDepth: ColorDepth.format1bpp,
            leftMargin: 0,
            rightMargin: 0,
            topMargin: 0,
            bottomMargin: 0,
            orientation: ShapeType.portrait,
            skipBlankPages: true,
            width: 1200,
            height: 1600,
            xResolution: 200,
            yResolution: 200,
            pageIndex: 2,
            pageCount: 2,
            resultFile: "4pages.tiff"
        )
        
        
        uploadFile(name: fileName) {
            
            PdfAPI.putDocumentSaveAsTiff(
                name: self.fileName,
                exportOptions: options,
                folder: self.tempFolder) {
                    
                    (response, error) in
                    guard error == nil else {
                        XCTFail("error testPutDocumentSaveAsTiffUsingBodyParams")
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
