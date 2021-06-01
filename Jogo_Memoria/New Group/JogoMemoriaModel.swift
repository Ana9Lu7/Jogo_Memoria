//
//  JogoMemoriaModel.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 25/05/21.
//

import Foundation

struct JogoMemoria<conteudoCarta> where conteudoCarta: Equatable{
    var cartas: Array<Carta>
    var indexCartaViradaParaCima: Int? {
        get{
            cartas.indices.filter{cartas[$0].cartaViradaParaCima}.only
        }
        set{
            for index in cartas.indices{
                cartas[index].cartaViradaParaCima = index == newValue
            }
        }
    }
     	   
    struct Carta: Identifiable{
        var id: Int
        var cartaViradaParaCima = false
        var parFormado = false
        var conteudo: conteudoCarta
    }
    
    mutating func selecionarCarta (carta: Carta){
        if let indexEscolhido = cartas.primeiroIndex(combina: carta), !cartas[indexEscolhido].cartaViradaParaCima{
            if let parPossivelIndex = indexCartaViradaParaCima{
                if cartas[parPossivelIndex].conteudo == cartas[indexEscolhido].conteudo{
                    cartas[indexEscolhido].parFormado = true
                    cartas[parPossivelIndex].parFormado = true
                }
                self.cartas[indexEscolhido].cartaViradaParaCima = true
            }else{
                indexCartaViradaParaCima = indexEscolhido
            }
        }
    }
    
    init(numeroDePares: Int, cardContentFactory: (Int) -> conteudoCarta){
        cartas = Array<Carta>()
        for indexDoPar in 0..<numeroDePares{
            let conteudo = cardContentFactory(indexDoPar)
            cartas.append(Carta(id: indexDoPar*2, conteudo: conteudo))
            cartas.append(Carta(id: indexDoPar*2+1, conteudo: conteudo))
            cartas.shuffle()
        }
    }
}

	
