## Cucumber Appium Android ##

This project demonstrates BDD tests automated on an Android device powered by Cucumber and Appium

This project comes with:
 - a test app (based on Google's get started app)
 - example feature files

Prerequisites: (This has been tested on the following system)
 - Mac OSX 10.8.5
 --- with $ANDROID_HOME environment variable set pointing to your android SDK
 - Android
 --- Android SDK 22.2.1
 --- Ant Version 1.8.4
 --- adb 1.0.31
 - Ruby 1.9.3
 --- with bundler gem (gem install bundler)
 - Appium 0.10.1
 - An Android Device (Nexus 4 Android Version 4.3)

Steps:
 - Connect Android device then start the Appium server
    CMD$ adb devices
    CMD$ appium &

 - Build the App/APK
    CMD$ cd AndroidTestApp
    CMD$ android update project --subprojects --target "android-18" --path .
    CMD$ ant clean debug
    CMD$ cd ..
 
  - Run the BDD tests
    CMD$ bundle install
    CMD$ bundle exec cucumber

