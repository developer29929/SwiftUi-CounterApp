//
//  ContentView.swift
//  counter app
//
//  Created by Francesco Borrelli on 01/04/26.
//

import SwiftUI

struct ContentView: View {
    @State var numeroIniziale = 0
    var body: some View {
        VStack {
            Text("\(numeroIniziale)")
                .font(.largeTitle)
            HStack {
                
                Button(action: {
                    if (numeroIniziale != 0){
                        numeroIniziale -= 1
                    }
                }, label: {
                    Image(systemName: "minus.square.fill")
                        .font(Font.largeTitle.bold())
                })
                .frame(width: 10, height: 10)
                .offset(x: 15, y: 0)
                
                Button(action: {
                    numeroIniziale += 1
                }, label: {
                    Image(systemName: "plus.square.fill")
                        .font(Font.largeTitle.bold())
                })
                .offset(x: 60, y: 0)
                Button(action: {
                    numeroIniziale = 0
                }, label: {
                    Text("RESET")
                        .fontWeight(.bold)
                        .offset(x: -30, y: 10)
                })
                
                .offset(x: 0, y: 50)
                
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
