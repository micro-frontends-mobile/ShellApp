//
//  ContentView.swift
//  ShellApp
//
//  Created by Dongdong Zhang on 2022/5/21.
//

import SwiftUI
import About
import Browse

struct ContentView: View {
  var body: some View {
    TabView {
      BrowseView()
        .tabItem {
          Image(systemName: "1.square.fill")
          Text("Restaurant")
        }
      Text("Surprise me")
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
