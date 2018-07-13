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

class ConvertToPdfTests: AsposePdfCloudTests {
    
    // EPUB
    func testGetEpubInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetEpubInStorageToPdf")
        let name = "4pages.epub"
        
        uploadFile(name: name) {
            
            PdfAPI.getEpubInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetEpubInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutEpubInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutEpubInStorageToPdf")
        let name = "4pages.epub"
        let resultName = "fromEpub.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putEpubInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutEpubInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // WEB
    func testGetWebInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetWebInStorageToPdf")
        let sourceUrl = "http://google.com"
        
 
        
        PdfAPI.getWebInStorageToPdf(url: sourceUrl) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testGetWebInStorageToPdf: " + (error.debugDescription))
                return
            }
            
            if let response = response {
                XCTAssertFalse(response.isEmpty)
                
                expectation.fulfill()
            }
        }
        
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutWebInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutWebInStorageToPdf")
        let sourceUrl = "http://google.com"
        let resultName = "fromWeb.pdf"
        

        PdfAPI.putWebInStorageToPdf(name: resultName, url: sourceUrl, dstFolder: self.tempFolder) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutWebInStorageToPdf: " + (error.debugDescription))
                return
            }
            
            if let response = response {
                XCTAssert(response.code == HttpStatusCode.created)
                
                expectation.fulfill()
            }
        }

        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // LaTeX
    func testGetLaTeXInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetLaTeXInStorageToPdf")
        let name = "TexExample.tex"
        
        uploadFile(name: name) {
            
            PdfAPI.getLaTeXInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetLaTeXInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutLaTeXInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutLaTeXInStorageToPdf")
        let name = "TexExample.tex"
        let resultName = "fromTex.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putLaTeXInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutLaTeXInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // MHT
    func testGetMhtInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetMhtInStorageToPdf")
        let name = "MhtExample.mht"
        
        //uploadFile(name: name) {
            
            PdfAPI.getMhtInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetMhtInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertFalse(response.isEmpty)
                    
                    expectation.fulfill()
                }
            }
        //}
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutMhtInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutMhtInStorageToPdf")
        let name = "MhtExample.mht"
        let resultName = "fromMht.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putMhtInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutMhtInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // HTML
    func testGetHtmlInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetHtmlInStorageToPdf")
        let name = "HtmlWithImage.zip"
        
        uploadFile(name: name) {
            
            PdfAPI.getHtmlInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)", htmlFileName: "HtmlWithImage.html", height: 650, width: 250) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetHtmlInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutHtmlInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutHtmlInStorageToPdf")
        let name = "HtmlWithImage.zip"
        let resultName = "fromHtml.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putHtmlInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", htmlFileName: "HtmlWithImage.html", height: 650, width: 250, dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutHtmlInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // XLS FO
    func testGetXslFoInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetXslFoInStorageToPdf")
        let name = "XslfoExample.xslfo"
        
        uploadFile(name: name) {
            
            PdfAPI.getXslFoInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetXslFoInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutXslFoInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutXslFoInStorageToPdf")
        let name = "XslfoExample.xslfo"
        let resultName = "fromXlsFo.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putXslFoInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutXslFoInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // XPS
    func testGetXpsInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetXpsInStorageToPdf")
        let name = "Simple.xps"
        
        uploadFile(name: name) {
            
            PdfAPI.getXpsInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetXpsInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutXpsInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutXpsInStorageToPdf")
        let name = "Simple.xps"
        let resultName = "fromXps.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putXpsInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutXpsInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // SVG
    func testGetSvgInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetSvgInStorageToPdf")
        let name = "Simple.svg"
        
        uploadFile(name: name) {
            
            PdfAPI.getSvgInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetSvgInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutSvgInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutSvgInStorageToPdf")
        let name = "Simple.svg"
        let resultName = "fromSvg.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putSvgInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutSvgInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // PCL
    func testGetPclInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetPclInStorageToPdf")
        let name = "template.pcl"
        
        uploadFile(name: name) {
            
            PdfAPI.getPclInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPclInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutPclInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutPclInStorageToPdf")
        let name = "template.pcl"
        let resultName = "fromPcl.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putPclInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPclInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // XML
    func testGetXmlInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetXmlInStorageToPdf")
        let name = "template.xml"
        
        uploadFile(name: name) {
            
            PdfAPI.getXmlInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetXmlInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutXmlInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutXmlInStorageToPdf")
        let name = "template.xml"
        let resultName = "fromXml.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putXmlInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutXmlInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    // PS
    func testGetPsInStorageToPdf() {
        
        let expectation = self.expectation(description: "testGetPsInStorageToPdf")
        let name = "Typography.PS"
        
        uploadFile(name: name) {
            
            PdfAPI.getPsInStorageToPdf(srcPath: "\(self.tempFolder)/\(name)") {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPsInStorageToPdf: " + (error.debugDescription))
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
    
    
    func testPutPsInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutPsInStorageToPdf")
        let name = "Typography.PS"
        let resultName = "fromPs.pdf"
        
        uploadFile(name: name) {
            
            PdfAPI.putPsInStorageToPdf(name: resultName, srcPath: "\(self.tempFolder)/\(name)", dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutPsInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutImageInStorageToPdf() {
        
        let expectation = self.expectation(description: "testPutImageInStorageToPdf")
        let files = ["33539.jpg", "44781.jpg"]
        let resultName = "fromImages.pdf"
        let imageTemplatesRequest = ImageTemplatesRequest(
            isOCR: true,
            oCRLangs: "eng",
            imagesList: [
                ImageTemplate(imagePath: "\(self.tempFolder)/\(files[0])",
                    imageSrcType: ImageSrcType.common,
                    leftMargin: nil, rightMargin: nil, topMargin: nil, bottomMargin: nil, pageWidth: nil, pageHeight: nil, marginInfo: nil),
                ImageTemplate(imagePath: "\(self.tempFolder)/\(files[1])",
                    imageSrcType: ImageSrcType.common,
                    leftMargin: nil, rightMargin: nil, topMargin: nil, bottomMargin: nil, pageWidth: nil, pageHeight: nil, marginInfo: nil),
                
            ])
        
        uploadFiles(names: files) {
            
            PdfAPI.putImageInStorageToPdf(name: resultName, imageTemplates: imageTemplatesRequest, dstFolder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImageInStorageToPdf: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssert(response.code == HttpStatusCode.created)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
