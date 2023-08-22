Pod::Spec.new do |s|
  s.name             = 'MobilliumBuilders'
  s.version          = '1.5.1'
  s.summary          = 'Builders classes'

  s.homepage         = 'https://github.com/mobillium/MobilliumBuilders'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mobillium' => 'info@mobillium.com' }
  s.source           = { :git => 'https://github.com/mobillium/MobilliumBuilders.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mobillium'
  s.ios.deployment_target = '11.0'

  s.swift_version = "5.0"

  s.source_files = 'Sources/MobilliumBuilders/Classes/**/*'

end
