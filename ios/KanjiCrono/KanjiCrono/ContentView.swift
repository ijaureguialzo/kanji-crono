//
//  ContentView.swift
//  KanjiCrono
//
//  Created by Ion Jaureguialzo Sarasola on 16/4/23.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var vm: ViewModel

    var body: some View {

        let lado = UIScreen.main.bounds.width * 0.66

        VStack {
            Kanji()
                .frame(maxWidth: lado, maxHeight: lado / 2)
            Kanji()
                .frame(maxWidth: lado, maxHeight: lado / 2)
            Kanji()
                .frame(maxWidth: lado, maxHeight: lado / 2)
            Kanji()
                .frame(maxWidth: lado, maxHeight: lado / 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_CustomPreview()
    }
}

struct ContentView_CustomPreview: View {
    var body: some View {
        ContentView().environmentObject(ViewModel())
    }
}
