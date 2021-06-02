//
//  CorFundo.swift
//  Jogo_Memoria
//
//  Created by Ana Luiza Soares Borges Paula on 26/05/21.
//

import SwiftUI

struct CorFundo: View {
    var body: some View{
        LinearGradient(gradient: Gradient(colors: [.init(red: 195/255, green: 55/255, blue: 100/255),.init(red: 29/255, green: 38/255, blue: 113/255)]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
}
