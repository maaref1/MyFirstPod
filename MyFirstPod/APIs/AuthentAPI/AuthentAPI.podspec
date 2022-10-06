Pod::Spec.new do |s|
  s.name = 'AuthentAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '1.0'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'MMA Assurances'
  s.license = 'Proprietary'
  s.homepage = 'none'
  s.summary = 'Authent API'
  s.source_files = 'AuthentAPI/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
  s.dependency 'Reqres', '~> 2.1.0'
end
