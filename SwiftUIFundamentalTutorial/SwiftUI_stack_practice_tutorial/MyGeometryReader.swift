//
//  MyGeometryReader.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/18.
//

import SwiftUI

struct MyGeometryReader: View {
    
    @State var isActivated = false
    
    var body: some View {
        
        GeometryReader { geometryReader in
            
            VStack(spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(height: geometryReader.size.height / 3)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .onTapGesture {
                        withAnimation {
                            self.isActivated.toggle()
                        }
                    }
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(height: geometryReader.size.height / 3)
                    .foregroundColor(.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(height: geometryReader.size.height / 3)
                    .foregroundColor(.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(.white)
//                    .background(Color.purple)
                
//                    .onTapGesture {
//                        print("HStack 이 클릭되었다.")
//
//                        // 애니메이션과 함께
//                        withAnimation {
//                            // toggle() true이면 false로, false이면 true로
//                            self.isActivated.toggle()
//                }
            }
            .background(Color.yellow)
        }
        .background(Color.yellow)
    }
}

//struct MyGeometryReader_Previews: PreviewProvider {
//    static var previews: some View {
//        MyGeometryReader()
//    }
//}
