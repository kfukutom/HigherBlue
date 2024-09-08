//
//  HigherBlueApp.swift
//  HigherBlue
//
//  Created by Kensuke Fukutomi on 2024/09/06.
//

import SwiftUI

@main
struct HigherBlueApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
