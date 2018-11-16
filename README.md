# SKJProgressHUD

[![CI Status](https://img.shields.io/travis/sahik.joshi@gmail.com/SKJProgressHUD.svg?style=flat)](https://travis-ci.org/sahik.joshi@gmail.com/SKJProgressHUD)
[![Version](https://img.shields.io/cocoapods/v/SKJProgressHUD.svg?style=flat)](https://cocoapods.org/pods/SKJProgressHUD)
[![License](https://img.shields.io/cocoapods/l/SKJProgressHUD.svg?style=flat)](https://cocoapods.org/pods/SKJProgressHUD)
[![Platform](https://img.shields.io/cocoapods/p/SKJProgressHUD.svg?style=flat)](https://cocoapods.org/pods/SKJProgressHUD)

SJProgressHUD is a light-weight, highly customizable progress HUD for iOS projects. It has been written based on Singleton Design Pattern.

## Preview
<img src="https://raw.githubusercontent.com/sahijoshi/SJProgressHUD/master/Assets/ProgressHud.gif" width="285"/>


## Requirements

- Supported build target - iOS 11+
- Xcode 9 or later
- Supported language Swift 3

## Installation

SJProgressHUD is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SJProgressHUD'
```
## Usage
SJProgressHUD is created as a Singleton. So, you don't need to explicitly allocate or instantiate. You can just call methods of SJProgressHUD as SJProgressHUD.someMethod.

#### Show SJProgressHUD
You can show progress hud with or without status. You can explicitly choose background color and provide mask type.
```bash
SJProgressHUD.show()
SJProgressHUD.show(withStatus: "Loading...", style: .gray, mask: .dark)
```
The alert message can also be shown providing delay time to dismiss the progress hud. The alert message can be shown with or without options button. The usage of closure makes the code clean and easier to handle the action returned after tapping option buttons.
```bash
SJProgressHUD.showAlertMessage(withTitle: "Title", message: "messages", delay: 3, mask: .dark) SKJProgressHUD.showAlertMessageWithOptions(message: "Are you sure you want to log out?", maskType:.dark, okAction: { (ok) in
            // ok action
            if ok {
                SKJProgressHUD.dismiss()
                print("perform action after ok")
            }
        }) { (cancel) in
            // close action
            if cancel {
                SKJProgressHUD.dismiss()
                print("perform action after cancel")
            }
}

```

You can show progress of certain events by displaying progress bar.
```bash
SJProgressHUD.showProgressBar("Downloading", totalCount: 10000, mask: .dark)

// Simple example to assign progress of progress bar

DispatchQueue.global(qos: .background).async {
            for progress in 1...10000 {
                DispatchQueue.main.sync {
                    SKJProgressHUD.sharedInstance.progressValue = progress
                }
            }
}

```

#### Dismiss SJProgressHUD
To dismiss progress hud. Just call

```bash
SJProgressHUD.dismiss()
```

## License

SJProgressHUD is available under the MIT license. See the LICENSE file for more info.

