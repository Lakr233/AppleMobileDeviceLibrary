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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00AF160A-392F-4AC6-91B1-FF599DB0F2D4/libimobiledevice.xcframework.zip", checksum: "f9c86b6b24ce09bb166b660b0d54375ecc29cb6c7086cf1445a89c72085584db"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00AF160A-392F-4AC6-91B1-FF599DB0F2D4/libimobiledevice_glue.xcframework.zip", checksum: "d08307308ba2b3a6192c2b2ed2a0b647047083c9ebbe71d8486c9e5f405f8f54"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00AF160A-392F-4AC6-91B1-FF599DB0F2D4/libplist.xcframework.zip", checksum: "a719eabd4a4a039948833c7d2f35208929af5e91128f062e7e42becbb3ae0d87"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00AF160A-392F-4AC6-91B1-FF599DB0F2D4/libtatsu.xcframework.zip", checksum: "4e8568909018024316820962bcc8cfe94b5385d9431f84d9c24352f11fc6c787"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.00AF160A-392F-4AC6-91B1-FF599DB0F2D4/libusbmuxd.xcframework.zip", checksum: "91c157c3828990f8fe9fa935133a1a1f05e3b4bae334e9df017dde0255578626"),
    ]
)

