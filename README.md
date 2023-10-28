# ddns4cdn-aio [![wakatime](https://wakatime.com/badge/github/jat001/ddns4cdn-aio.svg)](https://wakatime.com/@Jat/projects/wizbxbpacr)

## Development

This project focuses on using VS Code as an IDE for development on all platforms. No Android Studio, Xcode, or other IDE required.

### Flutter

```shell
# Windows
scoop install extra/flutter
# macOS
brew install flutter
# Arch Linux
yay flutter
```

For Chinese users, you can set the following environment variables to speed up the download of Flutter SDK and Dart packages.

```shell
export FLUTTER_STORAGE_BASE_URL='https://storage.flutter-io.cn'
export PUB_HOSTED_URL='https://pub.flutter-io.cn'
```

```shell
cd src
flutter pub get
```

### Windows

```shell
cd src/windows
```

### macOS

```shell
# Install necessary tools.
brew install xcodegen cocoapods
# Optional: install linter and formatter
# if you want to contribute to this project.
brew install swiftlint swiftformat
```

```shell
cd src/macos
# Generate Runner.xcodeproj, check project.yml for details.
xcodegen generate
# Optional: flutter will run this command automatically
# when you run `flutter run` or `flutter build`.
pod install
# `pod install` will generate Runner.xcworkspace automatically.
# But if you did not run `pod install`, you must create it manually
# because flutter will check its existence before running `pod install`.
mkdir Runner.xcworkspace
```

### Linux

```shell
cd src/linux
```

### Android

1. Install your preferred Java SDK. This project uses the latest Oracle JDK. Do not forget to set the `JAVA_HOME` environment variable.

   ```shell
   # Windows
   scoop install java/oraclejdk
   # scoop will set JAVA_HOME automatically
   $env:JAVA_HOME = $env:USERPROFILE + '\scoop\apps\oraclejdk\current'
   # macOS
   brew install oracle-jdk
   export JAVA_HOME="$(/usr/libexec/java_home)"
   # Arch Linux
   yay jdk
   export JAVA_HOME='/usr/lib/jvm/java-jdk21'
   ```

2. Install Android command line tools and set the `ANDROID_HOME` environment variable.

   ```shell
   # Windows
   scoop install main/android-clt
   # scoop will set ANDROID_HOME automatically
   $env:ANDROID_HOME = $env:USERPROFILE + '\scoop\apps\android-clt\current'
   # macOS
   brew install android-commandlinetools
   export ANDROID_HOME='/usr/local/share/android-commandlinetools'
   # Arch Linux
   yay android-sdk-cmdline-tools-latest
   export ANDROID_HOME='/opt/android-sdk'
   ```

3. Install Gradle.

   ```shell
   # Windows
   scoop install main/gradle
   # macOS
   brew install --ignore-dependencies gradle
   # Arch Linux
   sudo pacman -S gradle
   ```

4. Build

   ```shell
   cd src/android
   gradle wrapper
   gradle build
   ```

### iOS

```shell
cd src/ios
```
