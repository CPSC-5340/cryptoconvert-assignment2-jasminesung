//
//  ConverterView.swift
//  Assignment2
//
//  Created by Jasmine Sung on 23/3/2024.
//

import SwiftUI

struct ConverterView: View {
    var type : String
    var body: some View {
        if type == "currency" {
            CurrencyConverterView()
        } else if type == "crypto" {
            CryptoConverterView().hideKeyboardWhenTappedAround()
        }
    }
}

extension View {
    func hideKeyboardWhenTappedAround() -> some View  {
        return self.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                  to: nil, from: nil, for: nil)
        }
    }
}

#Preview {
    ConverterView(type: "currency")
}
