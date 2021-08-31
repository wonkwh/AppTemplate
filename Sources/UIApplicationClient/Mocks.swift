import ComposableArchitecture
import XCTestDynamicOverlay

extension UIApplicationClient {
  public static let noop = Self(
    open: { _, _ in .failing("\(Self.self).open is unimplemented") },
    openSettingsURLString: {
      XCTFail("\(Self.self).openSettingsURLString is unimplemented")
      return ""
    }
  )
}
