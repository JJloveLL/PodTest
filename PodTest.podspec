
Pod::Spec.new do |s|
  s.name         = "PodTest"
  s.version      = "0.0.1"
  s.summary      = "添加一个cocopods项目的测试" #简短的介绍
  s.description  = <<-DESC
                   公有Pods测试
                   DESC

  s.homepage     = "https://github.com/JJloveLL/PodTest" #项目的链接
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT (example)"  #开源协议
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "JJloveLL" => "max_dengjiajun@163.com" } #作者
  # Or just: s.author    = "JJloveLL"
  # s.authors            = { "JJloveLL" => "max_dengjiajun@163.com" }
  # s.social_media_url   = "http://twitter.com/JJloveLL"

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.requires_arc = true  #是否使用ARC

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  # s.source       = { :git => "https://github.com/JJloveLL/PodTest.git" }
  ## 这里不支持ssh的地址，只支持HTTP和HTTPS，最好使用HTTPS
  ## 正常情况下我们会使用稳定的tag版本来访问，如果是在开发测试的时候，不需要发布release版本，直接指向git地址使用
  ## 待测试通过完成后我们再发布指定release版本，使用如下方式
  s.source       = { :git => "https://github.com/JJloveLL/PodTest.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # s.resource  = "icon.png"
  s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  s.framework  = "SystemConfiguration"
  # s.frameworks = 'UIKit', 'Foundation'    #所需的framework,多个用逗号隔开
  s.module_name = 'PodTest'                 #模块名称
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4" #依赖关系，该项目所依赖的其他库，如果有多个可以写多个 s.dependency

end
