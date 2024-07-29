//
//  NumberView.swift
//  CF
//
//  Created by Emre Cekic on 26.07.2024.
//

import SwiftUI

struct NumberView: View {
  @ObservedObject var model: ViewModel
  var body: some View {
    Text(model.count.description)
        .font(.largeTitle)
        .padding()
        .background(Color.black.opacity(0.1))
        .cornerRadius(10)
  }
}
