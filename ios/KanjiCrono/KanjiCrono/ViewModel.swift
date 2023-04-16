//
//  ViewModel.swift
//  KanjiCrono
//
//  Created by Ion Jaureguialzo Sarasola on 16/4/23.
//

import Foundation
import SwiftUI

enum Fuente: String, CaseIterable, Identifiable {
    case normal
    case cursiva

    var id: String { self.rawValue }
}

class ViewModel: ObservableObject {
    @Published var kanji = "学"

    @AppStorage("verKanji") var verKanji = true {
        didSet {
            verKanjiTemporal = verKanji
        }
    }
    @Published var verKanjiTemporal = false

    @AppStorage("fuenteSeleccionada") var fuenteSeleccionada = Fuente.cursiva
}
