//
//  NoticiasView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct NoticiasView: View {
    var body: some View {
        ZStack{
            CorFundo()
            ScrollView{
                VStack{
                    Link(destination: URL(string: "https://exame.com/marketing/lego-lanca-versao-lgbt-sem-genero-e-que-monta-arco-iris/")!) {
                        VStack{
                            Text("Lego lança versão LGBT+, sem gênero e que monta arco-íris")
                                .font(.system(size: 14))
                                .bold()
                                .foregroundColor(.black)
                            HStack{
                                Image("LegoNoticias")
                                    .resizable()
                                    .frame(minWidth: 10, idealWidth: 150, maxWidth: 150, minHeight: 60, idealHeight: 80, maxHeight: 110)
                                    .padding(.vertical)
                                    .cornerRadius(25)
                                    Text("Modelo tem cerca de 10 centímetros de altura e estará à venda em 1 de junho no site internacional da companhia")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                            }
                        }
                        .padding(10)
                        .background(Color.init(white: 1, opacity: 0.3))
                        .cornerRadius(10)
                        .padding()
                    }
                    Link(destination: URL(string: "https://veja.abril.com.br/cultura/brinquedos-fora-do-armario-empresas-perdem-medo-de-apostar-na-diversidade/")!) {
                        VStack{
                            Text("Brinquedos fora do armário: empresas perdem medo de apostar na diversidade.")
                                .font(.system(size: 14))
                                .bold()
                                .foregroundColor(.black)
                            HStack{
                                Image("LegoNoticia")
                                    .resizable()
                                    .frame(minWidth: 10, idealWidth: 150, maxWidth: 150, minHeight: 60, idealHeight: 80, maxHeight: 110)
                                    .padding(.vertical)
                                    .cornerRadius(25)
                                    Text("Ao vislumbrar a maior aceitação dos pais 'millennials', companhias vêm desbravando esse terreno — já tem até versão LGBTQIA+ do Lego")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                            }
                        }
                        .padding(10)
                        .background(Color.init(white: 1, opacity: 0.3))
                        .cornerRadius(10)
                        .padding()
                    }
                }
            }
        }
    }
}

struct NoticiasView_Previews: PreviewProvider {
    static var previews: some View {
        NoticiasView()
    }
}
