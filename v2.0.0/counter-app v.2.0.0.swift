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
                
                //pulsante decremento
                Button(action: {
                    if (numeroIniziale != 0){
                        numeroIniziale -= 1
                    }
                }, label: {
                    Image(systemName: "minus.square.fill")
                        .font(Font.largeTitle.bold())
                })
                .frame(width: 10, height: 10)
                .offset(x: 69, y: 0)
                
                //pulsante incremento
                
                Button(action: {
                    if (numeroIniziale != 9999){
                        numeroIniziale += 1
                    }
                }, label: {
                    Image(systemName: "plus.square.fill")
                        .font(Font.largeTitle.bold())
                })
                .offset(x: 120, y: 0)
                
                
                //pulsante reset
                
                Button(action: {
                    numeroIniziale = 0
                }, label: {
                    Text("RESET")
                        .fontWeight(.bold)
                        .offset(x: 7, y: -5)
                })
                
                .offset(x: 18, y: 50)
                
                //pulsante +2
                
                Button(action: {
                    if (numeroIniziale != 9999){
                        numeroIniziale += 2
                    }
                }, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .font(Font.largeTitle.bold())
                        .frame(width: 20, height: 20)
                        .offset(x: 7, y: 0)
                    Text("2")
                        .font(Font.largeTitle.bold())
                        
                })
                .offset(x: 3, y: 110)
                
                //pulsante -2
                
                Button(action: {
                    if (numeroIniziale != 0){
                        numeroIniziale -= 2
                    }
                }, label: {
                    Image(systemName: "minus")
                        .resizable()
                        .font(Font.largeTitle.bold())
                        .frame(width: 14, height: 4)
                        .offset(x: 1, y: 0)
                    Text("2")
                        .font(Font.largeTitle.bold())
                        .offset(x: -3, y: 0)
                        
                })
                .offset(x: -133, y: 110)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
