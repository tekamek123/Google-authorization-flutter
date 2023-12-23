// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDSZkY4dsFNYHjmOoJro6t-36SzSO4GXmE',
    appId: '1:580189561020:web:d27851fa1770da77db70b9',
    messagingSenderId: '580189561020',
    projectId: 'authtutorial-35f1f',
    authDomain: 'authtutorial-35f1f.firebaseapp.com',
    storageBucket: 'authtutorial-35f1f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0e-r682s76u9GOuRROABwYrx-KWXimRw',
    appId: '1:580189561020:android:ca3b2c0d816271b3db70b9',
    messagingSenderId: '580189561020',
    projectId: 'authtutorial-35f1f',
    storageBucket: 'authtutorial-35f1f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCa8QvHaNRXLzfP8Bkza4eIHfBhvuvhDjE',
    appId: '1:580189561020:ios:8330889ce702b36fdb70b9',
    messagingSenderId: '580189561020',
    projectId: 'authtutorial-35f1f',
    storageBucket: 'authtutorial-35f1f.appspot.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCa8QvHaNRXLzfP8Bkza4eIHfBhvuvhDjE',
    appId: '1:580189561020:ios:021945389692df0fdb70b9',
    messagingSenderId: '580189561020',
    projectId: 'authtutorial-35f1f',
    storageBucket: 'authtutorial-35f1f.appspot.com',
    iosBundleId: 'com.example.auth.RunnerTests',
  );
}
