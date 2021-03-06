Pod::Spec.new do |s|
  s.name         = "apptentive-osx"
  s.version      = "0.0.1"
  s.summary      = "Apptentive Customer Communications SDK."
  s.description  = <<-DESC
		This Cocoa library for OS X allows you to add a quick and easy in-app-feedback
		mechanism to your Mac applications. Feedback is sent to the Apptentive web service.
    DESC
  s.homepage     = "https://www.apptentive.com/"
  s.license      = "BSD"
  s.authors       = { "Andrew Wooster" => "andrew@apptentive.com", "Peter Kamb" => "peter@apptentive.com" }
  s.source       = { :git => "https://github.com/levigroker/apptentive-osx.git", :tag => s.version.to_s }
  s.platform     = :osx, '10.7'
  s.osx.deployment_target = '10.7'
  s.public_header_files = "apptentive-ios/ApptentiveConnect/source/ATConnect.h",
  						  "apptentive-ios/ApptentiveConnect/source/Rating Flow/ATAppRatingFlow.h"
  s.source_files = "ApptentiveConnect/source/**/*.{h,m}",
  				   "apptentive-ios/ApptentiveConnect/ext/**/*.{h,m}",
  				   "apptentive-ios/ApptentiveConnect/source/**/*.{h,m}"
  s.exclude_files = "apptentive-ios/ApptentiveConnect/source/Controllers/**/*",
				    "apptentive-ios/ApptentiveConnect/source/Custom Views/**/*",
				    "apptentive-ios/ApptentiveConnect/source/Surveys/**/*",
  s.frameworks   = "Cocoa", "SystemConfiguration", "AddressBook"
  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => "JSONKIT_PREFIX=AT AT_LOGGING_LEVEL_INFO=1 AT_LOGGING_LEVEL_ERROR=1 AT_RESOURCE_BUNDLE=1" }
  s.resource_bundle = {"ApptentiveResources" => ["ApptentiveConnect/xibs/**/*.xib", "apptentive-ios/ApptentiveConnect/art/generated/at_logo_info*.png"] }
  s.requires_arc = false
end
