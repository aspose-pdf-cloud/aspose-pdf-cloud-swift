/**
 *
 *   Copyright (c) 2020 Aspose.PDF Cloud
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

class EncryptDecryptTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testPutEncryptDocument() {
        let name = "4pages.pdf"
        
        let expectation = self.expectation(description: "testPutEncryptDocument")
        
        let file = getURL(name)
        let outPath = self.tempFolder + "/" + name
        let userPassword = "user $^Password!&"
        let ownerPassword = "owner\\//? $12^Password!&"

        PdfAPI.putEncryptDocument(outPath: outPath, userPassword: toBase64(str: userPassword), ownerPassword: toBase64(str: ownerPassword), cryptoAlgorithm: CryptoAlgorithm.aesx128.rawValue, file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutEncryptDocument")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostEncryptDocumentInStorage() {
        let name = "4pages.pdf"
        
        let expectation = self.expectation(description: "testPostEncryptDocumentInStorage")
        
        let userPassword = "user $^Password!&"
        let ownerPassword = "owner\\//? $12^Password!&"
        
        self.uploadFile(name: name){
            PdfAPI.postEncryptDocumentInStorage(name: name, userPassword: self.toBase64(str: userPassword), ownerPassword: self.toBase64(str: ownerPassword), cryptoAlgorithm: CryptoAlgorithm.aesx128.rawValue, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostEncryptDocumentInStorage")
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
    
    func testPutDecryptDocument() {
        let name = "4pagesEncrypted.pdf"
        
        let expectation = self.expectation(description: "testPutDecryptDocument")
        
        let file = getURL(name)
        let outPath = self.tempFolder + "/" + name
        let userPassword = "user $^Password!&"
        
        PdfAPI.putDecryptDocument(outPath: outPath, password: toBase64(str: userPassword), file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutDecryptDocument")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostDecryptDocumentInStorage() {
        let name = "4pagesEncrypted.pdf"
        
        let expectation = self.expectation(description: "testPostDecryptDocumentInStorage")
        
        let userPassword = "user $^Password!&"
        
        self.uploadFile(name: name){
            PdfAPI.postDecryptDocumentInStorage(name: name, password: self.toBase64(str: userPassword), folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostDecryptDocumentInStorage")
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
    
    func testPutChangePasswordDocument() {
        let name = "4pagesEncrypted.pdf"
        
        let expectation = self.expectation(description: "testPutChangePasswordDocument")
        
        let file = getURL(name)
        let outPath = self.tempFolder + "/" + name
        let ownerPassword = "owner\\//? $12^Password!&"
        let newUserPassword = "user new\\//? $12^Password!&"
        let newOwnerPassword = "owner new\\//? $12^Password!&"
        
        PdfAPI.putChangePasswordDocument(outPath: outPath, ownerPassword: toBase64(str: ownerPassword), newUserPassword: toBase64(str: newUserPassword), newOwnerPassword: toBase64(str: newOwnerPassword), file: file) {
            (response, error) in
            guard error == nil else {
                XCTFail("error testPutChangePasswordDocument")
                return
            }
            
            if let response = response {
                XCTAssertEqual(response.code, self.codeOk)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostChangePasswordDocumentInStorage() {
        let name = "4pagesEncrypted.pdf"
        
        let expectation = self.expectation(description: "testPostChangePasswordDocumentInStorage")
        
        let ownerPassword = "owner\\//? $12^Password!&"
        let newUserPassword = "user new\\//? $12^Password!&"
        let newOwnerPassword = "owner new\\//? $12^Password!&"
        
        self.uploadFile(name: name){
            PdfAPI.postChangePasswordDocumentInStorage(name: name, ownerPassword: self.toBase64(str: ownerPassword), newUserPassword: self.toBase64(str: newUserPassword), newOwnerPassword: self.toBase64(str: newOwnerPassword), folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostChangePasswordDocumentInStorage")
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
    
    private func toBase64(str: String) -> String {
        return Data(str.utf8).base64EncodedString()
    }
}
