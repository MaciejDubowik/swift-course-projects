//
//  ContentView.swift
//  Business Card
//
//  Created by Maciej Dubowik on 23/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color
                .blue
                .ignoresSafeArea(.all)
            VStack{
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0, height: 250.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 10)
                    )
                
                Text("Maciej Dubowik")
                    .font(Font.custom("Sacramento-Regular", size: 50))
                    .bold()
                    .foregroundColor(.white)
                    
                Text("iOS Developer")
                    .font(.system(size: 28))
                    .foregroundColor(.white)
                   
                Divider()
                
                InfoView(text: "+48 123 456 789", imageName: "phone.fill")
                InfoView(text: "maciej@email.com", imageName: "envelope.fill")
                
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



