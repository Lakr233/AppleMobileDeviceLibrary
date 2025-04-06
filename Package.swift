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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72E10936-6897-4FB6-A9D9-428C67976C64/libimobiledevice.xcframework.zip", checksum: "a2077920d8eb1326a51d81ffbf1394ae5e796da9caccc22299008911d7707749"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72E10936-6897-4FB6-A9D9-428C67976C64/libimobiledevice_glue.xcframework.zip", checksum: "dfcb2b06d7602f3f08b57da5d3843b88ee645cb52efa722cf09247affc05da7b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72E10936-6897-4FB6-A9D9-428C67976C64/libplist.xcframework.zip", checksum: "50d6d2666b3aac5f8db5730e9967c2315eeed5d7b1839fcdc15c28ffa2d8dc64"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72E10936-6897-4FB6-A9D9-428C67976C64/libtatsu.xcframework.zip", checksum: "fc0c1cf29bfa85a78856f57798417432410a033b3b9bed841cafd436d5414be9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.72E10936-6897-4FB6-A9D9-428C67976C64/libusbmuxd.xcframework.zip", checksum: "324737963859d55b54d14d63afc74d95be5d20772c074bbedcdf7c3193449a99"),
    ]
)

