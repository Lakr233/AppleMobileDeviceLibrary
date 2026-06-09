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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0243FC6A-753A-4251-B472-7537351958CC/libimobiledevice.xcframework.zip", checksum: "16fba84dc52d2cbe7847ecd15b8273f5cb0336a1fd622b36e9abeac92a714dc0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0243FC6A-753A-4251-B472-7537351958CC/libimobiledevice_glue.xcframework.zip", checksum: "8bf6df5f1c6cf301aa0cd2fd817367fc0306e72b6572a59ebd7ee8f514396827"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0243FC6A-753A-4251-B472-7537351958CC/libplist.xcframework.zip", checksum: "ef957fc18002214e695e849696a5b326f31be00b76eeaa5876af9ccde7e22e25"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0243FC6A-753A-4251-B472-7537351958CC/libtatsu.xcframework.zip", checksum: "8b5fee7d1571ce2d4ea889a269458a7b188f8893d41e6a37427bf3467113c31f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.0243FC6A-753A-4251-B472-7537351958CC/libusbmuxd.xcframework.zip", checksum: "e505af2d4c27729123a346969b32978223fb31e347f5fac0d95ad4b1e84f458a"),
    ]
)

