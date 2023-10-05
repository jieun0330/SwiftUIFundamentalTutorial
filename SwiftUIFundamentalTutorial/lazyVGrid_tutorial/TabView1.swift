//
//  TabView1.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/22.
//

import SwiftUI

struct tabModel1: Identifiable {
    let id = UUID()
    let sfSymbol: Image
    let title: String
    let time: String
}

extension tabModel1 {
    static var dummyModel1: [tabModel1] {
        (1...30).map{ (number: Int) in
            tabModel1(sfSymbol: Image(systemName: "book.fill"), title: "책읽기", time: "1 PM - 3 PM")
        }
    }
}

struct TabView1: View {
    
    var dummyModel1 = tabModel1.dummyModel1
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.fixed(30))], content: {
                ForEach(dummyModel1, content: { (dataItem: tabModel1) in
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(width: 350, height: 100)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                dataItem.sfSymbol
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(.white)
                                
                                VStack(alignment: .leading) {
                                    Text("\(dataItem.title)")
                                        .fontWeight(.bold)
                                        .font(.system(size: 20))
                                    Text("\(dataItem.time)")
                                }
                                .foregroundColor(.white)
                                Spacer()
                            }
                                .padding(.leading, 10)
                        )
                })
            })
        }
    }
}

//struct TabView1_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView1()
//    }
//}
