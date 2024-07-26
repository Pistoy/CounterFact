//
//  DecreaseButton.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct DecreaseButton: View {
  @Binding var count: Int
  var body: some View {
    Button {
        count -= 1
    } label: {
        Text("-")
            .font(.largeTitle)
            .padding()
            .background(Color.black.opacity(0.1))
            .cornerRadius(10)
            .frame(width: 50)
    }
  }
}
