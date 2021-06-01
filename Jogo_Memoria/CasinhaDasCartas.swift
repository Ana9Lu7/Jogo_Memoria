//
//  SwiftUIView.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 25/05/21.
//

import SwiftUI

struct CasinhaDasCartas<Item, CasaItem>: View  where Item: Identifiable, CasaItem: View  {
    var itens: [Item]
    var casaDoItem: (Item) -> CasaItem
    
    init(_ itens: [Item], casaDoItem: @escaping (Item) -> CasaItem){
        self.itens = itens
        self.casaDoItem = casaDoItem
    }
    var body: some View {
        GeometryReader {geometry in
            self.body(for: GridLayout(itemCount: self.itens.count, in: geometry.size))
        }
    }
    func body (for layout: GridLayout) -> some View {
        ForEach (itens) { item in
            self.body(for: item, in: layout)
        }
    }
    func body (for item: Item, in layout: GridLayout) -> some View {
        let index = itens.primeiroIndex(combina: item)!
        return casaDoItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }
}

