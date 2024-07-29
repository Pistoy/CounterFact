//
//  CFTests.swift
//  CFTests
//
//  Created by Emre Cekic on 26.07.2024.
//

import XCTest

final class CFTests: XCTestCase {
//what
  func test() {
    let exp = expectation(description: "Asd")
    let session = URLSession(configuration: .default)
    let url = URL(string: "http://numbersapi.com/")!
    
    session.dataTask(with: url) { data, response, error in
      XCTAssertNotNil(data)
      exp.fulfill()
    }.resume()
    waitForExpectations(timeout: 5.0) { error in
      print(error?.localizedDescription ?? "error??")
    }
  }
}
