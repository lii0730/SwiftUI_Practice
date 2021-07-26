//
//  MyTextView.swift
//  SwiftUI_Practice
//
//  Created by LeeHsss on 2021/07/26.
//

import SwiftUI

struct MyTextView: View {
    
    @State private var index: Int = 0
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    // 배경색 배열준비
    private let backgroundColors = [ Color.red, Color.yellow, Color.blue, Color.green, Color.orange]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            
            if(self.index == self.backgroundColors.count - 1) {
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Preview: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
