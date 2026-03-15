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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5AE61CE3-7C99-418E-B4C4-1F9FA333DF6B/libimobiledevice.xcframework.zip", checksum: "9e4ea7b8a20ff7debd9d7114f7b09d0fe5f5f3bef937a82a810d390ada3073e6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5AE61CE3-7C99-418E-B4C4-1F9FA333DF6B/libimobiledevice_glue.xcframework.zip", checksum: "be7c55de92cbf1287cf2e8f69c74dfe3366d61216cf1a74fc758d4e56993e73a"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5AE61CE3-7C99-418E-B4C4-1F9FA333DF6B/libplist.xcframework.zip", checksum: "6629d70299dc4ce0c004013cf1b1962617c012d29671e2be400a84d9ac6950b3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5AE61CE3-7C99-418E-B4C4-1F9FA333DF6B/libtatsu.xcframework.zip", checksum: "43a479d21c3e40146d8ce9254c42e58f38a9c3de11a4c60e72c8ef54a45d914e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.5AE61CE3-7C99-418E-B4C4-1F9FA333DF6B/libusbmuxd.xcframework.zip", checksum: "68823d6a32e1994214fa779c27fc1f65835091c4930586994fc4dd76c2e3c165"),
    ]
)

