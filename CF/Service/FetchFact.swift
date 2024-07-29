//
//  File.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import Foundation

class FetchFact {
  func fetchFact(number: Int) async throws -> String {
    let (data, response) = try await URLSession.shared.data(from: URL(string: "http://numbersapi.com/\(number)")!)
    
    guard let response = response as? HTTPURLResponse,
          response.statusCode == 200
    else {
      throw FactErrors.invalidCode
    }
    
    return String(decoding: data, as: UTF8.self)
  }
}
