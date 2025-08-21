Pod::Spec.new do |s|
  s.name = 'CybridApiOrganizationSwift'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.124.80'
  s.source = { :git => "https://github.com/Cybrid-app/cybrid-api-organization-swift.git", :tag => "v#{s.version}" }
  s.authors = 'Cybrid Technology Inc.'
  s.license = { :type => "Apache-2.0", :file => "LICENSE"}
  s.homepage = 'https://github.com/Cybrid-app/cybrid-api-organization-swift'
  s.summary = 'Cybrid iOS Organization API'
  s.description = 'Cybrid Organization API for Swift'
  s.source_files = 'CybridApiOrganizationSwift/APIClient/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
