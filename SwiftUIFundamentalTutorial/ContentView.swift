//
//  ContentView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("안녕하세요!")
                .bold()
                .font(.system(size: 70))
            Text("안녕하세요!")
                .bold()
                .font(.system(size: 70))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
