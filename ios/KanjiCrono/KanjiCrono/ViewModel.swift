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
    
    @AppStorage("verKanji") var verKanji = false {
        didSet {
            verKanjiTemporal = verKanji
        }
    }
    @Published var verKanjiTemporal = false
    
    @AppStorage("fuenteSeleccionada") var fuenteSeleccionada = Fuente.cursiva
    
    func nuevoKanji() {
        verKanjiTemporal = false
        kanjiAleatorio()
    }
    
    func todoVisible() -> Bool {
        return (verKanji || verKanjiTemporal) //&& (verRomaji || verRomajiTemporal)
    }
    
    private var kanji_anterior: String!

    func kanjiAleatorio() {

        let kanjis = ["本", "川", "山"]

        kanji_anterior = kanji
        repeat {
            let aleatorio = kanjis.randomElement()

            kanji = aleatorio!
            //romaji = aleatorio.romaji
        } while(kanji == kanji_anterior)
    }
}
