//
//  ContentView.swift
//  chapter10
//
//  Created by 小田貴将 on 2025/09/04.
//
import SwiftUI

struct TodoListView: View {
    @State var isPresented: Bool = false
    @State var tasks: [String] = ["お掃除", "瞑想", "買い物"]

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                if tasks.isEmpty {
                    Text("タスクがありません")
                    Spacer()
                } else {
                    List {
                        ForEach(tasks, id: \.self) { task in
                            Text(task)
                        }
                        .onDelete(perform: { offsets in
                            tasks.remove(atOffsets: offsets)
                        })
                    }
                }
            }
            .navigationTitle("To-Do リスト")
            .toolbar {
                Button(
                    action: {
                        isPresented.toggle()
                    },
                    label: {
                        Image(systemName: "plus")
                    }
                )
            }
            .sheet(isPresented: $isPresented) {
                SheetView(tasks: $tasks)
            }
        }
    }
}

#Preview {
    TodoListView()
}

struct SheetView: View {
    @State var newTask: String = "" // 入力した内容を保持するためのプロパティ
    @Binding var tasks: [String]    // 表示するタスクのデータ

    var body: some View {
        VStack(spacing: 24) {
            TextField("新しいタスクを入力", text: $newTask)
                .textFieldStyle(.roundedBorder)

            Button(
                action: {
                    tasks.append(newTask) // 追加
                    newTask = ""// 追加
                },
                label: {
                    Text("追加")
                        .font(.headline)
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color.blue)
                        .clipShape(.buttonBorder)
                }
            )
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    SheetView(tasks: .constant([]))
}
