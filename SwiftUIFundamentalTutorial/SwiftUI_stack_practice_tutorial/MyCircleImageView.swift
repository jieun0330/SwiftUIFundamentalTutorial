//
//  MyCircleImageView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/18.
//

import SwiftUI

struct MyCircleImageView: View {
    
    var imageString: String
    
    var body: some View {
        Image(imageString)
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle()
                    .strokeBorder(Color.yellow, lineWidth: 15)
            )
        // stroke와 strokeBorder의 차이점은?
    }
}

//struct MyCircleImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyCircleImageView()
//    }
//}
