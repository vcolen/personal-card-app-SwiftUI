//
//  InfoView.swift
//  personal-card
//
//  Created by Victor Colen on 27/10/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let icon: String
    let iconColor: Color?
    
    init(text: String, icon: String, iconColor: Color?) {
        self.text = text
        self.icon = icon
        self.iconColor = iconColor
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(HStack {
                Image(systemName: icon)
                    .foregroundColor(iconColor)
                    .padding(10)
                Text(text)
            })
            .padding()
    }
}
    
    struct InfoView_Previews: PreviewProvider {
        static var previews: some View {
            InfoView(text: "Your text goes here", icon: "cloud.rain", iconColor: nil)
                .previewLayout(.sizeThatFits)
        }
    }
    
    
