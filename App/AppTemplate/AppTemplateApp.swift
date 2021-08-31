//
//  AppTemplateApp.swift
//  AppTemplate
//
//  Created by kwanghyun won on 2021/08/31.
//

import SwiftUI
import AppFeature
import ComposableArchitecture

@main
struct AppTemplateApp: App {
  var body: some Scene {
    WindowGroup {
      AppView(
        store: Store(
          initialState: .init(),
          reducer: appReducer,
          environment: .live
        )
      )
    }
  }
}

extension AppEnvironment {
  static let live = Self()
}
