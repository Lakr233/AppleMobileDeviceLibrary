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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D545B98-5835-4F18-B9C2-DDF0A51A76CA/libimobiledevice.xcframework.zip", checksum: "72e3e9ce200318b4fcc9c0c42e4208c6b3aeab00e643ae1e962c820b7340c21b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D545B98-5835-4F18-B9C2-DDF0A51A76CA/libimobiledevice_glue.xcframework.zip", checksum: "e8acc6dbbc5b8eb8bdedc57e77bb93d12a41ea793faba194c51333cbf3669d3b"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D545B98-5835-4F18-B9C2-DDF0A51A76CA/libplist.xcframework.zip", checksum: "ff3974999ef245e62341e8ba0244f49f8fae030109fb63ad0a7b5b28436520da"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D545B98-5835-4F18-B9C2-DDF0A51A76CA/libtatsu.xcframework.zip", checksum: "940ac50742b231b5f01bf425afa2df20607173cb8e438990277e56f041834c0a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.6D545B98-5835-4F18-B9C2-DDF0A51A76CA/libusbmuxd.xcframework.zip", checksum: "8ff1923247e8015560a2371cadcad0fc53d4d81104b110593579921c925edefc"),
    ]
)

