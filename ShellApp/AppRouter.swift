//
//  AppRouter.swift
//  ShellApp
//
//  Created by Dongdong Zhang on 2022/5/22.
//

import Foundation
import Env
import RestaurantOrder
import SwiftUI

class AppRouter: Router {
  override func route(_ to: String) -> AnyView {
    AnyView(
      OrderView(url: url(to))
        .navigationBarTitleDisplayMode(.inline)
    )
  }

  private func url(_ to: String) -> URL {
    URL(string: "https://content.demo.microfrontends.com\(to)")!
  }
}
