//
//  JogoMemoriaNivel3View.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 28/05/21.
//

import SwiftUI

struct JogoMemoriaNivel3View: View {
    @ObservedObject var jogoMemoriaModelView: GeneroJogoMemoriaNivel3
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
            }
        }
    }
}

struct JogoMemoriaNivel3View_Previews: PreviewProvider {
    static var previews: some View {
        JogoMemoriaNivel3View(jogoMemoriaModelView: GeneroJogoMemoriaNivel3())
    }
}
