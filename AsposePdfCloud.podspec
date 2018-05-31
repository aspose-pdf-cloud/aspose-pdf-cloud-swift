Pod::Spec.new do |s|
  s.name = 'AsposePdfCloud'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '18.5.0'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'Swagger Codegen'
  s.license = MIT
  s.source_files = 'AsposePdfCloud/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
end
