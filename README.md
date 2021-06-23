# flutter_boilerplate_starter

Hello all you flutter developers :-)

we at bytabo started this repository to provide a simple basic flutter boilerplate starter, which lets you get started very fast!
All the tools you need, without too much clutter
* minimalistic
* best practice

Included
* Router - just add your needed routes
* Provider - State management with a example app provider
* Http - Basic Http Service for REST APIs
* JSON Serialization - ready to use json serialization for auto generated interfaces
* Connectivity - with a ready to use connectivity provider
* Responsive Auto Sizing - which lets you scale height and width according to screen size
* Dart Linting with a analysis_options.yaml file
* App Icons & Splash Screen - replace the sample source files and generate everything automatically

## Getting Started

* install flutter on your machine
* open a emulator ios or android
* start the app with ```flutter run```

## JSON Serialization

* let it run one time `flutter pub run build_runner build --delete-conflicting-outputs`
* let it run with watcher `flutter pub run build_runner watch --delete-conflicting-outputs`

## App Icons + Splash Screen Creation
- To generate splash screens, place / update the source file `images/splash.png`, check the key `flutter_native_splash - color` in `pubspec.yaml` (should correspond to the hex background color in the splash screen image) and run `flutter pub run flutter_native_splash:create`
- To generate app icons, place / update the source files `images/app_icon_round.png` and `images/app_icon_square.png` and run `flutter pub run flutter_launcher_icons:main`

## Deployment

### iOS

- make sure that `Info.plist` contains the correct native API usage descriptions
- to be continued

### Android

- to be continued

## Authors

bytabo - Digital crew [https://www.bytabo.de](https://www.bytabo.de)

## Built With

- Flutter [https://flutter.dev/](https://flutter.dev/)
- Dart [https://dart.dev/](https://dart.dev/)