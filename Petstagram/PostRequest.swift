//
//  PostRequest.swift
//  Petstagram
//
//  Created by Emil Shafigin on 4/6/21.
//

import Foundation

struct PostRequest: APIRequest {
  typealias Response = [Post]
  
  var method: HTTPMethod { return .GET }
  var path: String { return "/posts" }
  var body: Data? { return nil }
  
  func handle(response: Data) throws -> [Post] {
    try JSONDecoder().decode(Response.self, from: response)
  }
  
  
}
