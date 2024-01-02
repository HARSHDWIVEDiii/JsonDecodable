//
//  Post.swift
//  JsonDecodable
//
//  Created by Mac on 29/12/23.
//

import Foundation
struct Post : Decodable{
    var userId : Int
    var id : Int
    var title : String
    var body : String
}
