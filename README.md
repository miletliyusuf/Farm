## Project Descriptions

It's a farm project which will include different type of animals as a frameworks. 

### Folder Description of Individual Animal

- {Animal_Name}
-- outputs
---- {Animal_Name}-iphoneos.xcarchive {Animal_Name}-iphonesimulator.xcarchive {Animal_Name}.xcframework 

## Settings before starting

- Build libraries for distrubition setted to YES. For the ABI stability. Which means different swift versions supports.
- Mach O type is Dynamic Library. Means => Dynamic -> Compile Time / Static -> Run Time.

Basically, we should have 2 builded archives. One for simulators and other for devices. We will need XCFramework to use them together

## CREATING XCArchive

# For Devices 

xcodebuild archive \
-scheme Dogs \
-archivePath ~/Developer/Personal/FrameworkPractice/Dogs/Dogs-iphoneos.xcarchive \
-sdk iphoneos \
SKIP_INSTALL=NO

# For Simulators

xcodebuild archive \
-scheme Dogs \
-archivePath ~/Developer/Personal/FrameworkPractice/Dogs/Dogs-iphonesimulator.xcarchive \
-sdk iphonesimulator \
SKIP_INSTALL=NO

## Creating XCFramework

xcodebuild -create-xcframework \
-framework Dogs-iphonesimulator.xcarchive/Products/Library/Frameworks/Dogs.framework \
-framework Dogs-iphoneos.xcarchive/Products/Library/Frameworks/Dogs.framework \
-output Dogs.xcframework
