# SFSymbol Icon Template (iOS 15)

![SFSymbol-Icon](https://user-images.githubusercontent.com/7535389/143172026-72f7de0a-5713-4887-b099-5ef141e3351a.png)

SFSymbol Icon Template produces a 32pt icon, which can be used for: 

- iOS Action Extension (iOS 15 only);
- Quick Action (UIApplicationShortcutIcon);
- TabBar (UITabBarItem).

While any custom SF Symbol is supported by iOS 15, this template contains special "Guides", which make  icon size is limited to 24pt and might be drawn in low



## Template
- Sketch File: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/Sketch/SFSymbol-Icon.sketch
- Sketch Workspace Link: https://www.sketch.com/s/0806fd05-6f85-4ade-bb4a-d4171dbf6893
- SVG: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/SVG/symbol.icon.svg
- Figma is not supported. Template requires a fully transparent element to hold a 32pt size, Figma removes it during export ¯\\_(ツ)_/¯.


## How to use Template:
1. Open template in Sketch;
2. Replace "Icon" with your icon;
3. Export icon in SVG format.


## How to add icon to Xcode
1. In Xcode, select Assets file;
2. Press "+" > "Symbol Image Set";
3. Add exported icon.



## Setup: iOS Action Extension
Add properties to Info.plist of Action Extension:

File link: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/InfoPlist/ActionExtension_Info.plist
<img width="716" alt="ActionExtension_InfoPlist" src="https://user-images.githubusercontent.com/7535389/143162528-8409e516-bbf5-4b08-83d3-645d8ddcdcb3.png">



## Setup: Quick Action Shortcut
a) Dynamically:
```
UIApplicationShortcutItem(type: Action.dynamicIcon.rawValue,
                          localizedTitle: "SFSymbol Icon (Dynamic)",
                          localizedSubtitle: nil,
                          icon: UIApplicationShortcutIcon(templateImageName: "symbol.icon"),
                          userInfo: nil)
```

b) Statically, add properties to Info.plist, note: use "UIApplicationShortcutItemIconFile" key instead of "UIApplicationShortcutItemIconSymbolName"

File link: https://github.com/xapp/SFSymbol-Icon-Template/blob/main/InfoPlist/QuickAction_ShortcutItem_Info.plist
<img width="716" alt="QuickAction_InfoPlist" src="https://user-images.githubusercontent.com/7535389/143162523-45a6a850-dbe0-44f8-a8f6-eed35ea1a939.png">


## Setup: TabBar Icon
a) Set icon in Storyboard;

b) Set image property of tabBarItem:
```
UITabBarItem(title: "Dynamic",
             image: UIImage(imageLiteralResourceName: "symbol.icon"),
             selectedImage: UIImage(imageLiteralResourceName: "symbol.icon"))
```


# Sponsor
Download X.app: https://apps.apple.com/app/apple-store/id1533525753?pt=119131575&ct=SFSymbol-Icon-Github-Sponsor&mt=8
