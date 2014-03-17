#
# Be sure to run `pod spec lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "INDObjCTwiMLWriter"
  s.version          = "0.0.1"
  s.summary          = "A TwiML generator library in Objective-C."
  s.homepage         = "https://github.com/Indatus/INDObjCTwiMLWriter"
  s.license          = 'MIT'
  s.author           = { "Jeff Trespalacios" => "jeff.trespalacios@gmail.com", "Jeff Styles" => "jstyles@indatus.com" }
  s.source           = { :git => "http://EXAMPLE/NAME.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.source_files = 'INDObjCTwiMLWriter/**/*.{h,m}'
  s.public_header_files = 'INDObjCTwiMLWriter/models/*.h','INDObjCTwiMLWriter/utilities/*.h'
end
