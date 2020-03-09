#
#  Be sure to run `pod spec lint ShiHuoLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "ShiHuoLibrary"
  spec.version      = "0.0.2"
  spec.summary      = "用于分类作用."
  spec.description  = <<-DESC
  封装集合的一种方法,用于项目的分类中
                   DESC

  spec.homepage     = "https://github.com/demonnboy/ShiHuoLibrary"
  spec.license      = "MIT"

  spec.author             = { "demon" => "caoxuan@hupu.com" }
  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/demonnboy/ShiHuoLibrary.git", :tag => "#{spec.version}" }
  spec.frameworks = 'UIKit', 'Foundation'

  # spec.subspec 'JDFlipNumberView' do |jd|
  #   jd.source_files = 'JDFlipNumberView/*.{h,m}'
  #   jd.resource = 'JDFlipNumberView/JDFlipNumberView.bundle'
  #   jd.frameworks = 'QuartzCore'
  # end

  spec.subspec 'LoadAnimation' do |la|
    la.source_files = 'LoadAnimation/*.{h,m}'
  end

end
