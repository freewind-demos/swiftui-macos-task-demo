import SwiftUI

@main
struct TaskApp: App {
    var body: some Scene {
        Window("Task", id: "main") {
            ContentView()
        }
        .defaultSize(width: 400, height: 200)
    }
}