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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECA2F55-5423-43C8-BA8E-A3AA730B05F2/libimobiledevice.xcframework.zip", checksum: "be6837f82195b90babb43f3241263c659fcdc0c45b86f1a2ae4ee0aec44480c3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECA2F55-5423-43C8-BA8E-A3AA730B05F2/libimobiledevice_glue.xcframework.zip", checksum: "943b00fa4ff2a2c0ffade311eef4b28e182a955d69bd734e58153ba13afe3096"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECA2F55-5423-43C8-BA8E-A3AA730B05F2/libplist.xcframework.zip", checksum: "bcef3d6215098f3c7f1cbbe7ccc04d7c84cbee168c703a461c75bddcfa04c6a3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECA2F55-5423-43C8-BA8E-A3AA730B05F2/libtatsu.xcframework.zip", checksum: "acc90eaeedc262f1c4089826397c2c34eb52d1330044e66f646df8d9063fc991"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.4ECA2F55-5423-43C8-BA8E-A3AA730B05F2/libusbmuxd.xcframework.zip", checksum: "66aaeaaf758292e123a30c27c5c38204bf470e825c066e3cec22148e399a66d8"),
    ]
)

