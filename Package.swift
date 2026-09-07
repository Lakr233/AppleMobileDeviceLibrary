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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF7AA70E-79A1-4341-976F-6D1887BD70F6/libimobiledevice.xcframework.zip", checksum: "36afc163ba11e2b3416110b7dfad0ab7ac88d2b2834a52cdd2706b844ec90845"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF7AA70E-79A1-4341-976F-6D1887BD70F6/libimobiledevice_glue.xcframework.zip", checksum: "97ad43267857a5e43524e1e7a72a83c5f96fc9cbd9d4ccdd4c380f62b5344871"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF7AA70E-79A1-4341-976F-6D1887BD70F6/libplist.xcframework.zip", checksum: "842a72c9b6ca118f6607a39ceb6f18a21bfc149251cf15e42725f529db00ad28"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF7AA70E-79A1-4341-976F-6D1887BD70F6/libtatsu.xcframework.zip", checksum: "91f2c49b0ae6ed5f3c04cf534edf876cb7922972c86f4ce4e1b6e898d95bfe00"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.EF7AA70E-79A1-4341-976F-6D1887BD70F6/libusbmuxd.xcframework.zip", checksum: "1f73932f7e6740913cd16f1b046f1c8b500aa49156d44cd5ea0208b7b65fb701"),
    ]
)

