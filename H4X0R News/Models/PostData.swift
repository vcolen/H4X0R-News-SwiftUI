//
//  PostData.swift
//  H4X0R News
//
//  Created by Victor Colen on 02/11/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Posts]
}

struct Posts: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}
