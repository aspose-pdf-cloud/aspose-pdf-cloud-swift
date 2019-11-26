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
        
        let field = Field(links: nil, name: "checkboxfield", selectedItems: nil, type: FieldType.boolean, rect: Rectangle(LLX: 50, LLY: 200, URX: 200, URY: 400), values: ["1"])
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
    
    
    func testPostFlattenDocument() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testPostFlattenDocument")
        
        uploadFile(name: name) {
            
            PdfAPI.postFlattenDocument(name: name, updateAppearances: true, callEvents: nil, hideButtons: true, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostFlattenDocument: " + (error.debugDescription))
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
    
    func testGetDocumentSignatureFields() {
        
        let name = "adbe.x509.rsa_sha1.valid.pdf"
        let expectation = self.expectation(description: "testGetDocumentSignatureFields")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentSignatureFields(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentSignatureFields: " + (error.debugDescription))
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
    
    func testGetPageSignatureFields() {
        
        let name = "adbe.x509.rsa_sha1.valid.pdf"
        let expectation = self.expectation(description: "testGetPageSignatureFields")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageSignatureFields(name: name, pageNumber: 1, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageSignatureFields: " + (error.debugDescription))
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
    
    func testGetSignatureField() {
        
        let name = "adbe.x509.rsa_sha1.valid.pdf"
        let expectation = self.expectation(description: "testGetSignatureField")
        
        uploadFile(name: name) {
            
            PdfAPI.getSignatureField(name: name, fieldName: "Signature1", folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetSignatureField: " + (error.debugDescription))
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
    
    func testGetDocumentTextBoxFields() {
        
        let name = "FormDataTextBox.pdf"
        let expectation = self.expectation(description: "testGetDocumentTextBoxFields")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentTextBoxFields(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentTextBoxFields: " + (error.debugDescription))
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
    
    func testGetPageTextBoxFields() {
        
        let name = "FormDataTextBox.pdf"
        let expectation = self.expectation(description: "testGetPageTextBoxFields")
        
        let pageNumber = 1
        uploadFile(name: name) {
            
            PdfAPI.getPageTextBoxFields(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageTextBoxFields: " + (error.debugDescription))
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
    
    func testGetTextBoxField() {
        
        let name = "FormDataTextBox.pdf"
        let expectation = self.expectation(description: "testGetTextBoxField")
        
        let fieldName = "Petitioner"
        uploadFile(name: name) {
            
            PdfAPI.getTextBoxField(name: name, fieldName: fieldName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetTextBoxField: " + (error.debugDescription))
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
    
    func testPostTextBoxFields() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPostTextBoxFields")
        
        let textBox = TextBoxField(links: nil,
                                   partialName: "testField",
                                   rect: Rectangle(LLX: 100, LLY: 100, URX: 500, URY: 200),
                                   value: "Value\nValue",
                                   pageIndex: 1,
                                   height: nil,
                                   width: nil,
                                   zIndex: nil,
                                   isGroup: false,
                                   parent: nil,
                                   isSharedField: nil,
                                   flags: nil,
                                   color: Color(A: 255, R: 255, G: 0, B: 0),
                                   contents: nil,
                                   margin: nil,
                                   highlighting: nil,
                                   horizontalAlignment: nil,
                                   verticalAlignment: nil,
                                   multiline: true,
                                   spellCheck: nil,
                                   scrollable: nil,
                                   forceCombs: nil,
                                   maxLen: 100,
                                   barcode: nil)
        
        uploadFile(name: name) {
            
            PdfAPI.postTextBoxFields(name: name, fields: [textBox], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostTextBoxFields: " + (error.debugDescription))
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
    
    func testPutTextBoxField() {
        
        let name = "FormDataTextBox.pdf"
        let expectation = self.expectation(description: "testPutTextBoxField")
        
        let fieldName = "Petitioner"
        
        let textBox = TextBoxField(links: nil,
                                   partialName: "testField",
                                   rect: Rectangle(LLX: 100, LLY: 100, URX: 500, URY: 200),
                                   value: "Value\nValue",
                                   pageIndex: 1,
                                   height: nil,
                                   width: nil,
                                   zIndex: nil,
                                   isGroup: false,
                                   parent: nil,
                                   isSharedField: nil,
                                   flags: nil,
                                   color: Color(A: 255, R: 255, G: 0, B: 0),
                                   contents: nil,
                                   margin: nil,
                                   highlighting: nil,
                                   horizontalAlignment: nil,
                                   verticalAlignment: nil,
                                   multiline: true,
                                   spellCheck: nil,
                                   scrollable: nil,
                                   forceCombs: nil,
                                   maxLen: 100,
                                   barcode: nil)
        
        uploadFile(name: name) {
            
            PdfAPI.putTextBoxField(name: name, fieldName: fieldName, field: textBox, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutTextBoxField: " + (error.debugDescription))
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
    
    // CheckBoxField
    
    func testGetDocumentCheckBoxFields() {
           
       let name = "PdfWithAcroForm.pdf"
       let expectation = self.expectation(description: "testGetDocumentCheckBoxFields")
       
       uploadFile(name: name) {
           
           PdfAPI.getDocumentCheckBoxFields(name: name, folder: self.tempFolder) {
               (response, error) in
               guard error == nil else {
                   XCTFail("error testGetDocumentCheckBoxFields: " + (error.debugDescription))
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
   
   func testGetPageCheckBoxFields() {
       
       let name = "PdfWithAcroForm.pdf"
       let expectation = self.expectation(description: "testGetPageCheckBoxFields")
       
       let pageNumber = 1
       uploadFile(name: name) {
           
           PdfAPI.getPageCheckBoxFields(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
               (response, error) in
               guard error == nil else {
                   XCTFail("error testGetPageCheckBoxFields: " + (error.debugDescription))
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
   
    func testGetCheckBoxField() {

        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testGetCheckBoxField")

        let fieldName = "checkboxField"
        uploadFile(name: name) {

            PdfAPI.getCheckBoxField(name: name, fieldName: fieldName, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                XCTFail("error testGetCheckBoxField: " + (error.debugDescription))
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

    func testPostCheckBoxFields() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPostCheckBoxFields")
        
        let field = CheckBoxField(links: nil,
            partialName: "testField",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 200, URY: 200),
            value: nil,
            pageIndex: 1,
            height: nil,
            width: nil,
            zIndex: nil,
            isGroup: false,
            parent: nil,
            isSharedField: nil,
            flags: nil,
            color: Color(A: 255, R: 255, G: 0, B: 0),
            contents: nil,
            margin: nil,
            highlighting: nil,
            horizontalAlignment: nil,
            verticalAlignment: nil,
            allowedStates: nil,
            style: BoxStyle.cross,
            activeState: nil,
            checked: true,
            exportValue: "true")
        
        uploadFile(name: name) {
            
            PdfAPI.postCheckBoxFields(name: name, fields: [field], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostCheckBoxFields: " + (error.debugDescription))
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
    
    func testPutCheckBoxField() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testPutCheckBoxField")
        
        let fieldName = "checkboxField"
        
        let field = CheckBoxField(links: nil,
            partialName: "testField",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 200, URY: 200),
            value: nil,
            pageIndex: 1,
            height: nil,
            width: nil,
            zIndex: nil,
            isGroup: false,
            parent: nil,
            isSharedField: nil,
            flags: nil,
            color: Color(A: 255, R: 255, G: 0, B: 0),
            contents: nil,
            margin: nil,
            highlighting: nil,
            horizontalAlignment: nil,
            verticalAlignment: nil,
            allowedStates: nil,
            style: BoxStyle.cross,
            activeState: nil,
            checked: true,
            exportValue: "true")
        
        uploadFile(name: name) {
            
            PdfAPI.putCheckBoxField(name: name, fieldName: fieldName, field: field, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutCheckBoxField: " + (error.debugDescription))
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
    
    // RadioButtonField
    func testGetDocumentRadioButtonFields() {
            
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testGetDocumentRadioButtonFields")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentRadioButtonFields(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentRadioButtonFields: " + (error.debugDescription))
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
    
    func testGetPageRadioButtonFields() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testGetPageRadioButtonFields")
        
        let pageNumber = 1
        uploadFile(name: name) {
            
            PdfAPI.getPageRadioButtonFields(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageRadioButtonFields: " + (error.debugDescription))
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
    
     func testGetRadioButtonField() {

         let name = "PdfWithAcroForm.pdf"
         let expectation = self.expectation(description: "testGetRadioButtonField")

         let fieldName = "radiobuttonField"
         uploadFile(name: name) {

             PdfAPI.getRadioButtonField(name: name, fieldName: fieldName, folder: self.tempFolder) {
                 (response, error) in
                 guard error == nil else {
                 XCTFail("error testGetRadioButtonField: " + (error.debugDescription))
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
    
    func testPostRadioButtonFields() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPostRadioButtonFields")
        
        let field = RadioButtonField(links: nil,
            partialName: "testField",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 160, URY: 140),
            value: nil,
            pageIndex: 1,
            height: nil,
            width: nil,
            zIndex: nil,
            isGroup: false,
            parent: nil,
            isSharedField: nil,
            flags: nil,
            color: Color(A: 255, R: 255, G: 0, B: 0),
            contents: nil,
            margin: nil,
            highlighting: nil,
            horizontalAlignment: nil,
            verticalAlignment: nil,
            multiSelect: nil,
            options: nil,
            radioButtonOptionsField: [
                RadioButtonOptionField(
                    links: nil,
                    partialName: nil,
                    rect: Rectangle(LLX: 100, LLY: 130, URX: 160, URY: 140),
                    value: nil,
                    pageIndex: 1,
                    height: nil,
                    width: nil,
                    zIndex: nil,
                    isGroup: false,
                    parent: nil,
                    isSharedField: nil,
                    flags: nil,
                    color: Color(A: 255, R: 255, G: 0, B: 0),
                    contents: nil,
                    margin: nil,
                    highlighting: nil,
                    horizontalAlignment: nil,
                    verticalAlignment: nil,
                    optionName: "1",
                    style: BoxStyle.cross),
                RadioButtonOptionField(
                links: nil,
                partialName: nil,
                rect: Rectangle(LLX: 150, LLY: 120, URX: 160, URY: 130),
                value: nil,
                pageIndex: 1,
                height: nil,
                width: nil,
                zIndex: nil,
                isGroup: false,
                parent: nil,
                isSharedField: nil,
                flags: nil,
                color: Color(A: 255, R: 255, G: 0, B: 0),
                contents: nil,
                margin: nil,
                highlighting: nil,
                horizontalAlignment: nil,
                verticalAlignment: nil,
                optionName: "2",
                style: BoxStyle.cross),
            ],
            style: BoxStyle.cross,
            selected: 1)
        
        uploadFile(name: name) {
            
            PdfAPI.postRadioButtonFields(name: name, fields: [field], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostRadioButtonFields: " + (error.debugDescription))
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
    
    func testPutRadioButtonField() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testPutRadioButtonField")
        let fieldName = "radiobuttonField"
        
        let field = RadioButtonField(links: nil,
            partialName: "testField",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 160, URY: 140),
            value: nil,
            pageIndex: 1,
            height: nil,
            width: nil,
            zIndex: nil,
            isGroup: false,
            parent: nil,
            isSharedField: nil,
            flags: nil,
            color: Color(A: 255, R: 255, G: 0, B: 0),
            contents: nil,
            margin: nil,
            highlighting: nil,
            horizontalAlignment: nil,
            verticalAlignment: nil,
            multiSelect: nil,
            options: nil,
            radioButtonOptionsField: [
                RadioButtonOptionField(
                    links: nil,
                    partialName: nil,
                    rect: Rectangle(LLX: 100, LLY: 130, URX: 160, URY: 140),
                    value: nil,
                    pageIndex: 1,
                    height: nil,
                    width: nil,
                    zIndex: nil,
                    isGroup: false,
                    parent: nil,
                    isSharedField: nil,
                    flags: nil,
                    color: Color(A: 255, R: 255, G: 0, B: 0),
                    contents: nil,
                    margin: nil,
                    highlighting: nil,
                    horizontalAlignment: nil,
                    verticalAlignment: nil,
                    optionName: "1",
                    style: BoxStyle.cross),
                RadioButtonOptionField(
                links: nil,
                partialName: nil,
                rect: Rectangle(LLX: 150, LLY: 120, URX: 160, URY: 130),
                value: nil,
                pageIndex: 1,
                height: nil,
                width: nil,
                zIndex: nil,
                isGroup: false,
                parent: nil,
                isSharedField: nil,
                flags: nil,
                color: Color(A: 255, R: 255, G: 0, B: 0),
                contents: nil,
                margin: nil,
                highlighting: nil,
                horizontalAlignment: nil,
                verticalAlignment: nil,
                optionName: "2",
                style: BoxStyle.cross),
            ],
            style: BoxStyle.cross,
            selected: 1)
        
        uploadFile(name: name) {
            
            PdfAPI.putRadioButtonField(name: name, fieldName: fieldName, field: field, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutRadioButtonField: " + (error.debugDescription))
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
    
    // ComboBoxField
    func testGetDocumentComboBoxFields() {
            
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testGetDocumentComboBoxFields")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentComboBoxFields(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentComboBoxFields: " + (error.debugDescription))
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
    
    func testGetPageComboBoxFields() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testGetPageComboBoxFields")
        
        let pageNumber = 1
        uploadFile(name: name) {
            
            PdfAPI.getPageComboBoxFields(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageComboBoxFields: " + (error.debugDescription))
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
    
     func testGetComboBoxField() {

         let name = "PdfWithAcroForm.pdf"
         let expectation = self.expectation(description: "testGetComboBoxField")

         let fieldName = "comboboxField"
         uploadFile(name: name) {

             PdfAPI.getComboBoxField(name: name, fieldName: fieldName, folder: self.tempFolder) {
                 (response, error) in
                 guard error == nil else {
                 XCTFail("error testGetComboBoxField: " + (error.debugDescription))
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
    
    func testPostComboBoxFields() {
        
        let name = "4pages.pdf"
        let expectation = self.expectation(description: "testPostComboBoxFields")
        
        let field = ComboBoxField(links: nil,
            partialName: "testField",
            rect: Rectangle(LLX: 100, LLY: 100, URX: 160, URY: 140),
            value: nil,
            pageIndex: 1,
            height: nil,
            width: nil,
            zIndex: nil,
            isGroup: false,
            parent: nil,
            isSharedField: nil,
            flags: nil,
            color: Color(A: 255, R: 255, G: 0, B: 0),
            contents: nil,
            margin: nil,
            highlighting: nil,
            horizontalAlignment: nil,
            verticalAlignment: nil,
            multiSelect: nil,
            options: [
                Option(
                    value: "one",
                    name: "one",
                    selected: true,
                    index: 1
                ),
                Option(
                    value: "two",
                    name: "two",
                    selected: false,
                    index: 2
                ),
            ],
            activeState: nil,
            editable: false,
            spellCheck: nil,
            selected: 1)
        
        uploadFile(name: name) {
            
            PdfAPI.postComboBoxFields(name: name, fields: [field], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPostComboBoxFields: " + (error.debugDescription))
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
    
    func testPutComboBoxField() {
        
        let name = "PdfWithAcroForm.pdf"
        let expectation = self.expectation(description: "testPutComboBoxField")
        let fieldName = "comboboxField"
        
        let field = ComboBoxField(links: nil,
        partialName: "testField",
        rect: Rectangle(LLX: 100, LLY: 100, URX: 160, URY: 140),
        value: nil,
        pageIndex: 1,
        height: nil,
        width: nil,
        zIndex: nil,
        isGroup: false,
        parent: nil,
        isSharedField: nil,
        flags: nil,
        color: Color(A: 255, R: 255, G: 0, B: 0),
        contents: nil,
        margin: nil,
        highlighting: nil,
        horizontalAlignment: nil,
        verticalAlignment: nil,
        multiSelect: nil,
        options: [
            Option(
                value: "one",
                name: "one",
                selected: true,
                index: 1
            ),
            Option(
                value: "two",
                name: "two",
                selected: false,
                index: 2
            ),
        ],
        activeState: nil,
        editable: false,
        spellCheck: nil,
        selected: 1)
        
        uploadFile(name: name) {
            
            PdfAPI.putComboBoxField(name: name, fieldName: fieldName, field: field, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testPutComboBoxField: " + (error.debugDescription))
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
