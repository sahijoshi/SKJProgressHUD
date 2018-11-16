#
# Be sure to run `pod lib lint SKJProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SKJProgressHUD'
  s.version          = '0.1.0'
  s.summary          = 'A light-weight and highly customizable progress HUD for iOS projects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SJProgressHUD is a light-weight, highly customizable progress HUD for iOS projects. It has been written based on Singleton Design Pattern.
    DESC

  s.homepage         = 'https://github.com/sahijoshi/SKJProgressHUD'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sahijoshi' => 'sahik.joshi@gmail.com' }
  s.source           = { :git => 'https://github.com/sahijoshi/SKJProgressHUD.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'SKJProgressHUD/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SKJProgressHUD' => ['SKJProgressHUD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
