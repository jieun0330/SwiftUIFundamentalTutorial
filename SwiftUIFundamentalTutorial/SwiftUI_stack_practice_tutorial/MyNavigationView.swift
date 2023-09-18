//
//  MyNavigationView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/11.
//

import SwiftUI

struct MyNavigationView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        
        NavigationView {
            //            Text("MyNavigationView")
            
            MyList(isNavigationBarHidden: self.$isNavigationBarHidden)
                .navigationTitle("안녕하세요!")
            //                .navigationBarTitle("안녕하세요!", displayMode: .automatic)
                .navigationBarItems(leading: Button(action: {
                    print("호호")
                }) {
                    Text("호호")
                }
                                    ,trailing:
                                        NavigationLink(destination: Text("넘어온 화면입니다")) {
//                    Text("네비게이션")
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                }
                )
        }
    }
}

//struct MyNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyNavigationView()
//    }
//}
