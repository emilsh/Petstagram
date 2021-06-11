//
//  PostRequestTests.swift
//  PetstagramTests
//
//  Created by Emil Shafigin on 4/6/21.
//

import XCTest
@testable import Petstagram

class PostRequestTests: XCTestCase {
  func testHandleWithGoodData() throws {
    let data = JsonData.goodFeed.data(using: .utf8)!
    
    let request = PostRequest()
    do {
      let result = try request.handle(response: data)
      XCTAssertEqual(result.count, 3)
    } catch let decodingError as DecodingError {
      XCTFail((decodingError as CustomDebugStringConvertible).debugDescription)
    } catch let error {
      XCTFail(error.localizedDescription)
    }
  }
  
  func testHandleWithBadData() {
    let data = JsonData.badJson.data(using: .utf8)!
    let request = PostRequest()
    XCTAssertThrowsError(try request.handle(response: data)) { error in
      XCTAssertTrue(error is DecodingError)
    }
  }
}
