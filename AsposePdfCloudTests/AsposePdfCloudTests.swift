//
//  AsposePdfCloudTests.swift
//  AsposePdfCloudTests
//
//  Created by Kaferi Andrey on 23.06.2018.
//  Copyright © 2018 Aspose. All rights reserved.
//

import XCTest
@testable import AsposePdfCloud

class AsposePdfCloudTests: XCTestCase {
    
    let tempFolder = "TempPdfCloud"
    let testTimeout = 400.0
    
    override func setUp() {
        super.setUp()
        AsposePdfCloudAPI.appSid = ""
        AsposePdfCloudAPI.appKey = ""
        AsposePdfCloudAPI.basePath = "https://api-dev.aspose.cloud/v1.1"
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    private func completionOK(_ data: DocumentResponse?,_ error: Error?) {
        XCTAssertEqual(data?.code, HttpStatusCode.ok)
    }
    
    func testAuth() {
        let authAspose = AuthAspose()
        let result = authAspose.auth()
        XCTAssertEqual(result, 200)
    }
    
    
    func testCreateEptyDocument() {
        
        let expectation = self.expectation(description: "testCreateEptyDocument")
        let name = "empty_swift.pdf"
        
        PdfAPI.putCreateDocument(name: name, folder: self.tempFolder) { (response, error) in
            guard error == nil else {
                XCTFail("error creating empty pdf document")
                return
            }
            
            if let response = response {
                XCTAssert(response.code == HttpStatusCode.ok)
                
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
}
