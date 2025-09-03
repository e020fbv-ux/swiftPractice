//
//  ContentView.swift
//  chapter8
//
//  Created by 小田貴将 on 2025/09/03.
//
import SwiftUI
struct ContentView: View{
    var body: some View{
        NavigationStack{
            List{
                Text("ピザ🍕")
                Text("寿司🍣")
                Text("ラーメン🍜")
                Text("ハンバーガー🍔")
                
            }
                .navigationTitle("好きな食べ物リスト")
        }
    }
}

