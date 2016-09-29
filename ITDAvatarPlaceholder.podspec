Pod::Spec.new do |s|
  s.name             = "ITDAvatarPlaceholder"
  s.version          = "0.1.0"
  s.summary          = "Library to generate an user avatar placeholder image."

  s.description      = <<-DESC
Generates an avatar placeholder image with first letters of the provided full user name in the center.
A color of the background is suitable for the flat UI and computed from a hash of the provided name.
                       DESC

  s.homepage         = "https://github.com/itdraft/ITDAvatarPlaceholder"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Igor Kurylenko" => "igorkurylenko@gmail.com" }
  s.source           = { :git => "https://github.com/itdraft/ITDAvatarPlaceholder.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/igorkurylenko'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ITDAvatarPlaceholder' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
