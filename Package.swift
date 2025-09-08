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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8694E6BA-926C-4ECA-8BE1-CF788C6D8B33/libimobiledevice.xcframework.zip", checksum: "0a48eebbd4c59781b14e165b2d4142feedf4dcc7ffdd9db59ddd93b2f92329e1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8694E6BA-926C-4ECA-8BE1-CF788C6D8B33/libimobiledevice_glue.xcframework.zip", checksum: "5bfaa659ca64461ca4e6ec4aa271cd7738b56cb08c8b3ee69c42cc0b9d195851"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8694E6BA-926C-4ECA-8BE1-CF788C6D8B33/libplist.xcframework.zip", checksum: "b8ebbcb34e50c8771b54e434609fea2fed65476e684e41ad346f79b8ba1cb7da"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8694E6BA-926C-4ECA-8BE1-CF788C6D8B33/libtatsu.xcframework.zip", checksum: "15c4901b4687127e9820cb935019746ed153bbfa11593f03db74cba1ca02521e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.8694E6BA-926C-4ECA-8BE1-CF788C6D8B33/libusbmuxd.xcframework.zip", checksum: "7593bddca6f66d55ae605fa62e87b409be9b405750e5b05529cc567cc2082536"),
    ]
)

