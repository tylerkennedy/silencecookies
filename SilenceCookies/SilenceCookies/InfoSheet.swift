//
//  InfoSheet.swift
//  SilenceCookies
//
//  Created by Tyler Kennedy on 4/17/21.
//

import SwiftUI

struct InfoSheet: View {
    var body: some View {
        ScrollView {
            ZStack {
                Color("BackgroundColor").ignoresSafeArea()
                VStack(alignment: .leading) {
                    Text("How Does Silence Cookies Work?")
                        .bold()
                        .font(.title)
                        .padding([.top, .bottom])
                        .foregroundColor(Color("SpaceCadet"))
                    Text("Silence Cookies blocks cookie banners commonly shown on website. Silence Cookies hides the elements on the webpage that are used to display the banner. Silence Cookies does not accept or deny cookies, it just hides the banner while you are on the website.")
                        .foregroundColor(Color("SpaceCadet"))
                    Text("Enable the content blocker in your settings")
                        .bold()
                        .font(.title)
                        .padding([.top, .bottom])
                        .foregroundColor(Color("SpaceCadet"))
                    Text("You must enable this app in your settings for the cookie banner blocking to work. Silence Cookies instructs you how to do this when you install the app but here is a refresher: Go to Settings>Safari>Content Blockers>Silence Cookies.")
                        .foregroundColor(Color("SpaceCadet"))
                    Text("Privacy")
                        .bold()
                        .font(.title)
                        .padding([.top, .bottom])
                        .foregroundColor(Color("SpaceCadet"))
                    Text("This app does not and cannot store any data about your browsing history or websites that you access. The cookie banner blocking code does not have access to your browser history. The blocking rules are loaded into Safari before you go to a webpage. Silence Cookies does not spy on you in any way (You are probably not that important anyway).")
                        .foregroundColor(Color("SpaceCadet"))
                    Text("Is this a meme?")
                        .bold()
                        .font(.title)
                        .padding([.top, .bottom])
                        .foregroundColor(Color("SpaceCadet"))
                    Text("This app and it's name were inspired by a meme but is a fully functional cookies banner blocking app.")
                        .foregroundColor(Color("SpaceCadet"))
                } .padding()
                
            }
        }
    }
}

struct InfoSheet_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheet()
    }
}
