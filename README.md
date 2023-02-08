# TestApp.io iOS SDK v1.0

[![Watch the video](https://user-images.githubusercontent.com/3076722/217676152-06c1e157-cf59-4d46-86aa-1712f9d70e8e.png)](https://testapp.io/feedback)

About
=====

Looking to capture valuable feedback from within your app?

TestApp.io's in-app feedback tool is here to help! Easily record videos, capture screenshots, and add attachments from your device gallery. Annotate to highlight specific issues. And when you're ready, submit your feedback with device and app info to help improve the app before it's published to app stores.

> Please note that TestApp.io's in-app feedback tool is designed for development environments only and is not intended for use in the store version of the app.


More information: https://testapp.io/feedback and https://help.testapp.io/about-sdk/


Screenshots
=====

![1](https://user-images.githubusercontent.com/3076722/209127920-8f97c341-04fc-462c-9c39-cd777ab0928c.svg)
![2](https://user-images.githubusercontent.com/3076722/209127994-fe804ea9-b568-4366-8fba-f9fc5598b7bf.svg)
![3](https://user-images.githubusercontent.com/3076722/209128011-2a89017d-c34a-4732-bfe8-474d695fafeb.svg)
![4](https://user-images.githubusercontent.com/3076722/209128048-b652b6c9-0dc0-434c-ae6e-b91de4984132.svg)
![5](https://user-images.githubusercontent.com/3076722/209128075-4fcd3d82-2f01-4c94-a116-024fb7316085.svg)
![6](https://user-images.githubusercontent.com/3076722/209128083-8f90bc00-5093-4021-8d0d-6d0406ec5610.svg)


Setup
=====

  

#### Swift package manager:

```plain
https://github.com/testappio/ios-sdk.git
```

#### Cocoapods:

```ruby
pod 'TestAppIOSDK', :git => 'https://github.com/testappio/ios-sdk.git'
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

```swift
TestAppio.setup(
  scene: windowScene,
  configuration: .init(
    appId: "<TestApp.io APP_ID>",
    apiToken: "<TestApp.io API_TOKEN>"
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

### Log custom events and errors to the SDK:

```swift
TestAppio.log(event: Event)

//exapmple

TestAppio.log(
  event: .init(
    name: "UIViewController.didAppear", 
    parameters: ["screen": "UserDetails", "userId": "123456"]
  )
)
```

----------

## Feedback & Support

Developers built [TestApp.io](https://testapp.io) to solve the pain of app distribution & feedback for mobile app development teams.

Join our [community](https://help.testapp.io/faq/join-our-community/) for feedback and support.

Check out our [Help Center](https://help.testapp.io/) for more info and other integrations.

Happy feedbacking 🎉




