//
//  ContentView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            MyVstackView()
            MyVstackView()
            MyVstackView()
        }
        .padding(.all)
        .background(Color.yellow)
    }
}



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
