//
//  GlossarioView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct GlossarioView: View {
    
    @State var results = [Post]()
  
    var body: some View {
        List(results, id: \.id) { item in
            VStack(alignment: .leading) {
                Text(item.name)
            }
        }.onAppear(perform: loadData)
    }
    
  
    func loadData() {
        
        let service = Api()
    
        service.getPosts { (posts, error) in
            
            if error != nil {
                print("error")
            } else {
                results = posts ?? []
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

