//
//  MoviesResponse.swift
//  mobile2you
//
//  Created by Kaled Jamal El Azanki on 06/04/21.
//

import Foundation

struct MoviesResponse: Codable {
    var page: Int
    var results: [Movie]
    var total_pages: Int
    var total_results: Int
}
