//
//  TelaInicialView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct TelaInicialView: View {
    
    @ObservedObject var viewModel = TelaInicialViewModel()
    
    var body: some View{
            NavigationView{
                ZStack{
                    CorFundo()
                    VStack(spacing: 60) {
                        VStack (spacing: 20){
                            Image("LogoTelaInicial")
                            Text("DiversaMente")
                                .font(.custom("Heebo-Bold", size: 21))
                                .foregroundColor(.white)
                            
                        }
                        VStack(spacing: 20){
                            CaixaDeTexto(userName: $viewModel.userName)
                            Text(viewModel.userName)
                            ZStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(.white)
                                NavigationLink(destination: TelaBoasVindasView(userName: viewModel.userName)){
                                    Text("Entrar")
                                        .foregroundColor(.black)
                                .font(.system(size: 14))
                                }.padding(9)
                            }
                            .padding()
                            .frame(minWidth: 10, idealWidth: 171, maxWidth: 171, minHeight: 16, idealHeight: 32, maxHeight: 32, alignment: .center)
                            Spacer()
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

class TelaInicialViewModel: ObservableObject {

    @Published var userName: String = ""
}


struct CaixaDeTexto: View {
    
    @Binding var userName: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .stroke(lineWidth: 1)
                .foregroundColor(.white)
            TextField("desconhecid@", text: $userName)
                .font(Font.custom("Heebo-VariableFont_wght", size: 14))
                .padding(9)
                .foregroundColor(Color.gray)
        }
        .padding()
        .frame(minWidth: 10,
               idealWidth: 171,
               maxWidth: 171,
               minHeight: 16,
               idealHeight: 32,
               maxHeight: 32,
               alignment: .center)
    }
}
           


