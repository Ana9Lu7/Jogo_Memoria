//
//  JogoMemoriaView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 20/05/21.
//

import SwiftUI

struct JogoMemoriaView: View {
    @ObservedObject var jogoMemoriaModelView: GeneroJogoMemoria
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JogoMemoriaView(jogoMemoriaModelView: GeneroJogoMemoria())
    }
}
