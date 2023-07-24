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
	.package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"), 
   ],
    targets: [
        .target(
            name: "wkhtmltopdf",
            dependencies: [
		.product(name: "Vapor", package: "vapor"), // Updated to "vapor"
            ]),
    ]
)
