//
//  FactButton.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct FactButton: View {
  
  @ObservedObject var model: ViewModel
  private let service = FetchFact()
  
  var body: some View {
    Button("Fact") {
      Task {
        do {
          model.isLoading = true
          model.fact = try await service.fetchFact(number: model.count)
        } catch {
          model.alertShowing = true
        }
      }
    }
    .font(.largeTitle)
    .padding()
    .background(Color.black.opacity(0.1))
    .cornerRadius(10)
    .alert("There was an error", isPresented: $model.alertShowing) {
      Button("Close") { }
    } message: {
      Text("But what happened?")
    }
  }
}
