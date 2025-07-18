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
        return macos;
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
    apiKey: 'AIzaSyBx6ZWWs0TKJFGy3kjEpGKOzK3q_2lLEjc',
    appId: '1:1084223458001:web:0c98f058b74000a4a9d3f0',
    messagingSenderId: '1084223458001',
    projectId: 'localitylift',
    authDomain: 'localitylift.firebaseapp.com',
    storageBucket: 'localitylift.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5AONM1Uv7WhAqWDUpeljTaUPqA5n61Hs',
    appId: '1:1084223458001:android:92ee7707c64dae80a9d3f0',
    messagingSenderId: '1084223458001',
    projectId: 'localitylift',
    storageBucket: 'localitylift.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrrepQdK0xdq1K-P3WYQ7lgz0nLTv40Jc',
    appId: '1:1084223458001:ios:ae92482abdc4c847a9d3f0',
    messagingSenderId: '1084223458001',
    projectId: 'localitylift',
    storageBucket: 'localitylift.firebasestorage.app',
    iosBundleId: 'com.example.localitylift',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrrepQdK0xdq1K-P3WYQ7lgz0nLTv40Jc',
    appId: '1:1084223458001:ios:ae92482abdc4c847a9d3f0',
    messagingSenderId: '1084223458001',
    projectId: 'localitylift',
    storageBucket: 'localitylift.firebasestorage.app',
    iosBundleId: 'com.example.localitylift',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBx6ZWWs0TKJFGy3kjEpGKOzK3q_2lLEjc',
    appId: '1:1084223458001:web:950c843e91dd7137a9d3f0',
    messagingSenderId: '1084223458001',
    projectId: 'localitylift',
    authDomain: 'localitylift.firebaseapp.com',
    storageBucket: 'localitylift.firebasestorage.app',
  );
}
