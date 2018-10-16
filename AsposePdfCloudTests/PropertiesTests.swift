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

class PropertiesTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
        
        properties = [
            DocumentProperty(links: nil, name: self.propertyNames[0], value: self.propertyValues[0], builtIn: nil),
            DocumentProperty(links: nil, name: self.propertyNames[1], value: self.propertyValues[1], builtIn: nil)
            ]
        
    }

    private let fileName = "PdfWithAcroForm.pdf"
    private let propertyNames = ["prop1", "prop2"]
    private let propertyValues = ["val1", "val2"]
    private var properties: [DocumentProperty]?
    
    private func setProperty(prop: DocumentProperty, completion: @escaping ()->Void) {
        PdfAPI.putSetProperty(name: self.fileName, propertyName: prop.name!, value: prop.value!, folder: self.tempFolder) {
            (response, error) in
            guard error == nil else {
                XCTFail("error try to putSetProperty: " + (error.debugDescription))
                return
            }
            
            if response?.code == 200 {
                completion()
            }
        }
    }
    
    func testDeleteProperties() {
        let expectation = self.expectation(description: "testDeleteProperties")
        
        uploadFile(name: self.fileName) {
            self.setProperty(prop: self.properties![0]){
                self.setProperty(prop: self.properties![1]){
                    
                    PdfAPI.deleteProperties(name: self.fileName, folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testDeleteProperties: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeOk)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    
    func testDeleteProperty() {
        let expectation = self.expectation(description: "testDeleteProperty")
        
        uploadFile(name: self.fileName) {
            self.setProperty(prop: self.properties![0]){
                
                PdfAPI.deleteProperty(name: self.fileName, propertyName: self.properties![0].name!, folder: self.tempFolder) {
                    (response, error) in
                    guard error == nil else {
                        XCTFail("error testDeleteProperty: " + (error.debugDescription))
                        return
                    }
                    
                    if let response = response {
                        XCTAssertEqual(response.code, self.codeOk)
                        
                        expectation.fulfill()
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetDocumentProperties() {
        let expectation = self.expectation(description: "testGetDocumentProperties")
        
        uploadFile(name: self.fileName) {
            self.setProperty(prop: self.properties![0]){
                self.setProperty(prop: self.properties![1]){
                    
                    PdfAPI.getDocumentProperties(name: self.fileName, folder: self.tempFolder) {
                        (response, error) in
                        guard error == nil else {
                            XCTFail("error testGetDocumentProperties: " + (error.debugDescription))
                            return
                        }
                        
                        if let response = response {
                            XCTAssertEqual(response.code, self.codeOk)
                            
                            expectation.fulfill()
                        }
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetDocumentProperty() {
        let expectation = self.expectation(description: "testGetDocumentProperty")
        
        uploadFile(name: self.fileName) {
            self.setProperty(prop: self.properties![0]){
                
                PdfAPI.getDocumentProperty(name: self.fileName, propertyName: self.properties![0].name!, folder: self.tempFolder) {
                    (response, error) in
                    guard error == nil else {
                        XCTFail("error testGetDocumentProperty: " + (error.debugDescription))
                        return
                    }
                    
                    if let response = response {
                        XCTAssertEqual(response.code, self.codeOk)
                        
                        expectation.fulfill()
                    }
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testPutSetProperty() {
        let expectation = self.expectation(description: "testPutSetProperty")
        
        uploadFile(name: self.fileName) {
            
            PdfAPI.putSetProperty(name: self.fileName, propertyName: self.properties![0].name!, value: self.properties![0].value!, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutSetProperty: " + (error.debugDescription))
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
