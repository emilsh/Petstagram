//
//  APIEnvironment.swift
//  Petstagram
//
//  Created by Emil Shafigin on 4/6/21.
//

import Foundation

struct APIEnvironment {
  var baseUrl: URL
}

extension APIEnvironment {
  static let prod = APIEnvironment(baseUrl: URL(string: "https://example.com/api/v1")!)
  static let local = APIEnvironment(baseUrl: URL(string: "http://localhost:8080/api/v1")!)
}
