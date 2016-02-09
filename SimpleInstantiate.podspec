#
#  Be sure to run `pod spec lint SimpleInstantiate.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SimpleInstantiate"
  s.version      = "0.0.6"
  s.summary      = "Simple way to instantiate in Swift."
  s.homepage     = "https://github.com/takecian/SimpleInstantiate"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "takecian" => "takecian@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/takecian/SimpleInstantiate.git", :tag => s.version }
  s.source_files  = "SimpleInstantiate/*.swift"
end
