//
//  Post.swift
//  Petstagram
//
//  Created by Emil Shafigin on 4/6/21.
//

import Foundation

struct Post: Codable {
  var caption: String
  var createdAt: Date
  var photoUrl: URL
}
