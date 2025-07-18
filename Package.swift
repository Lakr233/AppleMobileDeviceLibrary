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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18698D1-D721-41AC-A91D-BBD2DD3ACF55/libimobiledevice.xcframework.zip", checksum: "b0f540b623670db330deb8a9558ec2b5de6f3dcf1d022fb2041a513d0c8f08fc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18698D1-D721-41AC-A91D-BBD2DD3ACF55/libimobiledevice_glue.xcframework.zip", checksum: "3fb9367dbaf546242c300756ca2e766de8403ca5ae16dabfeb5d6c75eda94d10"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18698D1-D721-41AC-A91D-BBD2DD3ACF55/libplist.xcframework.zip", checksum: "71381bf8eee0309024966edb7f05ec4021c05b4a8859e77105be30139087aea3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18698D1-D721-41AC-A91D-BBD2DD3ACF55/libtatsu.xcframework.zip", checksum: "17335d0dd2f9d797137e76875eeeda5451604757e0d0d906e18b9d2475b6dabb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.C18698D1-D721-41AC-A91D-BBD2DD3ACF55/libusbmuxd.xcframework.zip", checksum: "482bfbafcbfee1e32df2e91317120a2866ac5e86e09ad9f4ee0aee1ed1b2b7ee"),
    ]
)

