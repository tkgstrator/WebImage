//
//  WebImageDemoApp.swift
//  WebImageDemo
//
//  Created by devonly on 2024/04/30.
//

import SwiftUI
import WebImage

@main
struct WebImageDemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate, UIWindowSceneDelegate {
        func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
        ) -> Bool {
            SVGImage.configure()
            return true
        }
    }
}
