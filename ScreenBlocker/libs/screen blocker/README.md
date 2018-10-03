# ScreenBlocker-iOS

v1.0.0


<br>


## Description

ScreenBlocker-iOS adds an overlay to your app when it is backgrounded, masking the content.

The overlay fades out once your app is foregrounded again.


<br>


## How To Use

Simply add the following to AppDelegate ...

applicationWillResignActive:
`ScreenBlocker.shared.show()`
or (with setting the overlay's background color):
`ScreenBlocker.shared.show(bgColor: UIColor.someColor)`

applicationDidBecomeActive:
`ScreenBlocker.shared.hide()`


<br>


## License

[EULA](LICENSE)


<br>


## Copyright

All content © Christopher James Allinson 2018. All Rights Reserved.
