//
//  DecreaseIncrease.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct DecreaseIncrease: View {
  @ObservedObject var model: ViewModel
  var body: some View {
    HStack {
      Button {
        model.decrease()
      } label: {
          Text("-")
              .font(.largeTitle)
              .padding()
              .background(Color.black.opacity(0.1))
              .cornerRadius(10)
              .frame(width: 50)
      }
      Button {
        model.increase()
      } label: {
          Text("+")
              .font(.largeTitle)
              .padding()
              .background(Color.black.opacity(0.1))
              .cornerRadius(10)
              .frame(width: 50)
      }
    }
  }
}
