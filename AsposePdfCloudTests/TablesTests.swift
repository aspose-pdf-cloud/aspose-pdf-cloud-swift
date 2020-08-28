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

class TablesTests: AsposePdfCloudTests {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testGetDocumentTables() {
        let name = "PdfWithTable.pdf"
        
        let expectation = self.expectation(description: "testGetDocumentTables")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentTables(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentTables")
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
    
    func testDeleteDocumentTables() {
        let name = "PdfWithTable.pdf"
        
        let expectation = self.expectation(description: "testDeleteDocumentTables")
        
        uploadFile(name: name) {
            
            PdfAPI.deleteDocumentTables(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeleteDocumentTables")
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
    
    func testGetPageTables() {
        let name = "PdfWithTable.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testGetPageTables")
        
        uploadFile(name: name) {
            
            PdfAPI.getPageTables(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageTables")
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
    
    func testDeletePageTables() {
        let name = "PdfWithTable.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testDeletePageTables")
        
        uploadFile(name: name) {
            
            PdfAPI.deletePageTables(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testDeletePageTables")
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
    
    func testGetTable() {
        let name = "PdfWithTable.pdf"
        
        let expectation = self.expectation(description: "testGetTable")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentTables(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentTables")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let tables = response.tables, let list = tables.list, let tableId = list[0].id {
                        
                        PdfAPI.getTable(name: name, tableId: tableId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testGetTable")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testGetTable")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testDeleteTable() {
        let name = "PdfWithTable.pdf"
        
        let expectation = self.expectation(description: "testDeleteTable")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentTables(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentTables")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let tables = response.tables, let list = tables.list, let tableId = list[0].id {
                        
                        PdfAPI.deleteTable(name: name, tableId: tableId, folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testDeleteTable")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testDeleteTable")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testPostPageTables() {
        let name = "4pages.pdf"
        
        let pageNumber = 1
        let expectation = self.expectation(description: "testGetPageTables")
        
        let table = drawTable()
        
        uploadFile(name: name) {
            
            PdfAPI.postPageTables(name: name, pageNumber: pageNumber, tables: [table], folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetPageTables")
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
    
    func testPutTable() {
        let name = "PdfWithTable.pdf"
        
        let expectation = self.expectation(description: "testPutTable")
        
        uploadFile(name: name) {
            
            PdfAPI.getDocumentTables(name: name, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetDocumentTables")
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, self.codeOk)
                    
                    if let tables = response.tables, let list = tables.list, let tableId = list[0].id {
                        
                        PdfAPI.putTable(name: name, tableId: tableId, table: self.drawTable(), folder: self.tempFolder) {
                            (response, error) in
                            guard error == nil else {
                                XCTFail("error testPutTable")
                                return
                            }
                            
                            if let response = response {
                                XCTAssertEqual(response.code, self.codeOk)
                                
                                expectation.fulfill()
                            }
                        }
                    } else {
                        XCTFail("error testPutTable")
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    private func drawTable() -> Table {
        let textState = TextState(
            fontSize: 11,
            font: "Arial Bold",
            foregroundColor: Color(A: 255, R: 255, G: 0, B: 0),
            backgroundColor: nil,
            fontStyle: FontStyles.regular,
            fontFile: nil)
        
        let numOfCols = 5
        let numOfRows = 5
        
        var colWidths = ""
        for _ in 0..<numOfCols {
            colWidths += " 30"
        }
        
        var rows: [Row] = []
        
        let borderTableBorder = GraphInfo(
            lineWidth: 1, color: Color(A: 255, R: 0, G: 255, B: 0),
            dashArray: nil, dashPhase: nil, fillColor: nil, isDoubled: nil, skewAngleX: nil, skewAngleY: nil,
                scalingRateX: nil, scalingRateY: nil, rotationAngle: nil)

        for _ in 0..<numOfRows {
            
            let row = Row(backgroundColor: nil, border: nil, cells: [], defaultCellBorder: nil, minRowHeight: nil, fixedRowHeight: nil, isInNewPage: nil, isRowBroken: nil, defaultCellTextState: nil, defaultCellPadding: nil, verticalAlignment: nil)
            
            for c in 0..<numOfCols {
                let cell = Cell(isNoBorder: nil, margin: nil, border: nil,
                                backgroundColor: Color(A: 255, R: 0, G: 128, B: 0),
                                backgroundImageFile: nil,
                                backgroundImageStorageFile: nil, alignment: nil, defaultCellTextState: textState,
                                paragraphs: [TextRect(text: "Value", page: nil, rect: nil, horizontalAlignment: nil, verticalAlignment: nil, position: nil, baselinePosition: nil, textState: nil)],
                                isWordWrapped: nil, verticalAlignment: nil, colSpan: nil, rowSpan: nil, width: nil, htmlFragment: nil, images: nil)
                
                // change properties on cell
                if c == 1 {
                    cell.defaultCellTextState?.foregroundColor = Color(A: 255, R: 0, G: 0, B: 255)
                }
                    
                // change properties on cell AFTER first clearing and re-adding paragraphs
                else if c == 2
                {
                    cell.paragraphs?[0].text = "y"
                    cell.defaultCellTextState?.foregroundColor = Color(A: 255, R: 0, G: 0, B: 255)
                }
                    
                // change properties on paragraph
                else if c == 3
                {
                    cell.paragraphs?[0].textState = textState
                    cell.paragraphs?[0].textState?.foregroundColor = Color(A: 255, R: 0, G: 0, B: 255)
                }
                    
                // change properties on paragraph AFTER first clearing and re-adding paragraphs
                else if c == 4
                {
                    cell.paragraphs = nil
                    cell.htmlFragment = "<ul><li>First</li><li>Second</li></ul>"
                }
                row.cells.append(cell)
                
            }
            rows.append(row)
        }
        
        let defaultCellBorder = BorderInfo(
            _left: borderTableBorder,
            _right: borderTableBorder,
            top: borderTableBorder,
            bottom: borderTableBorder,
            roundedBorderRadius: nil
        )
        
        let table = Table(links: nil, alignment: nil, horizontalAlignment: nil, verticalAlignment: nil, top: 100, _left: nil, defaultCellTextState: textState, defaultCellPadding: nil, border: nil, margin: nil, rows: rows, defaultColumnWidth: nil,
                          defaultCellBorder: defaultCellBorder, broken: nil, columnWidths: colWidths, repeatingRowsCount: nil, repeatingColumnsCount: nil, repeatingRowsStyle: nil, cornerStyle: nil, breakText: nil, backgroundColor: nil, isBordersIncluded: nil, columnAdjustment: nil, zIndex: nil)

        return table;
    }
}

