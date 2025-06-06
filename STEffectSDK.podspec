#
# Be sure to run `pod lib lint STEffectSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name          = 'STEffectSDK'
    s.version       = '0.0.2'
    s.summary       = 'STEffectSDK'
    s.description   = "STEffectSDK SDK for iOS."
    
    s.homepage      = 'https://gitlab.softsugar.com/huyu/stmobile_demo/3rdparty_framework/vocengine/test_effect_sdk'
    s.license       = { :type => 'MIT', :file => 'LICENSE' }
    s.author        = { '郭振全' => 'guozhenquan@softsugar.com' }
    s.source        = { :git => 'git@gitlab.softsugar.com:huyu/stmobile_demo/3rdparty_framework/vocengine/test_effect_sdk.git', :tag => s.version.to_s }
    
    s.pod_target_xcconfig = {
        "ENABLE_BITCODE" => "NO",
        "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES", # requies both `user_target_xcconfig` and `pod_target_xcconfig`
        "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) STEFFECTSDK_NAME=#{s.name} STEFFECTSDK_VERSION=#{s.version}"
    }
    s.user_target_xcconfig = {
        "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" # requies both `user_target_xcconfig` and `pod_target_xcconfig`
    }

    s.platform      = :ios, "8.0"
    s.ios.deployment_target = "8.0"
    
    s.requires_arc = true
    
    s.source_files = 'class/**/*'
    s.public_header_files = [
        "class/**/*.h"
    ]
    s.private_header_files = [
        "class/**/*+*.h",
    ]
    s.libraries = ["c++"]
    s.frameworks = ['Foundation', 'UIKit']
        
end
