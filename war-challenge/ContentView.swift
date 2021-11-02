//
//  ContentView.swift
//  war-challenge
//
//  Created by M מרטינוב on 07/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"

    @State private var playerScore = 0
    @State private var cpuScore = 0

    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()

                Image("logo")

                Spacer()

                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .padding()

                Spacer()

                Button(action: {
                    // update the card
                    let playerRand = Int.random(in: 2 ... 14)
                    let cpuRand = Int.random(in: 2 ... 14)

                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)

                    // update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand == cpuRand {
                    } else {
                        cpuScore += 1
                    }

                }, label: {
                    Image("dealbutton").padding()
                })

                Spacer()

                HStack {
                    Spacer()

                    VStack {
                        Text("Player")
                        Spacer()
                        Text(String(playerScore)).font(.largeTitle)
                        Spacer()
                    }
                    .padding()

                    Spacer()

                    VStack {
                        Text("CPU")
                        Spacer()
                        Text(String(cpuScore)).font(.largeTitle)
                        Spacer()
                    }
                    .padding()

                    Spacer()
                }
                .foregroundColor(Color.white)
                .fixedSize()
                .padding()

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
