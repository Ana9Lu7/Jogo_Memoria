//
//  TelaBoasVindasView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct TelaBoasVindasView: View {
    
    var userName: String
    
    var body: some View {
        ZStack{
            CorFundo()
            VStack(alignment: .center, spacing: 30){
                Text("Olá, \(userName)!")
                    .foregroundColor(.white)
                    .font(Font.custom("Heebo", size: 21))
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 1)
                        .foregroundColor(.white)
                    NavigationLink(destination: TelaEscolhaNivelView()){
                        Text("Jogar")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }.padding(9)
                }
                .padding()
                .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 1)
                        .foregroundColor(.white)
                    NavigationLink(destination: GlossarioView()){
                        Text("Glossário")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }.padding(9)
                }
                .padding()
                .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 1)
                        .foregroundColor(.white)
                    NavigationLink(destination: NoticiasView()){
                        Text("Notícias")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }.padding(9)
                }
                .padding()
                .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
                Spacer()
                
                NavigationLink(destination: TelaSobreIdeiaView()){
                    HStack{
                        Text("!").foregroundColor(.white)
                        Text("Sobre a ideia!")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }
                }.padding(30)
            }
        }.navigationTitle("Titulo da sua tela")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct TelaBoasVindasView_Previews: PreviewProvider {
    static var previews: some View {
        TelaBoasVindasView(userName: "")
    }
}

