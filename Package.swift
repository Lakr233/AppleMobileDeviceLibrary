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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D020DDE-CB92-4C0F-A309-655AEEA7CF42/libimobiledevice.xcframework.zip", checksum: "b03db5817b5f3056eb28758b77640e8712fd282a89e78d0ab74dc8900fd309aa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D020DDE-CB92-4C0F-A309-655AEEA7CF42/libimobiledevice_glue.xcframework.zip", checksum: "5a747bd5fe74a9d20bedee89fac1b390dc34f3025b657c6a18612af4daeccbf5"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D020DDE-CB92-4C0F-A309-655AEEA7CF42/libplist.xcframework.zip", checksum: "3eff3b21c2c856a5185cb3eced2caa1b0893869dbfbeb4340144c01717b8fd00"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D020DDE-CB92-4C0F-A309-655AEEA7CF42/libtatsu.xcframework.zip", checksum: "4422956063a185c78c99ec2109878ae4a72ae35f667e62b07b753c89bfd02a0a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.9D020DDE-CB92-4C0F-A309-655AEEA7CF42/libusbmuxd.xcframework.zip", checksum: "274496fe28d4a30bdcd45c15e42bf804659e1b0c09d9c5065236042f27f39d81"),
    ]
)

