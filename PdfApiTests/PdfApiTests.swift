//
//  PdfApiTests.swift
//  PdfApiTests
//
//  Created by Kaferi Andrey on 19.06.2018.
//  Copyright © 2018 Aspose. All rights reserved.
//

import XCTest
@testable import AsposePdfCloud

class PdfApiTests: XCTestCase {
    
    var tempFolder = "TempPdfCloud"
    var testDataFolder = "testData"
    
    override func setUp() {
        super.setUp()
        
        //PdfAPI.
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func uploadFile(fileName: String) {
        let path = tempFolder + "/" + fileName
        
        //PdfAPI.putCreate(path: path, file: fileName, completion: <#((SaaSposeResponse?, Error?) -> Void)#>)
        
    }
    /*
    func completion(response: SaaSposeResponse?, error: Error?)
    {
        
    }*/
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
