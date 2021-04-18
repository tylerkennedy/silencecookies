//
//  BigButtonStyle.swift
//  SilenceCookies
//
//  Created by Tyler Kennedy on 4/16/21.
//

import SwiftUI

struct BigButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 330, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("BackgroundColor"))
            .background(Color("SpaceCadet"))
            .cornerRadius(10.0)
            .padding(.bottom, 50)
    }
}

struct BigButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack {
                Text("Get Started")
                    .fontWeight(.bold)
                    .font(.body)
            }
            
        })
        .buttonStyle(BigButtonStyle())
        //PremiumView().environment(\.colorScheme, .dark)
    }
}
