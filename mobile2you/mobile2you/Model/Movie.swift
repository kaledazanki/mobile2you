//
//  Movie.swift
//  mobile2you
//
//  Created by Kaled Jamal El Azanki on 06/04/21.
//

import Foundation

struct Movie: Codable {
    var original_title: String
    var id: Int
    var backdrop_path: String
    var poster_path: String
    var vote_count: Int
    var release_date: String
    var genre_ids: [Int]
}
