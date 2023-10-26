#!/bin/sh
if [ "$1" == "ios" ]; then
	accountLine=`cat ios/fastlane/.env.default|grep FASTLANE_USER=|sed -e 's/FASTLANE_USER=//g'`
	cat ios/fastlane/Appfile.org|sed -e "s/accountSpacer/${accountLine}/" > ios/fastlane/Appfile
	sed -i '' 's/PRODUCT_BUNDLE_IDENTIFIER = jp.co.wellier.suilog;/PRODUCT_BUNDLE_IDENTIFIER = jp.co.wellier.suilog.dev;/g' ios/Runner.xcodeproj/project.pbxproj
	sed -i '' 's/"PROVISIONING_PROFILE_SPECIFIER[sdk=iphoneos*]" = suilog;/"PROVISIONING_PROFILE_SPECIFIER[sdk=iphoneos*]" = suilogDevAdhoc;/g' ios/Runner.xcodeproj/project.pbxproj
	fvm flutter build ios --release  --no-codesign --dart-define="APP_NAME_PREFFIX=[dev]" --dart-define="APP_ID_SUFFIX=.dev" --dart-define="API_END_POINT=54.249.91.33:8900"
	cd ios
	fastlane beta
	cd ..
elif [ "$1" == "ios2" ]; then
	accountLine=`cat ios/fastlane/.env.default|grep FASTLANE_USER=|sed -e 's/FASTLANE_USER=//g'`
	cat ios/fastlane/Appfile.org|sed -e "s/accountSpacer/${accountLine}/" > ios/fastlane/Appfile
	fvm flutter build ios --release  --no-codesign --dart-define="APP_NAME_PREFFIX=[dev]" --dart-define="APP_ID_SUFFIX=.dev" --dart-define="API_END_POINT=54.178.47.35:8900"
	cd ios
	fastlane beta
	cd ..
elif [ "$1" == "iosr" ]; then
	accountLine=`cat ios/fastlane/.env.default|grep FASTLANE_USER=|sed -e 's/FASTLANE_USER=//g'`
	cat ios/fastlane/Appfile.org|sed -e "s/accountSpacer/${accountLine}/" > ios/fastlane/Appfile
	sed -i '' 's/PRODUCT_BUNDLE_IDENTIFIER = jp.co.wellier.suilog.dev;/PRODUCT_BUNDLE_IDENTIFIER = jp.co.wellier.suilog;/g' ios/Runner.xcodeproj/project.pbxproj
	sed -i '' 's/"PROVISIONING_PROFILE_SPECIFIER[sdk=iphoneos*]\" = suilogDevAdhoc;/\"PROVISIONING_PROFILE_SPECIFIER[sdk=iphoneos*]" = suilog;/g' ios/Runner.xcodeproj/project.pbxproj
	fvm flutter build ios --release  --no-codesign --dart-define="API_END_POINT=suilog-app.com"
	cd ios
	fastlane beta
	cd ..
elif [ "$1" == "iosstg" ]; then
	accountLine=`cat ios/fastlane/.env.default|grep FASTLANE_USER=|sed -e 's/FASTLANE_USER=//g'`
	cat ios/fastlane/Appfile.org|sed -e "s/accountSpacer/${accountLine}/" > ios/fastlane/Appfile
	sed -i '' 's/PRODUCT_BUNDLE_IDENTIFIER = jp.co.wellier.suilog.dev;/PRODUCT_BUNDLE_IDENTIFIER = jp.co.wellier.suilog;/g' ios/Runner.xcodeproj/project.pbxproj
	sed -i '' 's/"PROVISIONING_PROFILE_SPECIFIER[sdk=iphoneos*]\" = suilogDevAdhoc;/\"PROVISIONING_PROFILE_SPECIFIER[sdk=iphoneos*]" = suilog;/g' ios/Runner.xcodeproj/project.pbxproj
	fvm flutter build ios --release  --no-codesign --dart-define="API_END_POINT=stg.suilog-app.com"
	cd ios
	fastlane beta
	cd ..
elif [ "$1" == "android" ]; then
	./buildapk.sh
	cd android
	cp -f fastlane/Appfile.dev fastlane/Appfile 
	cp -f fastlane/Fastfile.dev fastlane/Fastfile
	fastlane beta
	cd ..
elif [ "$1" == "android2" ]; then
	./buildapk.sh api2
	cd android
	cp -f fastlane/Appfile.dev fastlane/Appfile 
	cp -f fastlane/Fastfile.dev fastlane/Fastfile
	fastlane beta
	cd ..
elif [ "$1" == "androidr" ]; then
	./buildapk.sh r
	cd android
	cp -f fastlane/Appfile.release fastlane/Appfile 
	cp -f fastlane/Fastfile.release fastlane/Fastfile
	fastlane beta
	cd ..
else
	echo "error"
fi
