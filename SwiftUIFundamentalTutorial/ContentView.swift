//
//  ContentView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack {
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                
                //tap gesture 추가
                .onTapGesture {
                    print("HStack 이 클릭되었다.")
                    
                    // 애니메이션과 함께
                    withAnimation {
                        // toggle() true이면 false로, false이면 true로
                        self.isActivated.toggle()
            }
                }// HStack
                
                // 네비게이션 버튼
                NavigationLink(destination: MyTextView(isActivated: $isActivated) ) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            }
        } // NavigationViews
    }
}



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


