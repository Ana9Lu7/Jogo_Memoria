//
//  GlossarioView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct GlossarioView: View {
    var body: some View {
        NavigationView{
            ZStack{
            CorFundo()
            VStack{
                LinhaCartasGlossario()
                LinhaCartasGlossario()
                LinhaCartasGlossario()
            }.padding(.horizontal)
            .padding(.vertical)
        }
    }
    }
}

struct GlossarioView_Previews: PreviewProvider {
    static var previews: some View {
        GlossarioView()
    }
}

struct CartaGlossario: View{
    var body: some View{
        ZStack{
            VStack{
                RoundedRectangle(cornerRadius: 10).aspectRatio(1, contentMode: .fit)
                Text("Genero 1")
            }
            
        }
    }
}

struct LinhaCartasGlossario: View{
    var body: some View{
        HStack{
            CartaGlossario()
            CartaGlossario()
            CartaGlossario()
        }
    }
}
