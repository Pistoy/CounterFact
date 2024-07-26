//
//  ContentView.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject private var viewModel = ViewModel()
  
    var body: some View {
      VStack {
        NumberView(count: $viewModel.count)
        HStack {
          DecreaseButton(count: $viewModel.count)
          IncreaseButton(count: $viewModel.count)
        }
        TimerButton(isTimerRunning: $viewModel.isTimerRunning)
        FactButton(fact: $viewModel.fact, count: $viewModel.count)
        Fact(fact: $viewModel.fact, isLoading: $viewModel.isLoading)
      }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
