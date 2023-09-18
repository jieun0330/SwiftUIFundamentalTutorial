//
//  SwiftUIFundamentalTutorialApp.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/09.
//

import SwiftUI

@main
struct SwiftUIFundamentalTutorialApp: App {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            MyTabView()
            
//            MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)
            
//            MyGeometryReaderVStack()
            
//            MyGeometryReader()
            
//            ContentView()
            
//            MyNavigationView()
            
//            MyList()
            
//             NavigationView {
//                ZStack(alignment: .bottomTrailing) {
//
//                    VStack(alignment: .leading, spacing: 0) {
//
//                        HStack {
//
//                            NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
//                                Image(systemName: "line.horizontal.3")
//                                    .font(.largeTitle)
//                                    .foregroundColor(.black)
//                            }
//
//                            Spacer()
//
//                            NavigationLink(destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)) {
//                                Image(systemName: "person.crop.circle.fill")
//                                    .font(.largeTitle)
//                                    .foregroundColor(.black)
//                            }
//                        }
//                        .padding( 20)
//
//                        Text("정대리 할 일 목록")
//                            .font(.system(size: 40))
//                            .fontWeight(.black)
//                            .padding(.horizontal, 20)
//
//                        ScrollView {
//                            VStack {
//                                MyProjectCard()
//                                MyBasicCard()
//                                MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: .blue)
//                                MyCard(icon: "cart.fill", title: "마트 장보기", start: "10 AM", end: "11 AM", bgColor: .yellow)
//                                MyCard(icon: "cart.fill", title: "영상 다시 보기", start: "10 AM", end: "11 AM", bgColor: .red)
//                                MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: .blue)
//                            }
//                            .padding()
//                        }
//                    }
//
//
//
//                    Circle()
//                        .foregroundColor(.yellow)
//                        .frame(width: 60, height: 60)
//                        .overlay(
//                            Image(systemName: "plus")
//                                .font(.system(size: 30))
//                                .foregroundColor(.white)
//                        )
//                        .padding(10)
//                        .shadow(radius: 20)
//                }
//                .navigationBarTitle("뒤로가기")
//                .navigationBarHidden(self.isNavigationBarHidden)
//                .onAppear {
//                    self.isNavigationBarHidden = true
//                }
//            }
            
            
//            MyBasicCard()
            
//            MyProjectCard()
            
//            MyZstack()
            
//            MyHstack()
            
//            MyVstack()
            
//            SwiftUI_Stacks_tutorial()
            
//            NavigationView {
//                VStack {
//
//                    Image("myImage")
//                        .frame(height: 10)
//                        .offset(y: -1100)
//
//                    CircleImageView()
//
//                    HStack {
//
//                        NavigationLink(destination: MyWebview(url: "https://www.youtube.com/watch?v=ZodiJ0oy2kM&list=PLgOlaPUIbynqyJHiTEv7CFaXd8g5jtogT&index=6")
//                            .edgesIgnoringSafeArea(.all)
//                        ){
//                            Text("구독하러 가기")
//                                .font(.system(size: 20))
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//                                .padding()
//                                .background(.red)
//                                .cornerRadius(20)
//                        }
//
//                        NavigationLink(destination: MyWebview(url: "https://www.youtube.com/watch?v=ZodiJ0oy2kM&list=PLgOlaPUIbynqyJHiTEv7CFaXd8g5jtogT&index=6")
//                            .edgesIgnoringSafeArea(.all)
//                        ){
//                            Text("오픈카톡방 가기")
//                                .font(.system(size: 20))
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//                                .padding()
//                                .background(.orange)
//                                .cornerRadius(20)
//                        }
//
//                    }
//                    .padding(50)
//                }
//            }
        }
    }
}
