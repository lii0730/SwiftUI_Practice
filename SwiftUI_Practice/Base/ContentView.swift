//
//  ContentView.swift
//  SwiftUI_Practice
//
//  Created by LeeHsss on 2021/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    
                    withAnimation {
                        self.isActivated.toggle()
                    }
                        
                }
                
                // 네비게이션 링크 생성
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40.0))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
            }
            .navigationBarTitle("Navigation")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
