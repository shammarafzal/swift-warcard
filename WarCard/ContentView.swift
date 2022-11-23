//
//  ContentView.swift
//  WarCard
//
//  Created by Ammar Afzal on 21/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    @State private var showingAlert = false
    @State private var won = ""
    var body: some View {
        ZStack{
            Image("background").resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }
                    else if(cpuRand > playerRand){
                        cpuScore += 1
                    }
                    else{
                        print("Tie")
                    }
                    if(playerScore >= 10){
                        showingAlert = true
                        playerScore = 0
                        cpuScore = 0
                        won = "Player Win"
                        
                    }
                    else if (cpuScore >= 10){
                        showingAlert = true
                        playerScore = 0
                        cpuScore = 0
                        won = "CPU Win"
                    }
                    
                }, label: {
                    Image("dealbutton")
                }).alert(isPresented: $showingAlert) {
                    Alert(title: Text("Important message"), message: Text(won), dismissButton: .default(Text("Got it!")))
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{

                        Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom)

                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white).padding(.bottom)

                    }
                    Spacer()
                    VStack{

                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom)

                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white).padding(.bottom)

                    }
                    Spacer()
                }
                Spacer()

            }
            Spacer()




    }

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
