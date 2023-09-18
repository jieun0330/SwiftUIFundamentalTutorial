//
//  MyProfile.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/18.
//

import SwiftUI

struct MyProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    var body: some View {
        
        ScrollView {
//            NavigationView {
                VStack {
                    
    //                Text("내 프로필")
    //                    .fontWeight(.heavy)
    //                    .multilineTextAlignment(.leading)
                    
                    MyCircleImageView(imageString: "cyndi")
                        .padding(.vertical, 20)
                    
//                    Image("cyndi")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 200, height: 200)
//                        .clipShape(Circle())
//                        .overlay(
//                            Circle()
//                                .stroke(Color.yellow, lineWidth: 14)
//                        )
                    
//                    Spacer()
//                        .frame(height: 20)
                    
                    Text("개발하는 정대리")
                        .fontWeight(.black)
                        .font(.system(size: 30))
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("구독 좋아요 부탁드립니다!")
                        .font(.system(size: 25))
                        .fontWeight(.black)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text("구독하러 가기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(20)
                        }
                        
                        Button {
                            
                        } label: {
                            Text("오픝깨톡방 가기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(20)
                        }
                    }
                    .padding(20)
                    
                    Spacer()
                }
//                .navigationBarTitle("내 프로필")
//            }
        } // ScrollView
        .navigationTitle("내 프로필")
        .onAppear {
            self.isNavigationBarHidden = false
        }
        .navigationBarItems(trailing: NavigationLink(destination: Text("설정화면입니다")
            .font(.largeTitle)
            .fontWeight(.black)) {
            Image(systemName: "gear")
                    .font(.largeTitle)
                .foregroundColor(.black)
        })
        
    }
}

//struct MyProfile_Previews: PreviewProvider {
//    static var previews: some View {
//        MyProfile()
//    }
//}
