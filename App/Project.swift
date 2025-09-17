import ProjectDescription

let project = Project(
  name: "ToDoApp",
  targets: [
    .target(
      name: "ToDoApp",
      destinations: .iOS,
      product: .app,
      bundleId: "com.rumisister.todoapp",
      deploymentTargets: .iOS("15.0"),
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: [
        .project(target: "ToDoList", path: "../Features/ToDoList"),
        .project(target: "Model", path: "../Core/Model"),
        .project(target: "DesignSystem", path: "../DesignSystem")
      ]
    )
  ]
)
