# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

target 'Credera-POC' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Credera-POC
  pod 'CocoaLumberjack/Swift', '3.4.2'
  pod 'Fabric'
  pod 'Crashlytics'

  target 'Credera-POCTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'Credera-POCUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        if config.name == 'Release'
            config.build_settings['SWIFT_COMPILATION_MODE'] = 'wholemodule'
        end
    end
end
