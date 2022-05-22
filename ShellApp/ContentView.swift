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
import Env

struct ContentView: View {

  init() {
    _ = Env.initialize(router: AppRouter() as Router)
  }
  var body: some View {
    TabView {
      browse
        .tabItem {
          Image(systemName: "1.square.fill")
          Text("Restaurant")
        }
      RandomOrderView()
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

  var browse: some View {
    NavigationView {
      BrowseView()
        .foregroundColor(.primary)
        .navigationBarHidden(true)
        .environmentObject(Env.shared)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
