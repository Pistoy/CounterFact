//
//  VIewModel.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import Foundation

class ViewModel: ObservableObject {
  @Published var count: Int = 0
  @Published var isTimerRunning: Bool = false
  @Published var fact: String = "" {
    didSet {
      isLoading = false
    }
  }
  @Published var isLoading: Bool = false
  @Published var alertShowing: Bool = false
  
  func timerButton() {
    isTimerRunning.toggle()
    // Make timer
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
      if !self.isTimerRunning {
        timer.invalidate()
      } else {
        self.count += 1
      }
    }
  }
  
  func decrease() {
    if count > 0 {
      count -= 1
    }
  }
  
  func increase() {
    count += 1
  }
}
