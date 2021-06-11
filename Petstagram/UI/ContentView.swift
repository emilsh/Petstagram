//
//  ContentView.swift
//  Petstagram
//
//  Created by Emil Shafigin on 4/6/21.
//

import SwiftUI
import Combine

struct ContentView: View {
  
  var publisher: AnyCancellable = {
    let client = APICLient()
    let request = PostRequest()
    return client.publisherForRequest(request)
      .sink { result in
        print(result)
      } receiveValue: { newPosts in
        print(newPosts)
      }
  }()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
