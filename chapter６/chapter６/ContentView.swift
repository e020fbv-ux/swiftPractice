//
//  ContentView.swift
//  chapter６
//
//  Created by 小田貴将 on 2025/09/02.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int=0
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.1).ignoresSafeArea()
        
            VStack(spacing:30){
                Text("筋トレ回数:\(count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(16)
                    .background(Color.gray)
                    .cornerRadius(10)
                HStack(spacing:16){
                    Button(
                        action:{
                            count=max(0,count-1)
                        },
                        label:{
                            Image(systemName:"minus")
                                .bold()
                                .font(.title2)
                                .frame(width:50,height:50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                                .shadow(radius:2)
                        }
                    )
                    
                    Button(
                        action:{ count += 1},
                        label:{
                            Image(systemName:"plus")
                                .bold()
                                .font(.title2)
                                .frame(width:50,height:50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                                .shadow(radius:2)
                        }
                    )
                }
            }
            }
            
            
        }
    }

