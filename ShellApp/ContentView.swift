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

    UITabBar.appearance().barTintColor = UIColor(Env.shared.configuration.tabBarTintColor)
  }
  var body: some View {
    TabView {
      browse
        .tabItem {
          Image(systemName: "magnifyingglass")
          Text("Restaurant")
        }
      RandomOrderView()
        .tabItem {
          Image(systemName: "shuffle")
          Text("Surprise me")
        }
      AboutView()
        .tabItem {
          Image(systemName: "person")
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
