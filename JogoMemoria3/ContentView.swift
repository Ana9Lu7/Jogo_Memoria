//
//  ContentView.swift
//  JogoMemoria3
//
//  Created by Ana Luiza Soares Borges Paula on 30/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            NavigationView{
            NavigationLink(destination: DetalhesGenero()){
                Image("Gênero Neutro")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .padding(5)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
