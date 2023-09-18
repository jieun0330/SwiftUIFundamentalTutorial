//
//  MyGeometryReaderVStack.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/18.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack: View {
    
    @State var index: Index = .one
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(spacing: 0) {
                
                Button(action: {
                    print("1번이 클릭되었습니다")
                    
                    withAnimation {
                        self.index = .one
                    }
                                        
                }, label: {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.red)
                })
                
                Button(action: {
                    print("2번이 클릭되었습니다")
                    
                    withAnimation {
                        self.index = .two
                    }
                    
                }, label: {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.blue)
                })
                
                Button(action: {
                    print("3번이 클릭되었습니다")
                    
                    withAnimation {
                        self.index = .three
                    }
                    
                }, label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.green)
                })
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

//struct MyGeometryReaderVStack_Previews: PreviewProvider {
//    static var previews: some View {
//        MyGeometryReaderVStack()
//    }
//}
