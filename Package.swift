// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AppleMobileDeviceLibrary",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "AppleMobileDeviceLibrary",
            targets: ["AppleMobileDeviceLibrary"]
        ),
    ],
    dependencies: [
        .package(name: "OpenSSL", url: "https://github.com/Lakr233/openssl-spm.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libusbmuxd",
            "libtatsu",
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.523140F8-D16E-47B1-8F83-15FB98CB8D8B/libimobiledevice.xcframework.zip", checksum: "281cf0845de978c35c68251bbe3098ac7bb7cc77cce22cf194332769a51980df"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.523140F8-D16E-47B1-8F83-15FB98CB8D8B/libimobiledevice_glue.xcframework.zip", checksum: "9b5cef28727b9113af710c0af12c805b46aaf80ebd92abbfbb5e880ff35d73ef"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.523140F8-D16E-47B1-8F83-15FB98CB8D8B/libplist.xcframework.zip", checksum: "91161f21e805ccb49a9e83a6d93070b7954d60ca1f6ad8ceb9117aadb5669458"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.523140F8-D16E-47B1-8F83-15FB98CB8D8B/libtatsu.xcframework.zip", checksum: "9fc870c105e9c91860942ca42a8da3b5fe945d8669618b62114e6fc2249cc176"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.523140F8-D16E-47B1-8F83-15FB98CB8D8B/libusbmuxd.xcframework.zip", checksum: "43522040cdb79637cf3a009729cc46390a2574a8e438f9732ca7be34d7bc8915"),
    ]
)

