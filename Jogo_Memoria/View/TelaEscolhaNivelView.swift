//
//  TelaEscolhaNivelView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct TelaEscolhaNivelView: View {
    var body: some View {
        NavigationView{
            ZStack{
                CorFundo()
                VStack{
                    NavigationLink(destination: JogoMemoriaView(jogoMemoriaModelView: GeneroJogoMemoria()), label: {
                        Text("Nível 1")
                    })
                    NavigationLink(destination: JogoMemoriaNivel2View(jogoMemoriaModelView: GeneroJogoMemoriaNivel2()), label: {
                        Text("Nível 2")
                    })
                }
            }
        }
    }
}


struct TelaEscolhaNivelView_Previews: PreviewProvider {
    static var previews: some View {
        TelaEscolhaNivelView()
    }
}
