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

class ParagraphsTests: AsposePdfCloudTests {
    
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
            rectangle: Rectangle(X: 100, Y: 100, width: 200, height: 200),
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
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
