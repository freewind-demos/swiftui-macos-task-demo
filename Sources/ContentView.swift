import SwiftUI

struct ContentView: View {
    @State private var message = "等待中..."
    @State private var taskID = UUID()

    var body: some View {
        VStack(spacing: 20) {
            Text("task 修饰符示例")
                .font(.headline)

            Text(message)
                .foregroundColor(.secondary)

            Button("执行异步任务") {
                taskID = UUID()
            }

            Text("任务 ID: \(taskID.uuidString.prefix(8))...")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .task(id: taskID) {
            message = "开始执行..."
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            message = "执行完成！"
        }
    }
}