//
//  FactButton.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct FactButton: View {
  
  @Binding var fact: String
  @Binding var count: Int
  
  var service = FetchFact()
  var body: some View {
    Button("Fact") {
      Task {
        fact = try await service.fetchFact(number: count)
      }
    }
    .font(.largeTitle)
    .padding()
    .background(Color.black.opacity(0.1))
    .cornerRadius(10)
  }
}
