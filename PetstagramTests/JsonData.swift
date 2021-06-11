//
//  JsonData.swift
//  PetstagramTests
//
//  Created by Emil Shafigin on 4/6/21.
//

import Foundation

enum JsonData {
  static let goodFeed = """
  [
    {
      "photoUrl": "/photos/image1.jpg",
      "createdAt": "2021-06-04T12:00:00Z",
      "caption" : "Living her best life! #corgi #PuppyStyle"
    },
    {
      "photoUrl": "/photos/image2.jpg",
      "createdAt": "2021-06-03T11:33:00Z",
      "caption" : "Bath time is best time!"
    },
    {
      "photoUrl": "/photos/image3.jpg",
      "createdAt": "2021-06-01T10:44:00Z",
      "caption" : "Not sure if alien or dog..."
    }
  ]
  """
  
  static let badJson = """
    [
      "bad json"
    ]
    """
}
