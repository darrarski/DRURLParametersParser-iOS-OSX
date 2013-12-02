Pod::Spec.new do |s|
  s.name         = "DRURLParametersParser"
  s.version      = "0.1"
  s.summary      = "Helper class for retrieving parameters values from url"
  s.homepage     = "https://bitbucket.org/darrarski/drurlparametersparser-ios-osx"
  s.license      = 'MIT'
  s.author       = { "Darrarski" => "darrarski@gmail.com" }
  s.source       = { :git => "https://bitbucket.org/darrarski/drurlparametersparser-ios-osx.git" }
  s.osx.source_files = 'DRURLParametersParser/DRURLParametersParser.{h,m}'
  s.ios.source_files = 'DRURLParametersParser/DRURLParametersParser.{h,m}'
  s.requires_arc = true
end