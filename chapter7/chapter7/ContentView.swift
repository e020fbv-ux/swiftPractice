//
//  ContentView.swift
//  chapter7
//
//  Created by 小田貴将 on 2025/09/03.
//
import SwiftUI

struct ContentView: View {
    @State private var inputAnswer: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Q.（）に入る言葉を答えなさい。")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)

            Group {
                Text("祇園精舎の鐘の声、諸行（ ")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)

                + Text("\(inputAnswer)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)

                + Text(" ）の響きあり。")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }

            TextField("回答を入力してください", text: $inputAnswer)
                .textFieldStyle(.roundedBorder)
        }
        .padding(.all, 30)
    }
}
