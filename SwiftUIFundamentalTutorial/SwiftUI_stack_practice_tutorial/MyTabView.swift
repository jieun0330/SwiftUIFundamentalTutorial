//
//  MyTabView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/18.
//

import SwiftUI

struct MyTabView: View {
        
    var body: some View {
        
        TabView {
            // 보여질 화면
            MyView(bgColor: .red, title: "1번")
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
                .padding(.bottom)
                .background(Color.white)
            
            MyView(bgColor: .orange, title: "2번")
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
                .padding(.bottom)
                .background(Color.white)
            
            MyView(bgColor: .blue, title: "3번")
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
                .padding(.bottom)
                .background(Color.white)
        }
    }
}

//struct MyTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyTabView()
//    }
//}
