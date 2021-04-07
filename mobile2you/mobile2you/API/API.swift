//
//  API.swift
//  mobile2you
//
//  Created by Kaled Jamal El Azanki on 06/04/21.
//

import Foundation
import Alamofire

class API {
    static func getMovies(completion: @escaping (Result<MoviesResponse, Error>) -> Void) {
        let url = APISupport.BASE_URL + APISupport.POPULAR_MOVIES
        AF.request(url, method: .get, parameters: ["api_key":APISupport.API_SECRET]).validate().response { (response) in
            if let error = response.error {
                completion(.failure(error))
            }
            if let data = response.data {
                let decoder = JSONDecoder()
                do {
                    let moviesResponse = try decoder.decode(MoviesResponse.self, from: data)
                    completion(.success(moviesResponse))
                } catch {
                    completion(.failure(error))
                }
            }
        }
    }
}
