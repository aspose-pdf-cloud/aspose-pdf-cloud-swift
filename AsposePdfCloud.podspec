Pod::Spec.new do |s|
  s.name = 'AsposePdfCloud'
  s.summary = 'Aspose PDF Cloud'
  s.description = 'Aspose.PDF Cloud is a REST API for creating and editing PDF files. It can also be used to convert PDF files to different formats like DOC, HTML, XPS, TIFF and many more. Aspose.Pdf for Cloud gives you control: create PDFs from scratch or from HTML, XML, template, database, XPS or an image. Render PDFs to image formats such as JPEG, PNG, GIF, BMP, TIFF and many others. Aspose.Pdf for Cloud helps you manipulate elements of a PDF file like text, annotations, watermarks, signatures, bookmarks, stamps and so on. Its REST API also allows you to manage PDF pages by using features like merging, splitting, and inserting. Add images to a PDF file or convert PDF pages to images.'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '20.9.0'
  s.swift_version = '4.1'
  s.source = { :git => 'https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift.git', :tag => s.version.to_s }
  s.authors = 'Aspose PDF Cloud'
  s.license = 'MIT'
  s.homepage = 'https://products.aspose.cloud/pdf/cloud'
  s.source_files = 'AsposePdfCloud/*.swift', 'AsposePdfCloud/**/*.swift'
  s.dependency 'Alamofire', '~> 4.7.0'
end
