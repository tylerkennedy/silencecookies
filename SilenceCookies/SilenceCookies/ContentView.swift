//
//  ContentView.swift
//  SilenceCookies
//
//  Created by Tyler Kennedy on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    
    var body: some View {
        if(needsAppOnboarding) {
            OnboardingView()
        }
        else {
            mainView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
