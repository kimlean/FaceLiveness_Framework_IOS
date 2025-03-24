platform :ios, '12.0'

target 'FaceLivenessSDK' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # For ONNX model support
  pod 'onnxruntime-objc'

  # Post-install configuration
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '5.0'

        # Fix for Apple Silicon simulators
        config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
      end
    end
  end # This closes the post_install block
end # This closes the target block