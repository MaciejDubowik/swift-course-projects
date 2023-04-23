//
//  InfoView.swift
//  Business Card
//
//  Created by Maciej Dubowik on 23/04/2023.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.blue)
                    Text(text)
                }
            )
            .padding(.all)
    }
}
struct InfoView_Previews: PreviewProvider{
    static var previews: some View{
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
