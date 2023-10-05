//
//  lazyVGrid_tutorial.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/22.
//

import SwiftUI

struct MyModel: Identifiable {
    let id = UUID() // UUID를 해야 Identifiable이된다
    let title: String
    let content: String
}

extension MyModel {
    static var dummyDataArray: [MyModel] {
        (1...2000).map{ (number: Int) in
            MyModel(title: "타이틀: \(number)", content: "컨텐트: \(number)")
        }
    }
}

struct lazyVGrid_tutorial: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    
    var body: some View {
        // 스크롤뷰로 감싸서 스크롤 가능하도록 설정
        ScrollView {
            // lazy vertical grid view
            // column은 horizontal item layout을 설정하는 부분
            // gird tiem option 3개
            // .fixed 고정
            // .adaptive 여러개 채우기 - 계산해서 분할로 채우기
            // .flexible 하나만 채우기 - 계산해서 분할로 채우기
            LazyVGrid(columns: [GridItem(.fixed(200)),
                                GridItem(.adaptive(minimum: 50))
//                                GridItem(.flexible(minimum: 50))t
                               ], spacing: 100, content: {
                
                ForEach(dummyDataArray, content: { (dataItem: MyModel) in
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 120)
                        .overlay(
                            Text("\(dataItem.title)")
                        )
                })
            })
        }
    }
}

//struct lazyVGrid_tutorial_Previews: PreviewProvider {
//    static var previews: some View {
//        lazyVGrid_tutorial()
//    }
//}
