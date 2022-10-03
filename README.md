# TestApp.io iOS SDK v1.0

Setup
=====

  

#### Swift package manager:

```plain
https://github.com/testappio/ios-sdk.git
```

#### Cocoapods:

```ruby
pod 'TestAppIODSK', :git => 'https://github.com/testappio/ios-sdk.git'
```

  

Required fields in Info.plist file:
-----------------------------------

TestApp.io SDK requires access to camera roll, to save and get screen recordings and images.

Add these fields to Info.plist if you don't have them already:

```plain
NSPhotoLibraryUsageDescription
NSPhotoLibraryAddUsageDescription
```

Usage:
------

### Launching the SDK:

#### Pre iOS 13:

```swift
TestAppio.setup(
  configuration: .init(
    appId: "<APP ID>",
    apiToken: "<API TOKEN>",
    userId: "<USER ID>"
  )
)
```

#### iOS 13 and up:

```swift
TestAppio.setup(
  scene: windowScene,
  configuration: .init(
    appId: "<TestApp.io APP ID>",
    apiToken: "<TestApp.io API TOKEN>",
    userId: "<YOUR USER ID>"
  )
)
```

> Collect `appId` and `apiToken` from your app page at [https://portal.testapp.io/apps](https://portal.testapp.io/apps?action=select-for-integrations)
  

### Identifying the user:

If the user identity has changed after you initialise the sdk, you can use `identify` method

```swift
TestAppio.identify(
  userId: "<YOUR USER ID>",
  completion: errorHandler
)
```

  

### Hiding/Showing the sdk overlay:

```swift
TestAppio.show()
TestAppio.hide()
```
