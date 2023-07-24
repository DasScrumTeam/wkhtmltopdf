// swift-tools-version:5.5
import PackageDescription

let package = Package(
   name: "wkhtmltopdf",
   platforms: [
      .macOS(.v10_15)
   ],
   products: [
        .library(
            name: "wkhtmltopdf",
            targets: ["wkhtmltopdf"]),
    ],
    dependencies: [
<<<<<<< HEAD
	.package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"), 
   ],
=======
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0")
    ],
>>>>>>> parent of 830aef1 (Update Package.swift)
    targets: [
        .target(
            name: "wkhtmltopdf",
            dependencies: [
		.product(name: "Vapor", package: "vapor"), // Updated to "vapor"
            ]),
        .testTarget(
            name: "wkhtmltopdfTests",
            dependencies: ["wkhtmltopdf", "Vapor"]),
    ]
)
