//
//  KanjiCronoApp.swift
//  KanjiCrono
//
//  Created by Ion Jaureguialzo Sarasola on 16/4/23.
//

import SwiftUI

@main
struct KanjiCronoApp: App {

    var vm = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vm)
        }
    }
}
