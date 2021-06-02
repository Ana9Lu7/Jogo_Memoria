//
//  ConteudoJogo.swift
//  JogoMemoria3
//
//  Created by Ana Luiza Soares Borges Paula on 01/06/21.
//

import Foundation

struct TaskEntry: Codable  {
    let id: Int
    let title: String
}

struct Post: Codable {
    
    let id: Int
    let name: String
    let description: String
    let image: String
}

struct Data: Codable {
    
    let data: [Post]
}

class Api {

    func getPosts(completion: @escaping ([Post]?, Error?) ->()) {
        
        guard let url = URL(string: "https://diversamente-api.herokuapp.com/api/cards/list") else {
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            if let error = error {
                DispatchQueue.main.async { completion(nil, error) }
                return
            }
            
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(Data.self, from: data)
                    DispatchQueue.main.async { completion(result.data, nil) }
                } catch let error {
                    DispatchQueue.main.async { completion(nil, error) }
                }
            }
        }
        task.resume()
    }
}

