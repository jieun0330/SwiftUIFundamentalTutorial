//
//  MyBasicCard.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/11.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        
        HStack(spacing: 20) {
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                
                Divider()
                    .opacity(0)
                
//                Rectangle()
//                    .frame(height: 0)
                
                Text("하하하")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer()
                    .frame(height: 5)

                Text("하하하")
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(.purple)
        .cornerRadius(20)
    }
}

//struct MyBasicCard_Previews: PreviewProvider {
//    static var previews: some View {
//        MyBasicCard()
//    }
//}
