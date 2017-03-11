# Pre-work - TipCal

TipCal is a tip calculator application for iOS.

Submitted by: Eric W Johnson

Time spent: 6 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Replaced segmented controller with Slider to allow user to select a range of tip percentage


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/EAqq3sV.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

Being primarily a Windows OS user I found getting around in Xcode a little cumberson. The more I used it the easier it got.  I did run into some runtime errors that occurred when I tried to edit code directly.  This was usually fixed by undoing what I had done using command-Z.  I also ran into a runtime error using the uiSwitch.  My original intention was to use the switch to toggle between the segmented control and slider implementation.  I kept getting a runtime error on the setOn method, possibly due to a view lifecycle issue.  After googling for a while and trying some of the suggested fixes I decided to go with the slider only solution.  Hopefully, if I get into the class I can get some good instruction on debugging runtime errors in Xcode.

## License

    Copyright [2017] [Eric W Johnson]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
