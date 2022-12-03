# TestApp.io iOS SDK v1.0

![3](https://user-images.githubusercontent.com/3076722/205459311-e2de5d4d-19c9-448d-b048-3da35d9431bd.png)

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
    appId: "<TestApp.io APP ID>",
    apiToken: "<TestApp.io API TOKEN>",
    userId: "<USER ID>"
  )
)
```

#### iOS 13 and up:

```swift
TestAppio.setup(
  scene: windowScene,
  configuration: .init(
    appId: "<TestApp.io APP_ID>",
    apiToken: "<TestApp.io API_TOKEN>",
    userId: "<YOUR USER ID>"
  )
)
```

> Collect `App_ID` and `API_Token` from your app page at [https://portal.testapp.io/apps](https://portal.testapp.io/apps?action=select-for-integrations)
  

### Identifying the user:

If the user identity has changed after you initialise the sdk, you can use `identify` method

```swift
TestAppio.identify(
  userId: "<YOUR USER ID>", //from your db
  name:  "<YOUR USER NAME>", //from your db or user fills it
  email:  "<YOUR USER EMAIL>", //from your db or user fills it
  traits: ["<KEY>": "<VALUE>"], //from your db or app [Optional]
  completion: errorHandler
)
```

Example:
```swift
TestAppio.identify(
  userId: "1",
  name: "Joe Doe",
  email: "joe@doe.com",
  traits: ["role": "iOS Developer", "verified": "true", "level": "10"],
  completion: { _ in }
        )
```

### Control the SDK overlay:

```swift
TestAppio.show()
TestAppio.hide()
```


----------
<img width="906" alt="Screen Shot 2022-12-04 at 12 02 06 AM" src="https://user-images.githubusercontent.com/3076722/205459620-2f0642a2-3167-4279-9846-779af735f427.png">


