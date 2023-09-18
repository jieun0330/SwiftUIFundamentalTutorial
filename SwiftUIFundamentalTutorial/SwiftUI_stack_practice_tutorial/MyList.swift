//
//  MyList.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/11.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    var body: some View {
        
        List {
            
            Section(
                header:
                    Text("오늘 할 일")
                        .font(.headline)
                        .foregroundColor(.black),
                footer:
                    Text("footer")
            ) {
                ForEach(1...3, id: \.self) { itemIndex in
                    
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: .green)
                    
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header:
                    Text("내일 할 일")
                        .font(.headline)
                        .foregroundColor(.black)) {
                ForEach(1...20, id: \.self) { itemIndex in
                    
                    MyCard(icon: "book.fill", title: "책읽기 \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: .blue)
                    
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)

        }
        .listStyle(GroupedListStyle())
//        .navigationTitle("내 목록")
//        .navigationBarTitle("메인")
//        .navigationBarHidden(self.isNavigationBarHidden)
//        .onAppear {
//            self.isNavigationBarHidden = false
//        }
//        .listStyle(PlainListStyle())
        
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("마이리스트 \($0)")
//            }
//        }
        
//        List {
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//        }
    }
}

//struct MyList_Previews: PreviewProvider {
//    static var previews: some View {
//        MyList()
//    }
//}
