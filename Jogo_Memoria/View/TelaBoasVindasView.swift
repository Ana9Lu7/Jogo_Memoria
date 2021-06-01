//
//  TelaBoasVindasView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct TelaBoasVindasView: View {
    var body: some View {
        NavigationView{
            ZStack{
                CorFundo()
                VStack(alignment: .center, spacing: 30){
                    Text("Seja bem vindo!")
                    NavigationLink(destination: TelaEscolhaNivelView()){
                        Text("Jogar")
                    }
                    NavigationLink(destination: GlossarioView()){
                        Text("Glossário")
                    }
                    NavigationLink(destination: NoticiasView()){
                        Text("Notícias")
                    }
                    NavigationLink(destination: TelaSobreIdeiaView()){
                        Text("Sobre a ideia!")
                    }
                }
            }
        }
    }
}

struct TelaBoasVindasView_Previews: PreviewProvider {
    static var previews: some View {
        TelaBoasVindasView()
    }
}
