use_frameworks!
platform :ios, '10.0'

target 'RBSManager_Example' do
  pod 'RBSManager', :path => '../'

  target 'RBSManager_Tests' do
    inherit! :search_paths

    
  end
end

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
            end
        end
    end
end
