import ProjectDescription

let project = Project(
    name: "ToDoApp",
    targets: [
        .target(
            name: "ToDoApp",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.ToDoApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "ToDoApp/Sources",
                "ToDoApp/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "ToDoAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.ToDoAppTests",
            infoPlist: .default,
            buildableFolders: [
                "ToDoApp/Tests"
            ],
            dependencies: [.target(name: "ToDoApp")]
        ),
    ]
)
