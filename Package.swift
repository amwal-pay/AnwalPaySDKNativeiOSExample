// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "amwalsdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "amwalsdk",
            targets: ["amwalsdk"]
        )
    ],
    targets: [
        .target(
            name: "amwalsdk",
            dependencies: ["App", "Flutter", "FlutterPluginRegistrant", "amwal_pay_sdk", "path_provider_foundation", "pay_ios", "share_plus", "shared_preferences_foundation", "webview_flutter_wkwebview"],
            path: "amwalsdk",
            exclude: ["amwalsdk.podspec", "amwalsdk.docc", "Readme.md", "LICENSE", "amwalsdk.h"],
            sources: [
                "AmwalSDK.swift",
                "Config.swift",
                "AmwalPayView.swift",
                "SDKFlutterViewController.swift",
                "SDKWindowViewController.swift",
                "SDKOverlayView.swift",
                "SDKContainerVC.swift",
                "SDKViewControllerWrapper.swift",
                "SDKViewControllerRepresentable.swift"
            ],
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "App",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "amwal_pay_sdk",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "pay_ios",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.88/amwalsdk-spm.zip",
            checksum: "f70bdb85777962782b34076ccfd16016798cab9d773a0b346a8169b745b269e5"
        ),
    ]
)
