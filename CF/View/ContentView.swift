//
//  ContentView.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var viewModel = ViewModel()
  
    var body: some View {
      VStack {
        NumberView(model: viewModel)
        DecreaseIncrease(model: viewModel)
        TimerButton(model: viewModel)
        FactButton(model: viewModel)
        Fact(model: viewModel)
      }
    }
}
