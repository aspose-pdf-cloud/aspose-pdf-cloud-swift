# Aspose.PDF Cloud
[Aspose.PDF Cloud](https://products.aspose.cloud/pdf/cloud) is a true REST API that enables you to perform a wide range of document processing operations including creation, manipulation, conversion and rendering of Pdf documents in the cloud.

Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process documents in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. This repository contains new generation SDKs for Aspose.PDF Cloud and examples.

These SDKs are now fully supported. If you have any questions, see any bugs or have enhancement request, feel free to reach out to us at [Free Support Forums](https://forum.aspose.cloud/c/pdf).

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ is required to build AsposePdfCloud 18.6+.

To integrate AsposePdfCloud into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'AsposePdfCloud', '~> 18.6'
end
```

Then, run the following command:

```bash
$ pod install
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```swift

func testGetPageAnnotations() {
    let name = "PdfWithAnnotations.pdf"

    let pageNumber = 2
    PdfAPI.getPageAnnotations(name: name, pageNumber: pageNumber, folder: self.tempFolder) {
        (response, error) in
        guard error == nil else {
            // errror handle
            return
        }
        if let response = response {
            // do
        }
    }
}

```

## Unit Tests
Aspose PDF SDK includes a suite of unit tests within the "test" subdirectory. These Unit Tests also serves as examples of how to use the Aspose PDF SDK.

## Licensing
All Aspose.PDF Cloud SDKs are licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.aspose.cloud)
+ [**Product Home**](https://products.aspose.cloud/pdf/cloud)
+ [**Documentation**](https://docs.aspose.cloud/display/pdfcloud/Home)
+ [**Free Support Forum**](https://forum.aspose.cloud/c/pdf)
+ [**Paid Support Helpdesk**](https://helpdesk.aspose.cloud/)
+ [**Blog**](https://blog.aspose.cloud/category/aspose-products/aspose-pdf-product-family/)
