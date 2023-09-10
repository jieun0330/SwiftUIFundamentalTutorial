//
//  CircleImageView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/10.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        
        Image("myImage")
            .resizable()
            .scaledToFill()
//            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .red, radius: 10, x: 5, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.4)
            )
            .overlay(
                Circle()
                    .stroke(Color.red, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle()
                    .stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle()
                    .stroke(Color.blue, lineWidth: 10)
            )
            .overlay(
                Text("호호")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            )
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
        
    }
}
//
//struct CircleImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImageView()
//    }
//}
