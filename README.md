# SwiftUI macOS task

## 简介

演示 SwiftUI 中 task 修饰符的用法。

## 快速开始

```bash
cd swiftui-macos-task-demo
xcodegen generate
open SwiftUITaskDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### task

```swift
.task(id: someValue) {
    // 异步代码
}
```

## 完整讲解（中文）

### task 用途

- 视图出现时执行异步任务
- id 参数变化时会重新执行
- 自动取消之前的任务
- 相当于 onAppear + async/await