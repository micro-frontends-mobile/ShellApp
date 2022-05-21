//
//  ContentView.swift
//  ShellApp
//
//  Created by Dongdong Zhang on 2022/5/21.
//

import SwiftUI
import About
import Browse
import RestaurantOrder

struct ContentView: View {
  var body: some View {
    TabView {
      BrowseView()
        .tabItem {
          Image(systemName: "1.square.fill")
          Text("Restaurant")
        }
      OrderView(url: URL(string: "https://content.demo.microfrontends.com/restaurants/1.json")!)
        .tabItem {
          Image(systemName: "2.square.fill")
          Text("Surprise me")
        }
      AboutView()
        .tabItem {
          Image(systemName: "3.square.fill")
          Text("About")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
