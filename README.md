# TestApp.io iOS SDK v1.0


[<img width="906" alt="Screen Shot 2022-12-04 at 12 02 06 AM" src="https://user-images.githubusercontent.com/3076722/205459311-e2de5d4d-19c9-448d-b048-3da35d9431bd.png">](https://help.testapp.io/about-sdk/)

About
=====

Looking to capture valuable feedback from within your app?

TestApp.io's in-app feedback tool is here to help! Easily record videos, capture screenshots, and add attachments from your device gallery. Annotate to highlight specific issues. And when you're ready, submit your feedback with device and app info to help improve the app before it's published to app stores.

It's the perfect tool for collecting early feedback from testers, friends, family, colleagues, clients, QA engineers, project managers, and others, allowing developers to identify and fix issues before releasing the app to a broader audience.

Ready to make your mark and help improve the app? Tap the recording button to capture your actions and any bugs or issues you encounter. When you see a problem you want to report, tap the end recording button to generate an instant replay of the last 30 seconds of footage.

While recording, you can also annotate or draw on the video to highlight specific areas of concern. And if you prefer to capture a still image, tap the screenshot button to capture a screenshot of your screen. Then use the annotation tools to highlight specific areas of concern or provide more context for the developer. If you have additional attachments you'd like to include with your feedback, such as images or documents from your device gallery, you can also add them.

All your recordings, screenshots, and attachments will be added to a draft for submission. When you're ready to send your feedback to the developer, tap the submit button to send your recordings, screenshots, attachments, device, app, network, CPU, and RAM information.

And if you want to keep your team in the loop, you can connect the app to Slack or Microsoft Teams to receive notifications about new feedback submissions.

With TestApp.io's in-app feedback tool, you can easily capture and share valuable feedback with the developer, helping to improve the app and provide a better experience for users before publishing it to app stores. So what are you waiting for? Start using TestApp.io's in-app feedback tool today and help make a difference in the quality of your app!


> Please note that TestApp.io's in-app feedback tool is designed for development environments only and is not intended for use in the store version of the app.

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

## Feedback & Support

Developers built [TestApp.io](https://testapp.io) to solve the pain of app distribution & feedback for mobile app development teams.

Join our [community](https://help.testapp.io/faq/join-our-community/) for feedback and support.

Check out our [Help Center](https://help.testapp.io/) for more info and other integrations.

Happy feedbacking 🎉




