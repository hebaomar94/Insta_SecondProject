# Uncomment the next line to define a global platform for your project
platform :ios, '14.0'

target 'instagram' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for instagram
  pod 'IBAnimatable'
  pod 'IQKeyboardManagerSwift', '6.3.0'
  pod 'SkeletonView'
  pod 'FirebaseAnalytics'
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'
  pod 'FirebaseDatabase'
  pod 'GoogleSignIn'
  pod 'FirebaseCrashlytics'

  post_install do |installer|
    
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings["ONLY_ACTIVE_ARCH"] = "YES"
      end
    end
    
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
      end
    end
    
    xcode_base_version = `xcodebuild -version | grep 'Xcode' | awk '{print $2}' | cut -d . -f 1`
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        if config.base_configuration_reference && Integer(xcode_base_version) >= 14
          xcconfig_path = config.base_configuration_reference.real_path
          xcconfig = File.read(xcconfig_path)
          xcconfig_mod = xcconfig.gsub(/DT_TOOLCHAIN_DIR/, "TOOLCHAIN_DIR")
          File.open(xcconfig_path, "w") { |file| file << xcconfig_mod }
        end
      end
    end
  end
end  # <- Add this line to close the 'target' block
