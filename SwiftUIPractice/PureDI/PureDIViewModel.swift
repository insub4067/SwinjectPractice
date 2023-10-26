//
//  ContentViewModel.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/25/23.
//

import Foundation

class PureDIViewModel: ObservableObject {
    
    private let cryptoRepository: Repositoriable
    private let nftRepository: Repositoriable
    
    init(
        cryptoRepository: Repositoriable = CryptoRepository(),
        nftRepository: Repositoriable = NFTRepository()
    ) {
        self.cryptoRepository = cryptoRepository
        self.nftRepository = nftRepository
    }
    
    func onAppear() {
        dump(cryptoRepository)
        dump(nftRepository)
    }
}
