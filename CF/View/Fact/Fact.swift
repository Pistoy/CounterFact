//
//  Fact.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct Fact: View {
  @ObservedObject var model: ViewModel
  var service = FetchFact()
  var body: some View {
    if model.isLoading {
        ProgressView()
    } else {
      Text(model.fact)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .padding()
    }
  }
}
