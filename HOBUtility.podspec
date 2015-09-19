#
# Be sure to run `pod lib lint HOBUtility.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HOBUtility"
  s.version          = "0.3.0"
  s.summary          = "HOBUtility."
  s.description      = <<-DESC
my own utility library.                           
DESC
  s.homepage         = "https://github.com/yuchan/HOBUtility"
  s.license          = 'MIT'
  s.author           = { "yuchan" => "github@junkpiano.me" }
  s.source           = { :git => "https://github.com/yuchan/HOBUtility.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HOBUtility' => ['Pod/Assets/*.png']
  }
end
