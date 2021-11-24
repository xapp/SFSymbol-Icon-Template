# SFSymbol Icon Template (iOS 15)

![SFSymbol-Icon](https://user-images.githubusercontent.com/7535389/143172026-72f7de0a-5713-4887-b099-5ef141e3351a.png)


iOS 15 adds support for using custom SF Symbols for setting custom SF Symbol icon for 

While SF Symbols are supported by iOS, this is a special template which produces 32pt 1:1 pixel perfect SF 

While iOS 15 allows to use any custom SF Symbols, this template produces a perfect 32pt icon. Typically is limited to 24pt.

### Supports:
* iOS Action Extension
* Quick Action (UIApplicationShortcutIcon)
* TabBar icon (UITabBarItem)


### Template
- Sketch File: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/Sketch/SFSymbol-Icon.sketch
- Sketch Workspace Link: https://www.sketch.com/s/0806fd05-6f85-4ade-bb4a-d4171dbf6893
- SVG Link: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/SVG/symbol.icon.svg
- Figma: is not supported. Template requires fully transparent element to hold 32pt size, Figma removes it during export ¯\_(ツ)_/¯.

### How to use Template:
1. Open template in Sketch.
2. Replace "Icon" with your icon.
3. Export icon in SVG format.


### How to add icon to Xcode
1. In Xcode, select Assets file > + > "Symbol Image Set" > add exported icon.
2. Press "+" > "Symbol Image Set"
3. Add exported icon.



### Setup: iOS Action Extension
Add properties to Info.plist.

File link: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/InfoPlist/ActionExtension_Info.plist
<img width="716" alt="ActionExtension_InfoPlist" src="https://user-images.githubusercontent.com/7535389/143162528-8409e516-bbf5-4b08-83d3-645d8ddcdcb3.png">





### Setup: Quick Action Shortcut
A) Dynamically:
```
UIApplicationShortcutItem(type: Action.dynamicIcon.rawValue,
                                  localizedTitle: "SFSymbol Icon (Dynamic)",
                                  localizedSubtitle: nil,
                                  icon: UIApplicationShortcutIcon(templateImageName: "symbol.icon"),
                                  userInfo: nil)
```

B) Statically, add properties to Info.plist, note: use "UIApplicationShortcutItemIconFile" key instead of "UIApplicationShortcutItemIconSymbolName"

File link: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/InfoPlist/QuickAction_ShortcutItem_Info.plist
<img width="716" alt="QuickAction_InfoPlist" src="https://user-images.githubusercontent.com/7535389/143162523-45a6a850-dbe0-44f8-a8f6-eed35ea1a939.png">


### Setup: TabBar Icon
A) Set icon in Storyboard

B) Set image property of tabBarItem:
```
UITabBarItem(title: "Dynamic",
                                      image: UIImage(imageLiteralResourceName: "symbol.icon"),
                                      selectedImage: UIImage(imageLiteralResourceName: "symbol.icon"))
```
