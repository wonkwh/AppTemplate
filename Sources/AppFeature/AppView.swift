import ComposableArchitecture
import SwiftUI

public struct AppView: View {
  let store: Store<AppState, AppAction>

  public init(
    store: Store<AppState, AppAction>
  ) {
    self.store = store
  }

  public var body: some View {
    WithViewStore(self.store) { viewStore in
      NavigationView {
        ContentView()
          .navigationTitle("Root")
      }
    }
  }
}

struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
      .padding()
  }
}
