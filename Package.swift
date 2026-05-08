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
            dependencies: ["amwal_pay_sdk", "App", "Flutter", "FlutterPluginRegistrant", "pay_ios", "share_plus", "shared_preferences_foundation", "webview_flutter_wkwebview"],
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
            name: "amwal_pay_sdk",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "App",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "pay_ios",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "share_plus",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "https://github.com/amwal-pay/AnwalPaySDKNativeiOSExample/releases/download/v1.1.89/amwalsdk-spm.zip",
            checksum: "4faa449f64bb5135487741567e7911afc792e466aa437dbfceedbe4c5a6190d5"
        ),
    ]
)
