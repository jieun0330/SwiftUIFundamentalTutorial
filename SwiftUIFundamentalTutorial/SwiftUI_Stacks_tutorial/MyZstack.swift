//
//  MyZstack.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/10.
//

import SwiftUI

struct MyZstack: View {
    var body: some View {
        ZStack {

            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
                .zIndex(2)
                .offset(y: -100)
//                .padding(.bottom, 100)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .zIndex(0)
        }
    }
}

//struct MyZstack_Previews: PreviewProvider {
//    static var previews: some View {
//        MyZstack()
//    }
//}
