#
#  Be sure to run `pod spec lint SH_CORE.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "SHUIPlan"
  spec.version      = "0.0.3"
  spec.summary      = "关于UI和工具类的工具包"
  spec.description  = <<-DESC
                    一个简单的关于UI布局
                    还有一些简单的工具
                   DESC

  spec.homepage     = "https://github.com/demonnboy/SHUI.git"
  spec.module_name  = "SHUIPlan"
  spec.license      = 'MIT'

  spec.author             = { "demon" => "caoxuan@hupu.com" }
  spec.ios.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/demonnboy/SHUI.git", :tag => "#{spec.version}" }

  spec.requires_arc = true
  spec.swift_version = "4.2"
  spec.public_header_files = 'SHUIPlan/sh_core/**/*.h, SHUIPlan/*.h'
  spec.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
  spec.frameworks = 'UIKit'

  spec.subspec 'core_statistic' do |cs|
    cs.source_files = "SHUIPlan/sh_core/core_statistic/*.swift"
  end
  spec.subspec 'core_ui' do |cu|
    cu.source_files = "SHUIPlan/sh_core/core_ui/*.swift"
    cu.dependency "SHUIPlan/core_try"
  end
  spec.subspec 'core_try' do |ct|
    ct.source_files = "SHUIPlan/sh_core/core_try/*.{h,m}"
  end
  spec.subspec 'core_safe' do |cc|
    # cc.public_header_files = 'SHUIPlan-Swift.h'
    cc.source_files = "SHUIPlan/sh_core/core_safe/*.{h,m}"
  end

end
