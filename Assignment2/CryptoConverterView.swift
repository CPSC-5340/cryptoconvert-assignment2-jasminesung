//
//  CryptoConverterView.swift
//  Assignment2
//
//  Created by Jasmine Sung on 23/3/2024.
//

import SwiftUI

struct CryptoConverterView: View {
    
    @ObservedObject var viewModel = CryptoConverterViewModel()
    
    @State private var bitcoinValue: Double = 0
    
    var body: some View {
            VStack {
                    HStack {
                        Text("Bitcoin: ")
                        TextField("", value: $bitcoinValue, format: .number).keyboardType(.decimalPad).textFieldStyle(.roundedBorder)
                    }.padding(20)
                    VStack {
                        List {
                            ForEach(viewModel.cryptoList) {
                                item in ListItem(label: item.cryptoName, value: bitcoinValue, multiplier: item.multiplier)
                            }
                        }
                    }
            }
            .onAppear{viewModel.fetchList()}
    }
}

struct ListItem: View {
    var label: String
    var value: Double
    var multiplier: Double
    var body: some View {
        HStack {
            Text("\(label)")
            Spacer()
            Text("\(getResult())")
        }
    }
    
    func getResult() -> String {
        return String(format: "%.2f", value * multiplier)
    }
}

#Preview {
    CryptoConverterView()
}
