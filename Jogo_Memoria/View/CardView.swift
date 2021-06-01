//
//  CardView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct CardView: View {
    var carta: JogoMemoria<String>.Carta
    
    var body: some View{
        let shape = RoundedRectangle(cornerRadius: 5)
        ZStack{
            if carta.cartaViradaParaCima{
                shape.stroke(lineWidth: 3)
                shape.fill(Color.white)
                Text(carta.conteudo).foregroundColor(.black)
                
            }
            else {
                if !carta.parFormado {
                    shape.fill()
                }
            }
        }
    }
}
