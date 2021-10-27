//
//  ContentView.swift
//  personal-card
//
//  Created by Victor Colen on 27/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(K.Color.mainBackgroundColor)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("myself")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Victor Colen")
                    .font(Font.custom("Parisienne-Regular", size: 50))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .font(.system(.title))
                    .bold()
                    .foregroundColor(.white)
                
                Divider()
                
                InfoView(text: "+55 (31) 99205-4988", icon: "phone.circle.fill", iconColor: .green)
                
                InfoView(text: "colen.victor@icloud.com", icon: "envelope.fill", iconColor: nil)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
