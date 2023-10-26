//
//  SwinjectViewModel.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/26/23.
//

import Foundation

class SwinjectViewModel {
    
    private let cryptoRepository: Repositoriable
    private let nftRepository: Repositoriable
    
    init(cryptoRepository: Repositoriable, nftRepository: Repositoriable) {
        self.cryptoRepository = cryptoRepository
        self.nftRepository = nftRepository
    }
    
    func onAppear() {
        dump(cryptoRepository)
        dump(nftRepository)
    }
}
