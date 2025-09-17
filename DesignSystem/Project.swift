import ProjectDescription

let project = Project(
  name: "DesignSystem",
  targets: [
    .target(
      name: "DesignSystem",
      destinations: .iOS,
      product: .staticFramework,
      bundleId: "com.rumisister.todo.designsystem",
      deploymentTargets: .iOS("15.0"),
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: []
    )
  ]
)
