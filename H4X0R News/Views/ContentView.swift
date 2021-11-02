//
//  ContentView.swift
//  H4X0R News
//
//  Created by Victor Colen on 31/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { posts in
                NavigationLink(destination: DetailView(url: posts.url)) {
                    HStack {
                        Text(String(posts.points))
                        Text(posts.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
