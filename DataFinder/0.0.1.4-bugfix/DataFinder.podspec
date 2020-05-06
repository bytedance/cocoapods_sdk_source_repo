# Be sure to run `pod lib lint Heimdallr.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'DataFinder'

    s.version          = '0.0.1.4-bugfix'

    s.summary          = 'DataFinder by ByteDance'

    s.homepage         = 'https://apm.bytedance.com'

    s.license          = { :type => 'MIT', :file => 'DataFinder/LICENSE' }

    s.authors          = 'ByteDance'

    s.ios.deployment_target = '8.0'

    s.source = { :http => "https://lf1-ttcdn-tos.pstatp.com/obj/heimdallr/DataFinder/#{s.version}/DataFinder.zip" }

    s.source_files = "DataFinder/Headers/*.h"

    s.public_header_files = "DataFinder/Headers/*.h"

    s.frameworks = 'UIKit','AdSupport'

    s.dependency 'RangersAppLog/Core', '~>5.0.0'

    s.subspec 'Core' do |core|
    	core.vendored_libraries = "DataFinder/libCore.a"
    	core.libraries = 'c++','z','sqlite3'
    end

    s.subspec 'Crash' do |crash|
    	crash.vendored_libraries = "DataFinder/libCrash.a"
    	crash.dependency 'DataFinder/Core'
    	crash.libraries = 'c++abi'
    end
end
