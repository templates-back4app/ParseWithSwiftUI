//
//  ParseWithSwiftUIApp.swift
//  ParseWithSwiftUI
//
//  Created by Venom on 29/01/21.
//

import SwiftUI
import Parse

@main
struct ParseWithSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        print("Configuring Parse...")
        // Prepares Parse configuration
        let parseConfig = ParseClientConfiguration {
            $0.applicationId = "YourAppId" // Your AppID
            $0.clientKey = "YourClientKey" // Your ClientKey
            $0.server = "https://parseapi.back4app.com/" // Parse Server URL
        }
        
        // Initializes Parse with the created Configuration
        Parse.initialize(with: parseConfig)
        print("Parse configured...")
    }
}
