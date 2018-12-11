Pod::Spec.new do |spec|
  spec.name         = 'multipart'
  spec.version      = '3.2.2'
  spec.license      = 'MIT'
  spec.homepage     = 'https://github.com/vapor/mulptipart'
  spec.authors      = { 'Vapor' => 'contact@vapor.codes' }
  spec.summary      = 'mulptipart'
  spec.source       = { :git => "#{spec.homepage}.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"
  spec.watchos.deployment_target = "2.0"
  spec.tvos.deployment_target = "9.0"
  spec.requires_arc = true
  spec.social_media_url = 'https://twitter.com/codevapor'
  spec.default_subspec = "Default"

  spec.subspec "Default" do |ss|
    ss.source_files = 'Sources/Multipart/*.swift'
    #ss.source_files = 'Sources/**/*.{swift}'
    #ss.dependency 'VaporCoreBits', '~> 3'
    ss.dependency 'VaporCore', '~> 3'
  end

  spec.subspec "libc" do |ss|
    ss.source_files = 'Sources/libc/**/*.{swift}'
  end

end
