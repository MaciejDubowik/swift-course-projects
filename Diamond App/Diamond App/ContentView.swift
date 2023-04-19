//
//  ContentView.swift
//  Diamond App
//
//  Created by Maciej Dubowik on 19/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal).edgesIgnoringSafeArea(.all)
         
            VStack {
                Image("diamond").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                Text("Diamond App!")
                    .font(.largeTitle)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
