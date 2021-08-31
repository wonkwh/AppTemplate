
import ComposableArchitecture

public let appReducer =
  Reducer<AppState, AppAction, AppEnvironment>
    .combine(
      Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
        return .none
      }
    )
