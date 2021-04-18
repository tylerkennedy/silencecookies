//
//  OnBoardingView.swift
//  SilenceCookies
//
//  Created by Tyler Kennedy on 4/16/21.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("needsAppOnboarding") var needsAppOnboarding: Bool = false
    
    @State private var selection: Tab = .one // Set default tab to settings
    
    enum Tab {
        case one
        case two
    }
    var body: some View {
        let instructions: [String] = [ "1. Open Settings", "2. Tap on Safari", "3. Tap on Content Blockers" , "4. Enable Silence Cookies"]
        let icons: [String] = ["gear", "safari", "hand.raised.slash.fill", "checkmark.circle"]
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            TabView(selection: $selection) {
                VStack {
                    Spacer()
                    Text("Silence Cookies")
                        .foregroundColor(Color("SpaceCadet"))
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    Spacer()
                    VStack() {
                        Text("Block annoying website cookies banners")
                            .foregroundColor(Color("SpaceCadet"))
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Image("CookieBanner")
                            .resizable()
                            .scaledToFit()
                            .padding([.leading, .trailing], 40)
                    }
                    Spacer()
                    Button(action: {selection = .two}, label: {
                        Text("Get Started")
                            .fontWeight(.bold)
                            .font(.body)
                    })
                    .buttonStyle(BigButtonStyle())
                    
                }.padding(30)
                .tag(Tab.one)
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                    Spacer()
                    Image(systemName: "gear")
                        .foregroundColor(Color("SpaceCadet"))
                        .font(.system(size: 60.0, weight: .bold))
                        .padding()
                    Text("Activate in settings")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    Text("You must enable Silence Cookies in your settings ")
                        .multilineTextAlignment(.center)
                    Spacer()
                    VStack(alignment: .leading) {
                        ForEach(0..<instructions.endIndex) { index in
                            HStack {
                                Image(systemName: icons[index])
                                    .frame(width: 24.0, height: 24.0)
                                    .foregroundColor(Color("SpaceCadet"))
                                Text(instructions[index])
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    Spacer()
                    Button(action: {needsAppOnboarding = false}, label: {
                        HStack {
                            Text("Finish setup")
                                .fontWeight(.bold)
                                .font(.body)
                        }
                    })
                    .buttonStyle(BigButtonStyle())
                }
                .padding(30)
                .tag(Tab.two)
            }
        }
        .animation(.easeIn)
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
        OnboardingView().preferredColorScheme(.dark)
    }
}
