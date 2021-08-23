//
//  CoinHawkApp.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-22.
//

import SwiftUI

@main
struct CoinHawkApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
