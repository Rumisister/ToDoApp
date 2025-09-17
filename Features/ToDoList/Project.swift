import ProjectDescription

let project = Project(
  name: "ToDoList",
  targets: [
    .target(
      name: "ToDoList",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "com.rumisister.todo.todolist",
      deploymentTargets: .iOS("15.0"),
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: [
        .project(target: "Model", path: "../../Core/Model"),
        .project(target: "DesignSystem", path: "../../DesignSystem")
      ]
    )
  ]
)
