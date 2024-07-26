//
//  Fact.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct Fact: View {
  @Binding var fact: String
  @Binding var isLoading: Bool
  var service = FetchFact()
  var body: some View {
    if isLoading {
        ProgressView()
    } else {
        Text(fact)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .padding()
    }
  }
}
