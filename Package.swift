// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Japx",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Japx",
            targets: ["Japx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/Moya/Moya.git", from: "13.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Japx",
            dependencies: []),
        .target(
            name: "Japx/Codable",
            dependencies: [
                "Japx"],
            exclude: [
                "Example"]),
        .target(
            name: "Japx/Alamofire",
            dependencies: [
                "Japx",
                "Alamofire"],
            exclude: [
                "Example"]),
        .target(
            name: "Japx/RxAlamofire",
            dependencies: [
                "Japx/Alamofire",
                "RxSwift"],
            exclude: [
                "Example"]),
        .target(
            name: "Japx/CodableAlamofire",
            dependencies: [
                "Japx/Alamofire",
                "Japx/Codable"],
        exclude: [
            "Example"]),
        .target(
            name: "Japx/RxCodableAlamofire",
            dependencies: [
                "Japx/CodableAlamofire",
                "Japx/RxAlamofire"],
        exclude: [
            "Example"]),
        .testTarget(
            name: "JapxTests",
            dependencies: ["Japx"]),
    ]
)
