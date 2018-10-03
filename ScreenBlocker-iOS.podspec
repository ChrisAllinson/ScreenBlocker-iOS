Pod::Spec.new do |s|
  s.name        = "ScreenBlocker-iOS"
  s.version     = "1.0.3"
  s.summary     = "ScreenBlocker adds an overlay to your app when it is backgrounded, masking the content."
  s.homepage    = "https://github.com/ChrisAllinson/ScreenBlocker-iOS"
  s.license     = { :type => "MIT", :file => "ScreenBlocker/libs/screen blocker/LICENSE" }
  s.authors     = { "ChrisAllinson" => "allinson.ca@hotmail.com" }

  s.requires_arc = true
  s.ios.deployment_target = "9.0"
  s.swift_version = "4.0"
  s.source   = { :git => "https://github.com/ChrisAllinson/ScreenBlocker-iOS.git", :branch => 'master', :tag => s.version }
  s.source_files = "ScreenBlocker/libs/screen blocker/*.{swift}"
  s.resources = 'ScreenBlocker/libs/screen blocker/*.{xib}'
end
