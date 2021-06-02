//
//  JogoMemoriaModelView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 25/05/21.
//

import SwiftUI

class GeneroJogoMemoria: ObservableObject{
    
    @Published private var cardsModel: JogoMemoria<Image> = GeneroJogoMemoria.CriarJogoMemoria()
    
    static func CriarJogoMemoria() -> JogoMemoria<Image>{
        let generos = [Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero")].shuffled()
        return JogoMemoria<Image>(numeroDePares: 2){indexDoPar in return generos[indexDoPar]
        }
    }
    
    var cartas: Array<JogoMemoria<Image>.Carta>{
        cardsModel.cartas
    }
    
    func EscolhaCarta(carta: JogoMemoria<Image>.Carta){
        cardsModel.selecionarCarta(carta: carta)
    }
}



class GeneroJogoMemoriaNivel2: ObservableObject{
    
    @Published private var cardsModel: JogoMemoria<Image> = GeneroJogoMemoriaNivel2.CriarJogoMemoria()
    
    static func CriarJogoMemoria() -> JogoMemoria<Image>{
        let generos = [Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero"), Image("Agenero")].shuffled()
        return JogoMemoria<Image>(numeroDePares: 12){indexDoPar in return generos[indexDoPar]}
    }
    
    var cartas: Array<JogoMemoria<Image>.Carta>{
        cardsModel.cartas
    }
    
    func EscolhaCarta(carta: JogoMemoria<Image>.Carta){
        cardsModel.selecionarCarta(carta: carta)
    }
}

class GeneroJogoMemoriaNivel3: ObservableObject{
    
    @Published private var cardsModel: JogoMemoria<Image> = GeneroJogoMemoriaNivel3.CriarJogoMemoria()
    
    static func CriarJogoMemoria() -> JogoMemoria<Image>{
        let generos = [Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero"),
                       Image("Agenero")].shuffled()
        return JogoMemoria<Image>(numeroDePares: 24){indexDoPar in return generos[indexDoPar]}
    }
    
    var cartas: Array<JogoMemoria<Image>.Carta>{
        cardsModel.cartas
    }
    
    func EscolhaCarta(carta: JogoMemoria<Image>.Carta){
        cardsModel.selecionarCarta(carta: carta)
    }
}
