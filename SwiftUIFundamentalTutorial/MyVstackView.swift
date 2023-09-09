//
//  MyVstackView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/09.
//

import SwiftUI

struct MyVstackView: View {
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
        .background(Color.red)
    }
}
