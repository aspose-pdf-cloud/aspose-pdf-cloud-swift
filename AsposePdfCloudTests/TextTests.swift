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

class TextTests: AsposePdfCloudTests {
    
    func testGetText() {
        
        let expectation = self.expectation(description: "testGetText")
        let fileName = "4pages.pdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getText(name: fileName, LLX: 0, LLY: 0, URX: 0, URY: 0, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetText")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, 200)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetPageText() {
        
        let expectation = self.expectation(description: "testGetPageText")
        let fileName = "4pages.pdf"
        let format = ["First Page", "Second Page"]
        
        uploadFile(name: fileName) {
            
            PdfAPI.getPageText(name: fileName, pageNumber: 1, LLX: 0, LLY: 0, URX: 0, URY: 0, format: format, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageText")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, 200)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutAddText() {
        
        let expectation = self.expectation(description: "testPutAddText")
        let fileName = "4pages.pdf"
        let pageNumber = 1
        let paragraph = Paragraph(
            lineSpacing: LineSpacing.fontSize,
            wrapMode: WrapMode.byWords,
            horizontalAlignment: TextHorizontalAlignment.fullJustify,
            leftMargin: 10,
            rightMargin: 10,
            topMargin: 20,
            bottomMargin: 20,
            rectangle: RectanglePdf(LLX: 100, LLY: 100, URX: 200, URY: 200),
            rotation: 10,
            subsequentLinesIndent: 20,
            verticalAlignment: VerticalAlignment.center,
            lines: [
                TextLine(
                    horizontalAlignment: TextHorizontalAlignment._right,
                    segments: [
                        Segment(
                            value: "segment 1",
                            textState: TextState(
                                fontSize: 10,
                                font: "Arial",
                                foregroundColor: Color(A: 0x00, R: 0x00, G: 0xFF, B: 0x00),
                                backgroundColor: Color(A: 0x00, R: 0xFF, G: 0x00, B: 0x00),
                                fontStyle: FontStyles.bold
                            )
                        )
                    ]
                )
            ]
        )
        
        
        uploadFile(name: fileName) {
            
            PdfAPI.putAddText(name: fileName, pageNumber: pageNumber, paragraph: paragraph, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutAddText: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, 200)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
