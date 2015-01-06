Pod::Spec.new do |s|
  s.name             = "INDObjCTwiMLWriter"
  s.version          = "0.0.4"
  s.summary          = "A TwiML generator library in Objective-C."
  s.homepage         = "https://github.com/Indatus/INDObjCTwiMLWriter"
  s.license          = 'MIT'
  s.author           = { "Jeff Trespalacios" => "jtrespalacios@indatus.com", "Jeff Styles" => "jstyles@indatus.com" }
  s.source           = { :git => "https://github.com/Indatus/INDObjCTwiMLWriter.git", :tag => s.version.to_s }
  s.requires_arc     = true
  s.source_files     = 'INDObjCTwiMLWriter/models/*.{h,m}', 'INDObjCTwiMLWriter/utilities/*.{h,m}'
end
