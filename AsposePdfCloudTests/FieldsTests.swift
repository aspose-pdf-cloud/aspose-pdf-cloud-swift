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

class FieldsTests: AsposePdfCloudTests {
    
    func testGetField() {
        
        let name = "PdfWithAcroForm.pdf"
        let fieldName = "textField"
        let expectation = self.expectation(description: "testGetField")
        
        uploadFile(name: name) {
            
            PdfAPI.getField(name: name, fieldName: fieldName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetField")
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
    
    
    func testGetFields() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testGetFields")
        
        uploadFile(name: name) {
            
            PdfAPI.getFields(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetFields")
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
    
    
    func testPostCreateField() {
        
        let field = Field(links: nil, name: "checkboxfield", selectedItems: nil, type: FieldType.boolean, rect: RectanglePdf(LLX: 50, LLY: 200, URX: 200, URY: 400), values: ["1"])
        let name = "4pages.pdf"
        let page = 1
        
        let expectation = self.expectation(description: "testPostCreateField")
        
        uploadFile(name: name) {
            
            PdfAPI.postCreateField(name: name, page: page, field: field, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostCreateField: " + (error.debugDescription))
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
    
    
    func testPutUpdateField() {
        
        let name = "PdfWithAcroForm.pdf"
        let fieldName = "textField"
        let field = Field(links: nil, name: fieldName, selectedItems: nil, type: FieldType.text, rect: nil, values: ["Text field updated value."])

        let expectation = self.expectation(description: "PutUpdateFieldTest")
        
        uploadFile(name: name) {
            
            PdfAPI.putUpdateField(name: name, fieldName: fieldName, field: field, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error PutUpdateFieldTest: " + (error.debugDescription))
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
    
    
    func testPutUpdateFields() {
        
        let name = "PdfWithAcroForm.pdf"
        let fieldName = "textField"
        let field = Field(links: nil, name: fieldName, selectedItems: nil, type: FieldType.text, rect: nil, values: ["Text field updated value."])
        
        let fields = Fields(links: nil, list: [field])
        
        let expectation = self.expectation(description: "PutUpdateFieldTest")
        
        uploadFile(name: name) {
            
            PdfAPI.putUpdateFields(name: name, fields: fields, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error PutUpdateFieldTest: " + (error.debugDescription))
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
    
    
    func testDeleteField() {
        
        let name = "PdfWithAcroForm.pdf"
        let fieldName = "textField"
        let expectation = self.expectation(description: "testDeleteField")
        
        uploadFile(name: name) {
            
            PdfAPI.deleteField(name: name, fieldName: fieldName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteField: " + (error.debugDescription))
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
    
    
    func testPutFieldsFlatten() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testPutFieldsFlatten")
        
        uploadFile(name: name) {
            
            PdfAPI.putFieldsFlatten(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutFieldsFlatten: " + (error.debugDescription))
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
