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
    apiKey: 'AIzaSyBwlOBqlaxS_-Zu9w6bUFKXKP6aXDTx_qQ',
    appId: '1:848007844737:web:3e3566ca789baf898ace80',
    messagingSenderId: '848007844737',
    projectId: 'ven-app-task',
    authDomain: 'ven-app-task.firebaseapp.com',
    storageBucket: 'ven-app-task.appspot.com',
    measurementId: 'G-S4SMEFTP69',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1BxkuIHxVJohxdihaxMkO49DNDbQ0mgM',
    appId: '1:848007844737:android:90c4bbf23a1833968ace80',
    messagingSenderId: '848007844737',
    projectId: 'ven-app-task',
    storageBucket: 'ven-app-task.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_o6W-N4L5LIiAUvyQuwpOK7QL7s5C09c',
    appId: '1:848007844737:ios:c0f38fbc4be07dd58ace80',
    messagingSenderId: '848007844737',
    projectId: 'ven-app-task',
    storageBucket: 'ven-app-task.appspot.com',
    androidClientId: '848007844737-ocpp79tls5dgeike44q07tl5latio4c2.apps.googleusercontent.com',
    iosClientId: '848007844737-lsb9p1hjet5sggtijd9dn83nfh6nne3j.apps.googleusercontent.com',
    iosBundleId: 'com.example.managementTaksApps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_o6W-N4L5LIiAUvyQuwpOK7QL7s5C09c',
    appId: '1:848007844737:ios:c0f38fbc4be07dd58ace80',
    messagingSenderId: '848007844737',
    projectId: 'ven-app-task',
    storageBucket: 'ven-app-task.appspot.com',
    androidClientId: '848007844737-ocpp79tls5dgeike44q07tl5latio4c2.apps.googleusercontent.com',
    iosClientId: '848007844737-lsb9p1hjet5sggtijd9dn83nfh6nne3j.apps.googleusercontent.com',
    iosBundleId: 'com.example.managementTaksApps',
  );
}
