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


class AppendTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    let fileName = "PdfWithImages2.pdf"
    let appendFile = "4pages.pdf"
    let startPage = 2
    let endPage = 4
    
    func testPostAppendDocumentUsingQueryParams() {
        
        let expectation = self.expectation(description: "testPostAppendDocumentUsingQueryParams")
        
        uploadFile(name: self.fileName) {
            self.uploadFile(name: self.appendFile) {
                PdfAPI.postAppendDocument(name: self.fileName,
                                          appendFile: self.tempFolder + "/" + self.appendFile,
                                          startPage: self.startPage,
                                          endPage: self.endPage,
                                          folder: self.tempFolder) {
                    (response, error) in
                    guard error == nil else {
                        XCTFail("error testPostAppendDocumentUsingQueryParams")
                        return
                    }
                    
                    if let response = response {
                        XCTAssert(response.code == HttpStatusCode.ok)
                        
                        expectation.fulfill()
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testPostAppendDocumentUsingBodyParams() {
        
        let expectation = self.expectation(description: "testPostAppendDocumentUsingBodyParams")
        let appendDocument = AppendDocument(document: self.tempFolder + "/" + self.appendFile,
                                            startPage: startPage, endPage: endPage)
        
        uploadFile(name: self.fileName) {
            self.uploadFile(name: self.appendFile) {
                PdfAPI.postAppendDocument(name: self.fileName,
                                          appendDocument:  appendDocument,
                                          folder: self.tempFolder) {
                    (response, error) in
                    guard error == nil else {
                        XCTFail("error testPostAppendDocumentUsingBodyParams")
                        return
                    }
                    
                    if let response = response {
                        XCTAssert(response.code == HttpStatusCode.ok)
                        
                        expectation.fulfill()
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
   /*
    /// <summary>
    ///     Test PostAppendDocument using json
    /// </summary>
    [Test]
    public void PostAppendDocumentUsingBodyParamsTest()
{
    UploadFile(Name, Name);
    UploadFile(AppendFile, AppendFile);
    
    var appendDocument = new AppendDocument(Path.Combine(TempFolder, AppendFile), StartPage, EndPage);
    var responce =
    PdfApi.PostAppendDocument(Name, appendDocument, folder: TempFolder);
    Assert.That(responce.Code, Is.EqualTo(HttpStatusCode.OK));
    }
    
}*/
