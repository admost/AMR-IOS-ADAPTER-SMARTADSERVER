Pod::Spec.new do |s|
  s.name             = 'AMRAdapterSmartadserver'
  s.version          = '7.23.2.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'SmartAdServer adapter for AMR SDK.'
  s.description      = 'AMR SmartAdServer adapter allows publishers to mediate SmartAdServer banner, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-SMARTADSERVER.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterSmartadserver/Libs/AMRAdapterSmartadserver.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'Smart-Display-SDK', '7.23.2'
  s.dependency 'AMRSDK', '~> 1.5.7'
end
