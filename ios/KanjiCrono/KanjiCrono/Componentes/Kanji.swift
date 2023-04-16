//
//  Kanji.swift
//  KanjiCrono
//
//  Created by Ion Jaureguialzo Sarasola on 16/4/23.
//

import SwiftUI

struct Kanji: View {

    @EnvironmentObject var vm: ViewModel

    var transparencia: Double {
        get {
            return vm.verKanjiTemporal ? 1 : vm.verKanji ? 1 : 0
        }
    }

    var body: some View {
        Text(vm.kanji)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .opacity(transparencia)
            .font(fuente())
            .foregroundColor(Color(.label))
            .background(Color("Fondo"))
            .cornerRadius(10.0)
            .gesture(TapGesture().onEnded { _ in
            })
    }

    func fuente() -> Font {
        switch vm.fuenteSeleccionada {
        case .cursiva:
            return .custom("YuKyo-Medium", size: 100)
        default:
            return .system(size: 100)
        }
    }
}

struct Kanji_Previews: PreviewProvider {
    static var previews: some View {
        Kanji_CustomPreview()
    }
}

struct Kanji_CustomPreview: View {
    var body: some View {
        VStack {
            Kanji().environmentObject(ViewModel())
        } .frame(maxWidth: 240, maxHeight: 240)
    }
}
