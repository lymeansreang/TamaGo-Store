// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAFWj4pg32mCdEfkh5oO3YwB58zDEiR5_c',
    appId: '1:846412471261:web:a04dd756b4b71327153434',
    messagingSenderId: '846412471261',
    projectId: 'tamagoapp-49312',
    authDomain: 'tamagoapp-49312.firebaseapp.com',
    storageBucket: 'tamagoapp-49312.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCikPBH5H0oL17gDZNM-lD_gEbVOk9-Fgc',
    appId: '1:846412471261:android:f18d40390e6760a3153434',
    messagingSenderId: '846412471261',
    projectId: 'tamagoapp-49312',
    storageBucket: 'tamagoapp-49312.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1Cmg9ytC1LHgfOwbic26iuJBRJA_-kbM',
    appId: '1:846412471261:ios:22a94c9af5a1363f153434',
    messagingSenderId: '846412471261',
    projectId: 'tamagoapp-49312',
    storageBucket: 'tamagoapp-49312.appspot.com',
    iosBundleId: 'com.example.tamagoStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAFWj4pg32mCdEfkh5oO3YwB58zDEiR5_c',
    appId: '1:846412471261:web:5a7bd8d302fcaa0d153434',
    messagingSenderId: '846412471261',
    projectId: 'tamagoapp-49312',
    authDomain: 'tamagoapp-49312.firebaseapp.com',
    storageBucket: 'tamagoapp-49312.appspot.com',
  );
}
