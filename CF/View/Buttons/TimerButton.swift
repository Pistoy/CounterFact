//
//  TimerButton.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct TimerButton: View {
  @Binding var isTimerRunning: Bool
  var body: some View {
    Button(isTimerRunning ? "Stop timer" : "Start timer") {
        isTimerRunning.toggle()
      // Make timer
      
    }
    .font(.largeTitle)
    .padding()
    .background(Color.black.opacity(0.1))
    .cornerRadius(10)
  }
}
