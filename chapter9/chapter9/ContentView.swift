//
//  ContentView.swift
//  chapter9
//
//  Created by 小田貴将 on 2025/09/03.
//

import SwiftUI
struct ContentView: View{
    @State var isPresented = false
    var body: some View{
        Button(
            action:{isPresented = true
                
                },
            label:{
                Text("モーダル遷移")
            }
        )
        .sheet(isPresented: $isPresented){
            InputFormView()
        }
        }
    }

struct InputFormView: View{
    @Environment(\.dismiss) var dismiss
    var body: some View{
        
        Text("入力フォーム画面です")
            .font(.largeTitle)
            .navigationTitle("入力フォーム画面")
        
        Button(
            action:{
                dismiss()
            },
            label:{
                Text("閉じる")
            }
        )
    }
    }
