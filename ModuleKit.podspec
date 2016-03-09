#
# Be sure to run `pod lib lint ModuleKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ModuleKit"
  s.version          = "0.1.0"
  s.summary          = "Resolve load from NSBundle on Swift Framework"
  s.description      = <<-DESC
Resolve load from NSBundle on Swift Framework.
Instantiate from Storyboard, XIB easily.
                       DESC

  s.homepage         = "https://github.com/muukii/ModuleKit"
  s.license          = 'MIT'
  s.author           = { "muukii" => "m@muukii.me" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/ModuleKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/muukii0803'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ModuleKit' => ['Pod/Assets/*.png']
  }
end
