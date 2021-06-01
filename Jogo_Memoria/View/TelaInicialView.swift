//
//  TelaInicialView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct TelaInicialView: View {
    var body: some View{
            NavigationView{
                ZStack{
                    CorFundo()
                    VStack(spacing: 40.0) {
                    Text("DiversaMente")
                    CaixaDeTexto()
                    NavigationLink(destination: TelaBoasVindasView()){
                        Text("Entrar")
                    }
                }
            }
        }
    }
}

struct TelaInicialView_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicialView()
    }
}

struct CaixaDeTexto: View{
    @State var nomeUsuario = "Usuário"
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                .foregroundColor(.init(red: 200/255, green: 200/255, blue: 200/255))
            TextField("Usuário", text: $nomeUsuario)
                .padding()
                .foregroundColor(Color.gray)
        }
        .padding()
        .frame(minWidth: 10, idealWidth: 70, maxWidth: .infinity, minHeight: 16, idealHeight: 20, maxHeight: 20, alignment: .center)
    }
}

