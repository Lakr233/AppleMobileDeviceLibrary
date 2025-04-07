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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C8DCB00-9CE9-4975-9A06-6D0C6A9869CA/libimobiledevice.xcframework.zip", checksum: "97e5143f1665229e77ee8775afe185ea183c65f8329081d66bc18c5544fe0635"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C8DCB00-9CE9-4975-9A06-6D0C6A9869CA/libimobiledevice_glue.xcframework.zip", checksum: "c4ae69b565a48ebabe6d0130ca19d4963537462d03e639c1dc76372ac26ea98b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C8DCB00-9CE9-4975-9A06-6D0C6A9869CA/libplist.xcframework.zip", checksum: "730febc59affbe82eb436b5c8fba9ebc20c04d12223283e183a4cb657cefc3cd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C8DCB00-9CE9-4975-9A06-6D0C6A9869CA/libtatsu.xcframework.zip", checksum: "9907e1b9be291094d765bb3194175e214279fae69fa6267c2d55be85944854f3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4C8DCB00-9CE9-4975-9A06-6D0C6A9869CA/libusbmuxd.xcframework.zip", checksum: "66c042b885073e6da45f379a8be80caccd8baee409cd30893d06efde69b877f9"),
    ]
)

