Pod::Spec.new do |s|
  s.name             = 'RTRootNavigationController_WeexBox'
  s.version          = '0.7.1'
  s.summary          = 'Transparently make every view controller has its own navigation bar'
  s.description      = <<-DESC
More and more apps use custom navigation bar for each different view controller, instead of one common, gloabal navigation bar.

This project just help develops to solve this problem in a tricky way, develops use this navigation controller in a farmilar way just like you used to be, and
you can have each view controller a individual navigation bar.
                       DESC

  s.homepage         = 'https://github.com/aygtech/RTRootNavigationController_WeexBox'
  s.screenshots      = 'https://raw.githubusercontent.com/aygtech/RTRootNavigationController_WeexBox/master/ScreenShot/1.png', 'https://raw.githubusercontent.com/rickytan/RTRootNavigationController/master/ScreenShot/2.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mario' => 'myeveryheart@qq.com' }
  s.source           = { :git => 'https://github.com/aygtech/RTRootNavigationController_WeexBox.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.default_subspec  = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'RTRootNavigationController/Classes/**/*'
  end

  s.subspec 'Push' do |push|
    push.dependency 'RTRootNavigationController/Core'
    push.dependency 'RTInteractivePush', '~> 0.1.5'
    push.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) RT_INTERACTIVE_PUSH=1'
    }
  end

  # s.resource_bundles = {
  #   'RTRootNavigationController' => ['RTRootNavigationController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
