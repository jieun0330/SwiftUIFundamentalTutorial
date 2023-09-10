//
//  SwiftUI_text_tutorial.swift
//  SwiftUIFundamentalTutorial
//
//  Created by 박지은 on 2023/09/10.
//

import SwiftUI

struct SwiftUI_text_tutorial: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .long
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse: Bool = false
    
    var number: Int = 123
    
    var body: some View {
        
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
            // 글자 간격의 사이
                .tracking(2)
            
                .font(.system(.body, design: .monospaced))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            // 줄 간격의 사이
                .lineSpacing(10)
            
            // 글이 길어서 앞, 중간, 뒤 짤리게 보이는 mode
                .truncationMode(.middle)
            
                .shadow(color: Color.red, radius: 1.5, x: -10, y: 10)
            
                .padding(20)
                .background(Color.yellow)
                .padding()

                .background(Color.green)
                .cornerRadius(20)
                
                .padding()
            
            Text("안녕하세요!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: SwiftUI_text_tutorial.dateFormat)")
            
            Text("참 혹은 거짓: \(String(trueOrFalse))")
            
            Text("숫자입니다: \(number)")
            
        }
    }
}

//struct SwiftUI_text_tutorial_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUI_text_tutorial()
//    }
//}
