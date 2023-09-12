//
//  MyNavigationView.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/11.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        
        NavigationView {
//            Text("MyNavigationView")
            
            MyList(isNavigationBarHidden: <#Binding<Bool>#>)
                .navigationBarTitle("안녕하세요!", displayMode: .inline)

        }
    }
}

//struct MyNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyNavigationView()
//    }
//}
