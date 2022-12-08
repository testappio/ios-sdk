Pod::Spec.new do |spec|
  spec.name               = "TestAppIODSK"
  spec.version            = "1.0.0"
  spec.summary            = "A feedback gathering and bug reporting SDK for testapp.io platform"
  spec.description        = "All in one packaged integrated solution to gather feedback and report bugs during application testing."
  spec.homepage           = "https://testapp.io"
  spec.documentation_url  = "https://help.testapp.io/sdk-in-app-feedback/"
  spec.license            = { :type => "Commercial", :file => "LICENSE"}
  spec.author             = { "TestApp.io FZ-LLC" }
  spec.source             = { :git => 'https://github.com/testappio/ios-sdk.git', :tag => "#{spec.version}" }
  spec.swift_version      = "5.3"

  # Supported deployment targets
  spec.ios.deployment_target  = "13.0"

  # Published binaries
  spec.vendored_frameworks = "TestAppIOSDK.xcframework"
end
