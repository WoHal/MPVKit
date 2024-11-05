// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmb2", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libmpv-GPL.xcframework.zip",
            checksum: "da914bcc3fbe3b83195edaa43aa93f77ab65a8e22161b0e7cd969cb88221d9cb"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavcodec-GPL.xcframework.zip",
            checksum: "5233b72c781ad49d89614d9c7268dee479fa92498a7f34eedc33952ddf32ffff"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavdevice-GPL.xcframework.zip",
            checksum: "fc0931c5641b0bdd398a9d50d7d7c590410af630415c51b519a9a29064bdd855"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavformat-GPL.xcframework.zip",
            checksum: "2682db2813f0eb526e6049eea207d835df6669f47c886f948e608e621d0c5a02"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavfilter-GPL.xcframework.zip",
            checksum: "df4dccb16578f9c99ecd88ceed827b6a0b1000913d1142349d21511bfffd92f1"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavutil-GPL.xcframework.zip",
            checksum: "03c16efd916981eebfcbcfd21ec8cba76108dca5fd51ff2aa3de54ba264f88d4"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libswresample-GPL.xcframework.zip",
            checksum: "aced209c17e6efcf0ac96be7e4be0ea98baae13c6c7e44d8a371f92d432ac1bf"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libswscale-GPL.xcframework.zip",
            checksum: "fa6fe090d626e09168f3b6d583db81fadde5341206f9a509808cc8ee197b1730"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "89989ea14f7297d98083eb8adfba9b389f5b4886cb54fb3d5b6e8b915b7adf1d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "46ad8e8fa5a6efe7bd31c9b3c56b20c1bc29a581083588d86e941d261d7dbe98"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "defd5623e6786543588001b8f33026395960a561540738deb6df6996d39f957d"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "c3b8f506fa32bcb3f9bf65096b0556c4f5973f846ee964577d783edbe8e6969d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "47a34e7877f7ebd9175f5645059030e553276faa9a21b91e29fb7463b94e8daf"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "5f5cf903a2d52157c29ad304260709f618ce086afea02061241982f8425a6fb0"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "430ed1a8ff1a230bd93b6868021cde2aafb23c8cb2d586525836cac47c4f310f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "300d2966c914e06f0211d8da0ea6208a345709b888e9cbbf1cdd94df26330359"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "4a3122a2027f021937ed0fa07173dca7f2c1c4c4202b7caf8043fa80408c0953"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "f607773598caa72435d8b19ce6a9d54fa7f26cde126b6b66c0a3d2804f084c68"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "af24cd1429069153f0ca5c650e0b374c27ae38283aca47cbbbc9edb3165b182e"
        ),

        .binaryTarget(
            name: "Libsmb2",
            url: "https://github.com/WoHal/libsmb2-build/releases/download/v5.0.3/Libsmb2.xcframework.zip",
            checksum: "3636cc911a13725682dd6f88ecefe060ac559b7495656202643c48f4e23786b4"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "589db9c241e6cc274f2825bee542add273febd0666ebd7ea8a402574ed76e9af"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.3.4/Libbluray.xcframework.zip",
            checksum: "68540747670e734e9b9063da3e5ccb139d34e8b40e1d5ec3177392603d93dfec"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1/Libuavs3d.xcframework.zip",
            checksum: "893257fc73c61b87fb45ee9de7df6ac4a6967062d7cac2c8d136cd2774a04971"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.2.9-fix/MoltenVK.xcframework.zip",
            checksum: "63836d61deceb5721ff0790dac651890e44ef770ab7b971fb83cc1b2524d1025"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.2.0/Libshaderc_combined.xcframework.zip",
            checksum: "1ccd9fce68ea29af030dceb824716fc16d1f4dcdc0b912ba366d5cb91d7b1add"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "bd2c27366f8b7adfe7bf652a922599891c55b82f5c519bcc4eece1ccff57c889"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "f32d20351289a080cd7288742747cd927553fde8c217f63263b838083d07a01a"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavcodec.xcframework.zip",
            checksum: "39f4f8fa6f2acbf703ee89d38c43d2c34c7e23ffc53a3807738fc940af7feba5"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavdevice.xcframework.zip",
            checksum: "85e97c47ec7b983fedf85b5757c5b05e3d352bec7fc2e1b4622b57ce1826e9a0"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavformat.xcframework.zip",
            checksum: "aa9f74019c8317771b0c49124eb29abd89e56a8c7547c78592dc20e96bc8e28d"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavfilter.xcframework.zip",
            checksum: "97facec5e0c7f7286f1cd5c22facc85fb04990aab025a28dfcfe6bee29a8c5cd"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libavutil.xcframework.zip",
            checksum: "aea0280eaa94073efd7e769afe66dcfb4972d72b39fbc36a4f8fd1be6f0aae6e"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libswresample.xcframework.zip",
            checksum: "1ad172132c3f6ebc4b5aab8ccbe5e2b581fa38c800b370f378dbd0886ab10d91"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/mpvkit/MPVKit/releases/download/0.39.0/Libswscale.xcframework.zip",
            checksum: "87f0dfe6cc08ce6a05cbfe510d8c14de598abd48cc7be73cb36f2e49b4a92097"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "80b14d8080c2531ced6d6b234a826c13f0be459a8c751815f68e0eefd34afa30"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "3765d7c6392b4f9a945b334ed593747b8adb9345078717ecfb6d7d12114a0f9e"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/WoHal/MPVKit/releases/download/0.39.0/Libmpv.xcframework.zip",
            checksum: "91c11210b968386f7fc415dacfe8760042c2a8495e0a9ebfaf4dfbfdb7b88863"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
