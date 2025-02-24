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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4EC460D-B500-4898-923C-E972A7F10EDE/libimobiledevice.xcframework.zip", checksum: "1169c5b380da221b17f23c2b13a3e15bc810d139156caa1b577946e3e3317f56"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4EC460D-B500-4898-923C-E972A7F10EDE/libimobiledevice_glue.xcframework.zip", checksum: "b5608be22d549b9a7715da97b677434dcd0137218bbf3ede8aed01698cc3c604"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4EC460D-B500-4898-923C-E972A7F10EDE/libplist.xcframework.zip", checksum: "d15083a56752d09a8d26c1150cf7560eed84db031d14b561c6fefaa39906e532"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4EC460D-B500-4898-923C-E972A7F10EDE/libtatsu.xcframework.zip", checksum: "014d6e088bd68fd97edddcf4ccd96d7f0d43363c234e8e05177645ef88a6194b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C4EC460D-B500-4898-923C-E972A7F10EDE/libusbmuxd.xcframework.zip", checksum: "1f9e10742c0b95343838e4ee0341f6dc48d693ce6548b630b54c24d9661a161d"),
    ]
)

