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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3869D16A-C85E-4ABC-93AC-5E758A918875/libimobiledevice.xcframework.zip", checksum: "7bbbb591dc87246e10e6ac011164ef5f606f04a06c9eb427776b25d3eb5554ae"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3869D16A-C85E-4ABC-93AC-5E758A918875/libimobiledevice_glue.xcframework.zip", checksum: "6f57f853edf808b097c48364a1f747b04597bbbd7bdd37db8526dab45cadc96c"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3869D16A-C85E-4ABC-93AC-5E758A918875/libplist.xcframework.zip", checksum: "83255c10b220b73987d528de9350dd12cbfc7a0664f134979366fa82b248eca6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3869D16A-C85E-4ABC-93AC-5E758A918875/libtatsu.xcframework.zip", checksum: "bc45d93275847086ef9b8dfcbf903149e90b812ead715e8a042f68e409c9b9bf"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.3869D16A-C85E-4ABC-93AC-5E758A918875/libusbmuxd.xcframework.zip", checksum: "5fcc0a53944c13b5476f7b7bc1d59b637b88307b44608dda9855c7d6d0d49138"),
    ]
)

