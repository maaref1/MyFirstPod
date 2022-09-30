#
# Be sure to run `pod lib lint MyFirstPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyFirstPod'
  s.version          = '0.2.1'
  s.summary          = 'This pod will give you access to a custom Button.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod will be used to add a custom Button with a custom color, radius, actions
                       DESC

  s.homepage         = 'https://github.com/maaref1/MyFirstPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'maaref1' => 'khalil.maaref@gmail.com' }
  #khalil.maaref.ext@groupe-mma.fr
  
  s.source           = { :git => 'https://github.com/maaref1/MyFirstPod.git', :tag => s.version.to_s }
  s.requires_arc = true
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'MyFirstPod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MyFirstPod' => ['MyFirstPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit' #, 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
