//
//  ContentViewModel.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/25/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    func onAppear() {
        
        let valueItem = ValueItem(name: "kim", age: 1)
        let refItem = RefItem(name: "lee", age: 2)
        
        let newValueItem = valueItem.with(\.age, 11)
        let newRefItem = refItem.with(\.age, 12)
        
        dump(newValueItem)
        dump(newRefItem)
    }
}
