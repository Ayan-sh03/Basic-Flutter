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
    apiKey: 'AIzaSyBR2n_rJPD4gcU52insj-QK-as-PQPooXw',
    appId: '1:772438724416:web:cb55923faa980e8eda34a5',
    messagingSenderId: '772438724416',
    projectId: 'wall-84ca7',
    authDomain: 'wall-84ca7.firebaseapp.com',
    storageBucket: 'wall-84ca7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB01t4QbxDSgB9Jxf_mLHEU3POn1hmPAYk',
    appId: '1:772438724416:android:e8b02165396a72b6da34a5',
    messagingSenderId: '772438724416',
    projectId: 'wall-84ca7',
    storageBucket: 'wall-84ca7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcNGYzf6nhoHrk_y_wHSRj38NG-pU3Zts',
    appId: '1:772438724416:ios:3abb0b3b94d0002dda34a5',
    messagingSenderId: '772438724416',
    projectId: 'wall-84ca7',
    storageBucket: 'wall-84ca7.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcNGYzf6nhoHrk_y_wHSRj38NG-pU3Zts',
    appId: '1:772438724416:ios:9bd8266fad7eee2cda34a5',
    messagingSenderId: '772438724416',
    projectId: 'wall-84ca7',
    storageBucket: 'wall-84ca7.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
