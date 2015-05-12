Pod::Spec.new do |s|

  s.name         = "CardViewController"
  s.version      = "1.0"
  s.summary      = "TODO"

  s.homepage     = "https://github.com/716labs/CardViewController/"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  
  s.social_media_url   = "http://twitter.com/716labs"  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/716labs/CardViewController.git", :tag => "1.0" }

  s.source_files  = "CardViewController/*.{h,m}"
  s.requires_arc = true

end
