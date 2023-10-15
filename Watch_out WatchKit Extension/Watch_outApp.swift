//
//  Watch_outApp.swift
//  Watch_out WatchKit Extension
//
//  Created by sudeepa pal on 15/10/23.
//

import SwiftUI

@main
struct Watch_outApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
