//
//  SwinjectView.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/26/23.
//

import SwiftUI

struct SwinjectView: View {
    
    private let viewModel = container.resolve(SwinjectViewModel.self)!
    
    var body: some View {
        Text("Hello, Swinject!")
            .onAppear { viewModel.onAppear() }
    }
}

#Preview {
    SwinjectView()
}
