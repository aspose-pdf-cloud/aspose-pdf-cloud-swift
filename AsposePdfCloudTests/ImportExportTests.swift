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


class ImportExportTests: AsposePdfCloudTests {
    
    
    
    func testGetExportFieldsFromPdfToXmlInStorage() {
        
        let expectation = self.expectation(description: "testGetExportFieldsFromPdfToXmlInStorage")
        let fileName = "FormData.pdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getExportFieldsFromPdfToXmlInStorage(name: fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetExportFieldsFromPdfToXmlInStorage")
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
    
    func testGetExportFieldsFromPdfToFdfInStorage() {
        
        let expectation = self.expectation(description: "testGetExportFieldsFromPdfToFdfInStorage")
        let fileName = "FormData.pdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getExportFieldsFromPdfToFdfInStorage(name: fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetExportFieldsFromPdfToFdfInStorage")
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
    
    func testGetExportFieldsFromPdfToXfdfInStorage() {
        
        let expectation = self.expectation(description: "testGetExportFieldsFromPdfToXfdfInStorage")
        let fileName = "FormData.pdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.getExportFieldsFromPdfToXfdfInStorage(name: fileName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetExportFieldsFromPdfToXfdfInStorage")
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
    
    func testPutExportFieldsFromPdfToXmlInStorage() {
        
        let expectation = self.expectation(description: "testPutExportFieldsFromPdfToXmlInStorage")
        let fileName = "FormData.pdf"
        let outPath = "\(self.tempFolder)/exportData.xml"
        uploadFile(name: fileName) {
            
            PdfAPI.putExportFieldsFromPdfToXmlInStorage(name: fileName, xmlOutputFilePath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutExportFieldsFromPdfToXmlInStorage")
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
    
    func testPutExportFieldsFromPdfToFdfInStorage() {
        
        let expectation = self.expectation(description: "testPutExportFieldsFromPdfToFdfInStorage")
        let fileName = "FormData.pdf"
        let outPath = "\(self.tempFolder)/exportData.fdf"
        uploadFile(name: fileName) {
            
            PdfAPI.putExportFieldsFromPdfToFdfInStorage(name: fileName, fdfOutputFilePath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutExportFieldsFromPdfToFdfInStorage")
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
    
    func testPutExportFieldsFromPdfToXfdfInStorage() {
        
        let expectation = self.expectation(description: "testPutExportFieldsFromPdfToXfdfInStorage")
        let fileName = "FormData.pdf"
        let outPath = "\(self.tempFolder)/exportData.xfdf"
        uploadFile(name: fileName) {
            
            PdfAPI.putExportFieldsFromPdfToXfdfInStorage(name: fileName, xfdfOutputFilePath: outPath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutExportFieldsFromPdfToXfdfInStorage")
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
    
    func testGetImportFieldsFromFdfInStorage() {
        
        let expectation = self.expectation(description: "testGetImportFieldsFromFdfInStorage")
        let fileName = "FormData.pdf"
        
        let dataFile = "FormData.fdf"
        let dataFilePath = "\(self.tempFolder)/\(dataFile)"
        
        uploadFiles(names: [fileName, dataFile]) {
            
            PdfAPI.getImportFieldsFromFdfInStorage(name: fileName, fdfFilePath: dataFilePath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImportFieldsFromFdfInStorage")
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
    
    func testGetImportFieldsFromXfdfInStorage() {
        
        let expectation = self.expectation(description: "testGetImportFieldsFromXfdfInStorage")
        let fileName = "FormDataXfdf_in.pdf"
        
        let dataFile = "FormDataXfdf_in.xfdf"
        let dataFilePath = "\(self.tempFolder)/\(dataFile)"
        
        uploadFiles(names: [fileName, dataFile]) {
            
            PdfAPI.getImportFieldsFromXfdfInStorage(name: fileName, xfdfFilePath: dataFilePath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImportFieldsFromXfdfInStorage")
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
    
    func testGetImportFieldsFromXmlInStorage() {
        
        let expectation = self.expectation(description: "testGetImportFieldsFromXmlInStorage")
        let fileName = "FormDataXfa_in.pdf"
        
        let dataFile = "FormDataXfa_in.xml"
        let dataFilePath = "\(self.tempFolder)/\(dataFile)"
        
        uploadFiles(names: [fileName, dataFile]) {
            
            PdfAPI.getImportFieldsFromXmlInStorage(name: fileName, xmlFilePath: dataFilePath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetImportFieldsFromXmlInStorage")
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
    
    func testPutImportFieldsFromFdfInStorage() {
        
        let expectation = self.expectation(description: "tesPutImportFieldsFromFdfInStorage")
        let fileName = "FormData.pdf"
        
        let dataFile = "FormData.fdf"
        let dataFilePath = "\(self.tempFolder)/\(dataFile)"
        
        uploadFiles(names: [fileName, dataFile]) {
            
            PdfAPI.putImportFieldsFromFdfInStorage(name: fileName, fdfFilePath: dataFilePath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error tesPutImportFieldsFromFdfInStorage")
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
    
    func testPutImportFieldsFromXfdfInStorage() {
        
        let expectation = self.expectation(description: "testPutImportFieldsFromXfdfInStorage")
        let fileName = "FormDataXfdf_in.pdf"
        
        let dataFile = "FormDataXfdf_in.xfdf"
        let dataFilePath = "\(self.tempFolder)/\(dataFile)"
        
        uploadFiles(names: [fileName, dataFile]) {
            
            PdfAPI.putImportFieldsFromXfdfInStorage(name: fileName, xfdfFilePath: dataFilePath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImportFieldsFromXfdfInStorage")
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
    
    func testPutImportFieldsFromXmlInStorage() {
        
        let expectation = self.expectation(description: "testPutImportFieldsFromXmlInStorage")
        let fileName = "FormDataXfa_in.pdf"
        
        let dataFile = "FormDataXfa_in.xml"
        let dataFilePath = "\(self.tempFolder)/\(dataFile)"
        
        uploadFiles(names: [fileName, dataFile]) {
            
            PdfAPI.putImportFieldsFromXmlInStorage(name: fileName, xmlFilePath: dataFilePath, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutImportFieldsFromXmlInStorage")
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
    
    func testPostImportFieldsFromFdf() {
        
        let expectation = self.expectation(description: "testPostImportFieldsFromFdf")
        let fileName = "FormData.pdf"
        
        let dataFile = "FormData.fdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.postImportFieldsFromFdf(name: fileName, folder: self.tempFolder, fdfData: self.getURL(dataFile)) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostImportFieldsFromFdf")
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
    
    func testPostImportFieldsFromXfdf() {
        
        let expectation = self.expectation(description: "testPostImportFieldsFromXfdf")
        let fileName = "FormDataXfdf_in.pdf"
        
        let dataFile = "FormDataXfdf_in.xfdf"
        
        uploadFile(name: fileName) {
            
            PdfAPI.postImportFieldsFromXfdf(name: fileName, folder: self.tempFolder, xfdfData: self.getURL(dataFile)) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostImportFieldsFromXfdf")
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
    
    func testPostImportFieldsFromXml() {
        
        let expectation = self.expectation(description: "testPostImportFieldsFromXml")
        let fileName = "FormDataXfa_in.pdf"
        
        let dataFile = "FormDataXfa_in.xml"
        
        uploadFile(name: fileName) {
            
            PdfAPI.postImportFieldsFromXml(name: fileName, folder: self.tempFolder, xmlData: self.getURL(dataFile)) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostImportFieldsFromXml")
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
}
