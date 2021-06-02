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
                VStack(spacing: 20) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.white)
                        NavigationLink(destination: JogoMemoriaView(jogoMemoriaModelView: GeneroJogoMemoria())){
                         Text("Nível 1")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                        }
                 }
                 .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
                ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.white)
                        NavigationLink(destination: JogoMemoriaNivel2View(jogoMemoriaModelView: GeneroJogoMemoriaNivel2())){
                                Text("Nível 2")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    }
                        }
                        .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
    
                    ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(lineWidth: 1)
                                .foregroundColor(.white)
                            NavigationLink(destination: JogoMemoriaNivel3View(jogoMemoriaModelView: GeneroJogoMemoriaNivel3())){
                                Text("Nível 3")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    }
                        }
                        .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
                }
                Spacer()
            }
        }
    }
}

struct TelaEscolhaNivelView_Previews: PreviewProvider {
    static var previews: some View {
        TelaEscolhaNivelView()
    }
}

