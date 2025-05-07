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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.29CCC635-B8F3-4FA4-909F-CD46EC72649F/libimobiledevice.xcframework.zip", checksum: "78d6a2d3daa755a56900304085fa5a863677059db701fde2a509f7371add01a6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.29CCC635-B8F3-4FA4-909F-CD46EC72649F/libimobiledevice_glue.xcframework.zip", checksum: "80481039d19007e3dd1b63eeac33f7eff345cfdaa8d1f0528f6d49c117a85445"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.29CCC635-B8F3-4FA4-909F-CD46EC72649F/libplist.xcframework.zip", checksum: "19d05fbcd7a8584fd5a08a6abc239e65439913fce5794c915b03ec4870c091a6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.29CCC635-B8F3-4FA4-909F-CD46EC72649F/libtatsu.xcframework.zip", checksum: "8d3651149b7f913cccbca86edad4c538c6977a1f9516938f0478491e60d443c7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.29CCC635-B8F3-4FA4-909F-CD46EC72649F/libusbmuxd.xcframework.zip", checksum: "3c307aa0f44e7c8e2d115610ab4d68feeb1473e971751bf159615e1426ebafa5"),
    ]
)

