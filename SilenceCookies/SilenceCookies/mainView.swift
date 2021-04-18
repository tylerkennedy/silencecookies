//
//  mainView.swift
//  SilenceCookies
//
//  Created by Tyler Kennedy on 4/16/21.
//

import SwiftUI
import SafariServices

struct mainView: View {
    
    //    let api = SFContentBlockerState()
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    @State private var showInfoSheet: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("BackgroundColor").ignoresSafeArea()
                VStack(alignment: .center) {
//                    Text("Silence Cookies")
//                        .foregroundColor(Color("SpaceCadet"))
//                        .fontWeight(.bold)
//                        .font(.system(size: 40))
//                    Spacer()
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 40)
                    Spacer()
                    VStack() {
                        Text("Block annoying website cookies banners")
                            .foregroundColor(Color("SpaceCadet"))
                            .fontWeight(.bold)
                            .font(.headline)
                            .padding(.bottom, 20)
                        Button(action: {showInfoSheet = true}, label: {
                            Text("How does it work?")
                                .foregroundColor(.gray)
                                .fontWeight(.semibold)
//                                .underline()
                        })
                        .sheet(isPresented: $showInfoSheet ) {
                            InfoSheet()
                        }
                    }
                    Spacer()
                    
                    
                }
            }
            .navigationBarItems(trailing: Button(action: {
                needsAppOnboarding = true
            }, label: {
                Text("Settings")
                    .foregroundColor(Color("SpaceCadet"))
            })
            .sheet(isPresented: $needsAppOnboarding ) {
                // Scenario #1: User has NOT completed app onboarding
                OnboardingView()
            })
        }

    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
        mainView().preferredColorScheme(.dark)
    }
}
