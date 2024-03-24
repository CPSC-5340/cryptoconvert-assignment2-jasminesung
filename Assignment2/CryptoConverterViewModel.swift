//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by Jasmine Sung on 24/3/2024.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    @Published private(set) var cryptoList = [CryptoItemModel]()
    
    func fetchList() {
        self.cryptoList = [
            CryptoItemModel(cryptoName: "US Dollar", multiplier: 23450.0),
            CryptoItemModel(cryptoName: "Ethereum", multiplier: 14.3),
            CryptoItemModel(cryptoName: "Tether", multiplier: 23450.0),
            CryptoItemModel(cryptoName: "BNB", multiplier: 77.2),
            CryptoItemModel(cryptoName: "HK Dollar", multiplier: 500179.0),
            CryptoItemModel(cryptoName: "XRP", multiplier: 62113.0)
        ]
    }
}

