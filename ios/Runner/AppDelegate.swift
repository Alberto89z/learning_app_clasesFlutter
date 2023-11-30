import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSService.provideAPIKey("AIzaSyAHnG_mmfMARB2hXxrhRGMKf1_s-im9opI")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
