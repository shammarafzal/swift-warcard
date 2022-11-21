//
//  ContentView.swift
//  WarCard
//
//  Created by Ammar Afzal on 21/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("toronto")
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("CN Tower.").font(.title).foregroundColor(Color.white)
                    Text("Toronto").font(.subheadline).foregroundColor(Color.white)
                    
                }
              
                .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/).background(Color.black.opacity(0.7))
            }
            
            
            ZStack{
                Image("london")
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("Big Ben.").font(.title).foregroundColor(Color.white)
                    Text("London").font(.subheadline).foregroundColor(Color.white)
                    
                }
              
                .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/).background(Color.black.opacity(0.7))
            }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
