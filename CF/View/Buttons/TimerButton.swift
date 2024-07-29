//
//  TimerButton.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct TimerButton: View {
  @ObservedObject var model: ViewModel
  var body: some View {
    Button(model.isTimerRunning ? "Stop timer" : "Start timer") {
      model.timerButton()
    }
    .font(.largeTitle)
    .padding()
    .background(Color.black.opacity(0.1))
    .cornerRadius(10)
  }
}
