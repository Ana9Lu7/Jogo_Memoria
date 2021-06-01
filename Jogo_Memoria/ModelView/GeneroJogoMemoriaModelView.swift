//
//  JogoMemoriaModelView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 25/05/21.
//

import SwiftUI

class GeneroJogoMemoria: ObservableObject{
    
    @Published private var cardsModel: JogoMemoria<String> = GeneroJogoMemoria.CriarJogoMemoria()
    
    static func CriarJogoMemoria() -> JogoMemoria<String>{
        let generos = ["Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6"]
        return JogoMemoria<String>(numeroDePares: 6){indexDoPar in return generos[indexDoPar]}
    }
    
    var cartas: Array<JogoMemoria<String>.Carta>{
        cardsModel.cartas
    }
    
    func EscolhaCarta(carta: JogoMemoria<String>.Carta){
        cardsModel.selecionarCarta(carta: carta)
    }
}


class GeneroJogoMemoriaNivel2: ObservableObject{
    
    @Published private var cardsModel: JogoMemoria<String> = GeneroJogoMemoriaNivel2.CriarJogoMemoria()
    
    static func CriarJogoMemoria() -> JogoMemoria<String>{
        let generos = ["Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6"]
        return JogoMemoria<String>(numeroDePares: 12){indexDoPar in return generos[indexDoPar]}
    }
    
    var cartas: Array<JogoMemoria<String>.Carta>{
        cardsModel.cartas
    }
    
    func EscolhaCarta(carta: JogoMemoria<String>.Carta){
        cardsModel.selecionarCarta(carta: carta)
    }
}

class GeneroJogoMemoriaNivel3: ObservableObject{
    
    @Published private var cardsModel: JogoMemoria<String> = GeneroJogoMemoriaNivel3.CriarJogoMemoria()
    
    static func CriarJogoMemoria() -> JogoMemoria<String>{
        let generos = ["Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6", "Gênero neutro", "Gênero5", "Gênero6", "Cisgênero", "Transgênero", "Gênero Fofo", "Gênero neutro", "Gênero5", "Gênero6"]
        return JogoMemoria<String>(numeroDePares: 24){indexDoPar in return generos[indexDoPar]}
    }
    
    var cartas: Array<JogoMemoria<String>.Carta>{
        cardsModel.cartas
    }
    
    func EscolhaCarta(carta: JogoMemoria<String>.Carta){
        cardsModel.selecionarCarta(carta: carta)
    }
}
