// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YKWoodpecker",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "YKWoodpecker",
            targets: ["YKWoodpecker"]
        ),
    ],
    dependencies: [
        // 无外部依赖
    ],
    targets: [
        .target(
            name: "YKWoodpecker",
            dependencies: [],
            path: "YKWoodpecker",
            exclude: [
//                "Images",
                "include"
            ],
            resources: [
                .process("Images"),
                .copy("Plugins/woodpecker_plugin_list_cn.plist"),
                .copy("Plugins/woodpecker_plugin_list_en.plist"),
                .copy("Utils/ykwoodpecker_cn.json")
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Base"),
                .headerSearchPath("Base/PluginManage"),
                .headerSearchPath("Category"),
                .headerSearchPath("Common"),
                .headerSearchPath("Common/ChartWindow"),
                .headerSearchPath("Common/FollowView"),
                .headerSearchPath("Common/ScreenLog"),
                .headerSearchPath("Common/TextImagePreview"),
                .headerSearchPath("Plugins"),
                .headerSearchPath("Plugins/AllImagesPlugin"),
                .headerSearchPath("Plugins/BundleResourcePlugin"),
                .headerSearchPath("Plugins/ClearDataPlugin"),
                .headerSearchPath("Plugins/CommandPlugin"),
                .headerSearchPath("Plugins/CommandPlugin/CmdCore"),
                .headerSearchPath("Plugins/CommandPlugin/CmdView"),
                .headerSearchPath("Plugins/CPUPlugin"),
                .headerSearchPath("Plugins/CrashLogPlugin"),
                .headerSearchPath("Plugins/DataFlowPlugin"),
                .headerSearchPath("Plugins/FPSPlugin"),
                .headerSearchPath("Plugins/JSONGrabPlugin"),
                .headerSearchPath("Plugins/MemoryPlugin"),
                .headerSearchPath("Plugins/PoCommandPlugin"),
                .headerSearchPath("Plugins/ProbeRulerPlugin"),
                .headerSearchPath("Plugins/ProbeRulerPlugin/ObjectProbe"),
                .headerSearchPath("Plugins/ProbeRulerPlugin/Panel"),
                .headerSearchPath("Plugins/ProbeRulerPlugin/RulerTool"),
                .headerSearchPath("Plugins/ProbeRulerPlugin/ViewProbe"),
                .headerSearchPath("Plugins/SandBoxPlugin"),
                .headerSearchPath("Plugins/SysInfoPlugin"),
                .headerSearchPath("Plugins/TouchIndicatorPlugin"),
                .headerSearchPath("Plugins/UIComparePlugin"),
                .headerSearchPath("Plugins/UIComparePlugin/Panel"),
                .headerSearchPath("Plugins/UserDefaultsPlugin"),
                .headerSearchPath("Utils")
            ]
        )
    ]
)

