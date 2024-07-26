//
//  VIewModel.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import Foundation

extension ContentView {
  
  class ViewModel: ObservableObject {
    var count: Int = 0
    var isTimerRunning: Bool = false
    var fact: String = ""
    var isLoading = false
  }
}
