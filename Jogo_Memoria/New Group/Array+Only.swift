//
//  Array+Only.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import Foundation

extension Array{
    var only: Element?{
        count == 1 ? first : nil
    }
}
