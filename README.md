# weather_project

Simple weather app

## intro

This is a simple weather app built in approx. 4 hours as outlined in the dev take home project instructions.

Included is the ability to see the weather for today, the next 24 hours, and the next 7 days.

There was much more I wanted to like choosing location, harden things, add more significant testing etc. but ran out of time.

## running app

### apk
find the apk at this link, and drag and drop into emulator, or get it onto a physical device. (may need to enable unknown sources).
[apk file download](https://drive.google.com/file/d/1A3YlAY-m_1SPcraWddJG04QzvwBPzSck/view?usp=sharing)

This app can be ran in chrome or on android/ios.

### building
See Flutter's documentation for instructions for how to build the project.

> Flutter 3.16.7
> Tools • Dart 3.2.4 • DevTools 2.28.5

```sh
flutter run
```
will generally run it on available device while

```sh
flutter run -d chrome
```
will generally run it in chrome. 
For a better experience open the chrome dev tools and choose mobile device layout.


## testing
Make sure to have Flutter and Dart installed.

then run from the project root directory:
```sh
flutter test
```

