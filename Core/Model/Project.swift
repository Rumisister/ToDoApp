import ProjectDescription

let project = Project(
  name: "Model",
  targets: [
    .target(
      name: "Model",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "com.rumisister.todo.core.model",
      deploymentTargets: .iOS("15.0"),
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: [],
      dependencies: []
    )
  ]
)
