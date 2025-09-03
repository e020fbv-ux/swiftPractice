//
//  chapter7App.swift
//  chapter7
//
//  Created by 小田貴将 on 2025/09/03.
//

import SwiftUI

struct SampleView: View {
    @State var inputAnswer: String = ""

    var body: some View {
        TextField("回答を入力してください", text: $inputAnswer)
            .textFieldStyle(.roundedBorder)
    }
}
