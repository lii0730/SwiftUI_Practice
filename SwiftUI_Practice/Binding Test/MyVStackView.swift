//
//  MyVStackView.swift
//  SwiftUI_Practice
//
//  Created by LeeHsss on 2021/07/26.
//

import SwiftUI

struct MyVStackView: View {
    
    @Binding var isActivated: Bool
    // 바인딩 사용시 init 생성자 생성?
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("1!")
            .fontWeight(.bold)
            .font(.system(size: 40))
            .padding()
            
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .padding()
            
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .padding()
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(5)
    }
}

struct MyVStackView_Preview: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
