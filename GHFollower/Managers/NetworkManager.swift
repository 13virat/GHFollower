//
//  NetworkManager.swift
//  GHFollower
//
//  Created by Mac pro on 02/08/25.
//

import Foundation

class NetworkManager{
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init(){}
    
    func getFollower(for username: String,page: Int, completed: @escaping([Follower]?, String?) -> Void){
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        guard let url = URL(string: endpoint) else{
            completed(nil, "This username created an invalid request. Pla]ease try again.")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error{
                completed(nil, "Unable to complete your request. Please check your internet connection")
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                completed(nil, "Invalid response from server. Please try again.")
                return
            }
            guard let data = data else{
                completed(nil, "The data received from the server is invalid. Please try again.")
                return
            }
            do{
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers,nil)
            }catch{
                completed(nil, "The data received from the server is invalid. Please try again.")
            }
        }
        task.resume()
    }
}
