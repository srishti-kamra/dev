//
//  ContentView.swift
//  sim
//
//  Created by Srishti Kamra  on 11/13/22.
//

import SwiftUI
import AVKit
import ConfettiSwiftUI

struct ContentView: View {
    //var for the score
    @State var score = 0
    @State var images = String()
    var body: some View {
        NavigationView{
            //Home screen
            VStack(spacing: 20){
                Text("Welcome to the music quiz game")
                    .font(.body)
                //button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("START QUIZ")
                        .lilacTitle()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







