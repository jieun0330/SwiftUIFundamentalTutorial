//
//  MyVstackView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/09.
//

import SwiftUI

struct MyVstackView: View {
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("1!")
                .bold()
                .font(.system(size: 70))
            Text("2!")
                .bold()
                .font(.system(size: 70))
            Text("3!")
                .bold()
                .font(.system(size: 70))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10.0 : 0)
    }
}
