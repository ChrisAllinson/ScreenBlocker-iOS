# ScreenBlocker-iOS

v1.0.0


<br>


## Description

ScreenBlocker-iOS adds an overlay to your app when it is backgrounded, masking the content.

The overlay fades out once your app is foregrounded again.


<br>


## Installation

[CocoaPods](http://cocoapods.org)

`pod 'ScreenBlocker-iOS', '1.0.0'`

[Carthage](https://github.com/Carthage/Carthage)

... coming soon ...

[Swift Pacakage Manager](https://swift.org/package-manager/)

... coming soon ...


<br>


## How To Use

Simply import ScreenBlocker-iOS in AppDelegate:
<br>
`import ScreenBlocker_iOS`

Add the following to AppDelegate's applicationWillResignActive:
<br>
`ScreenBlocker.shared.show()`
<br>
or
<br>
`ScreenBlocker.shared.show(bgColor: UIColor.someColor)`

Add the following to AppDelegate's applicationDidBecomeActive:
<br>
`ScreenBlocker.shared.hide()`


<br>


## License

[EULA](ScreenBlocker/libs/screen%20blocker/LICENSE)


<br>


## Copyright

All content © Christopher James Allinson 2018. All Rights Reserved.
