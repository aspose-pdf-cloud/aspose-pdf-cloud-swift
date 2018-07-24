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


class FragmentsAndSegmentsTests: AsposePdfCloudTests {
    
    private let fileName = "4pages.pdf"
    
    // Fragments
    
    func testGetFragment() {
        
        let expectation = self.expectation(description: "testGetFragment")
        let pageNumber = 1
        let fragmentNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getFragment(name: self.fileName, pageNumber: pageNumber, fragmentNumber: fragmentNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetFragment: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetFragmentTextFormat() {
        
        let expectation = self.expectation(description: "testGetFragmentTextFormat")
        let pageNumber = 1
        let fragmentNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getFragmentTextFormat(name: self.fileName, pageNumber: pageNumber, fragmentNumber: fragmentNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetFragmentTextFormat: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetFragments() {
        
        let expectation = self.expectation(description: "testGetFragments")
        let pageNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getFragments(name: self.fileName, pageNumber: pageNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetFragments: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    // Segments
    
    func testGetSegment() {
        
        let expectation = self.expectation(description: "testGetSegment")
        let pageNumber = 1
        let segmentNumber = 1
        let fragmentNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getSegment(name: self.fileName, pageNumber: pageNumber, fragmentNumber: fragmentNumber, segmentNumber: segmentNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetSegment: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetSegmentTextFormat() {
        
        let expectation = self.expectation(description: "testGetSegmentTextFormat")
        let pageNumber = 1
        let fragmentNumber = 1
        let segmentNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getSegmentTextFormat(name: self.fileName, pageNumber: pageNumber, fragmentNumber: fragmentNumber, segmentNumber: segmentNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetSegmentTextFormat: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testGetSegments() {
        
        let expectation = self.expectation(description: "testGetSegments")
        let pageNumber = 1
        let fragmentNumber = 1
        
        uploadFile(name: fileName) {
            
            PdfAPI.getSegments(name: self.fileName, pageNumber: pageNumber, fragmentNumber: fragmentNumber, folder: self.tempFolder) {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testGetSegments: " + (error.debugDescription))
                    return
                }
                
                if let response = response {
                    XCTAssertEqual(response.code, HttpStatusCode.ok)
                    
                    expectation.fulfill()
                }
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
}
