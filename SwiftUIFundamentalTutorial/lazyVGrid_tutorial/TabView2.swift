//
//  TabView2.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/23.
//

import SwiftUI

struct tabModel2: Identifiable {
    let id = UUID()
    var title: String
    var subTitle: String
}

extension tabModel2 {
    static var dummyModel2: [tabModel2] {
        (0...30).map{ (number: Int) in
            tabModel2(title: "타이틀: \(number)", subTitle: "서브 타이틀:\(number)")
        }
    }
}

struct TabView2: View {
    
    var dummyModel2 = tabModel2.dummyModel2
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.fixed(180)), GridItem(.fixed(180))], content: {
                ForEach(dummyModel2, content: { (dataItem: tabModel2) in
                    Rectangle()
                        .foregroundColor(.orange)
                        .cornerRadius(30)
                        .frame(height: 180)
                        .overlay(
                            VStack {
                                Circle()
                                    .frame(width: 100)
                                    .foregroundColor(.black)
                                Text(dataItem.title)
                                Text(dataItem.subTitle)
                            }
                        )
                })
            })
        }
    }
}

//struct TabView2_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView2()
//    }
//}
