//
//  CurrencyConverterView.swift
//  Assignment2
//
//  Created by Jasmine Sung on 23/3/2024.
//

import SwiftUI

struct CurrencyConverterView: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(viewModel.listOfCards) { card in CurrencyItem(card: card).onTapGesture {
                    viewModel.flip(card: card)
                }}
            }
        }.onAppear {
            viewModel.fetchCards()
        }
    }
}

struct CurrencyConverterView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyConverterView()
    }
}

