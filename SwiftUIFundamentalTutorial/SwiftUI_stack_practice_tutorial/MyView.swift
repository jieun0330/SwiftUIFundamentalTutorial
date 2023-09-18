//
//  MyView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/18.
//

import SwiftUI

struct MyView: View {
    
    var bgColor: Color
    var title: String
    
    var body: some View {
        ZStack {
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(title)
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

//struct MyView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyView()
//    }
//}
