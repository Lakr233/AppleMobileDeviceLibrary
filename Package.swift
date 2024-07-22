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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206E6F43-4281-4F94-BDC7-CA5F8264D656/libimobiledevice.xcframework.zip", checksum: "d4fd79e7bbe495c8c2ae25806859f982e781ee4e223bd8d9f90e545f4d38c8fd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206E6F43-4281-4F94-BDC7-CA5F8264D656/libimobiledevice_glue.xcframework.zip", checksum: "5024e10c6daf79a95a6f5da059208fb9d13493fd6cc39077ce75740aa6c9a8e2"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206E6F43-4281-4F94-BDC7-CA5F8264D656/libplist.xcframework.zip", checksum: "584663825afbbb832480bf5db2e18585c194d72694209e74218691c3f9856a45"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206E6F43-4281-4F94-BDC7-CA5F8264D656/libtatsu.xcframework.zip", checksum: "0cbd7c7950363710e62a11cb9303786752276346da7576c24154c17c903f8f15"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.206E6F43-4281-4F94-BDC7-CA5F8264D656/libusbmuxd.xcframework.zip", checksum: "c69b1e5835ddddfa2877091f1239eb69a0cf6a3fdc30bc0a4b9d7f421d9c34a2"),
    ]
)

