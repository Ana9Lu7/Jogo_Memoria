//
//  Array.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import Foundation

extension Array where Element: Identifiable{
    func primeiroIndex(combina: Element) -> Int? {
        for index in 0..<self.count{
            if self[index].id == combina.id{
                return index
            }
        }
        return nil
    }
}
    
