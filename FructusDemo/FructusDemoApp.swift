//
//  FructusDemoApp.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 17/06/23.
//

import SwiftUI

@main
struct FructusDemoApp: App {
    
    @AppStorage("isOnboardingView") var isOnboardingView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingView {
                OnboadrdingView()
            } else {
                FruitsListView()
            }
        }
    }
}
