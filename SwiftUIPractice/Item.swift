//
//  Item.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/25/23.
//

import Foundation

struct ValueItem: SelfReturnable {
    let name: String
    var age: Int
}


final class RefItem: RefSelfReturnable {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
