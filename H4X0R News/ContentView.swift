//
//  ContentView.swift
//  H4X0R News
//
//  Created by Victor Colen on 31/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { posts in
                Text(posts.title)
            }
            .navigationTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
 Post(id: "1", title: "hey there"),
 Post(id: "2", title: "alo"),
 Post(id: "3", title: "familia"),
 Post(id: "4", title: "alooo")
]
