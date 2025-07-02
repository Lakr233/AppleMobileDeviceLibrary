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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51F4D91B-6A45-41B4-82C1-EC03E4F3B0CF/libimobiledevice.xcframework.zip", checksum: "9511d18eb67981310602914abe6f28a27aab371f9188b35fe2834c5385642a51"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51F4D91B-6A45-41B4-82C1-EC03E4F3B0CF/libimobiledevice_glue.xcframework.zip", checksum: "4285752db9ae31eeb088d0ade6cbe367be0b55130f7fca4a35ec2943cbae9c92"),
        .binaryTarget(name: "libplist", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51F4D91B-6A45-41B4-82C1-EC03E4F3B0CF/libplist.xcframework.zip", checksum: "90009f48bd7850d4af09b976fb624ba421ba04976b414b10ea797b70c37b5929"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51F4D91B-6A45-41B4-82C1-EC03E4F3B0CF/libtatsu.xcframework.zip", checksum: "220440e2f115af0825d0de404e2a5291def064946ace9a061bfd31aa4d2f5fa2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/Lakr233/AppleMobileDeviceLibrary/releases/download/storage.51F4D91B-6A45-41B4-82C1-EC03E4F3B0CF/libusbmuxd.xcframework.zip", checksum: "3c5451fd67f43545f9ba887c95be29d4ddc2919d5c674af5e7873957877f7e81"),
    ]
)

