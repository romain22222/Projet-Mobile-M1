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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnbbuNwHlMrFCie6qxVbXiindC9zDFjhs',
    appId: '1:260774635370:android:495e412decb022f4b0a713',
    messagingSenderId: '260774635370',
    projectId: 'projet-flutter-m1',
    databaseURL: 'https://projet-flutter-m1-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'projet-flutter-m1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBpxUdkAequUc531FBkieM6omNrz9-3-o',
    appId: '1:260774635370:ios:93d79c658a7f2726b0a713',
    messagingSenderId: '260774635370',
    projectId: 'projet-flutter-m1',
    databaseURL: 'https://projet-flutter-m1-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'projet-flutter-m1.appspot.com',
    iosClientId: '260774635370-q1muq6rr3alshuds6c7ueobj8tcdkqvj.apps.googleusercontent.com',
    iosBundleId: 'com.example.projetMobileM1',
  );
}