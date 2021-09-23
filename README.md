# Nightshift

This Safari extension enables dark-mode on websites.

![preview](https://i.imgur.com/rX5letn.png)


## Overview

This extension utilizes the CSS [filter](https://developer.mozilla.org/en-US/docs/Web/CSS/filter)
property. It inverts the whole page, then invertes back images and videos. Due to the double invert, some colors may be inaccurate.

You can enable or disable dark mode on a per site basis.


## Download

You can donwload the app in the [macOS AppStore](https://apps.apple.com/us/app/nightshift-dark-mode/id1561604170).


## Build and Debug

Build and run the "Nightshift Extension" target in Xcode. When prompted "Choose app to run", select Safari.

In Safari, enable the developer menu at -> Preferences -> Extended -> enable "Show Develop menu in menu bar".

In menu "Develop", enable "Allow Unsigned Extensions".

Enable the extension in Safari at -> Preferences -> Extensions -> enable the checkbox next to "Nighshift" in the left column.

For more information, see [Building a Safari App Extension](https://developer.apple.com/documentation/safariservices/safari_app_extensions/building_a_safari_app_extension)
