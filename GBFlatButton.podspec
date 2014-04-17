Pod::Spec.new do |s|
  s.name             = "GBFlatButton"
  s.version          = "0.1.0"
  s.summary          = "A short description of GBFlatButton."
  s.homepage         = "http://github.com/barbosa/GBFlatButton"
  s.screenshots      = "https://raw.githubusercontent.com/barbosa/GBFlatButton/master/screenshot.png"
  s.license          = 'MIT'
  s.author           = "Gustavo Barbosa"
  s.source           = { :git => "http://github.com/barbosa/GBFlatButton.git", :tag => s.version.to_s }

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Classes'

  s.frameworks = 'QuartzCore'
end
