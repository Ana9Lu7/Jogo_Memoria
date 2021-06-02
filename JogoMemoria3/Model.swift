//
//  Model.swift
//  JogoMemoria3
//
//  Created by Ana Luiza Soares Borges Paula on 30/05/21.
//

import SwiftUI

struct Genero{
    var nome: String?
    var descricao: String?
    var imagem: Image?
}

struct ListaGeneros{
    var Neutro = Genero(nome: "Neutro", imagem: Image("Gênero Neutro"))
    var generos: [Genero] = [Neutro]
}
