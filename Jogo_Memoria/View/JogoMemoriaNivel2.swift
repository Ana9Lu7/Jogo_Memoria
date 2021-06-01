//
//  JogoMemoriaNivel2.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

import SwiftUI

struct JogoMemoriaNivel2View: View {
    @ObservedObject var jogoMemoriaModelView: GeneroJogoMemoriaNivel2
    var body: some View{
        NavigationView{
            ZStack{
                CorFundo()
                VStack{
                    CasinhaDasCartas(jogoMemoriaModelView.cartas){
                        carta in return CardView (carta: carta).onTapGesture{
                            self.jogoMemoriaModelView.EscolhaCarta(carta: carta)
                        }.padding(5)
                    }
                }
                .foregroundColor(.init(red: 255/255, green: 255/255, blue: 255/255))
                .padding(.horizontal)
                .padding(.vertical)
            }
        }
    }
}

struct JogoMemoriaNivel2View_Previews: PreviewProvider {
    static var previews: some View {
        JogoMemoriaNivel2View(jogoMemoriaModelView: GeneroJogoMemoriaNivel2())
    }
}
