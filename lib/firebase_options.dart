// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDszxBftTbwuSGxSAgAIIjvJ-sjD499Th8',
    appId: '1:867846054388:web:147a922e23c12ed2ee59a1',
    messagingSenderId: '867846054388',
    projectId: 'troy-ox-street',
    authDomain: 'troy-ox-street.firebaseapp.com',
    storageBucket: 'troy-ox-street.appspot.com',
    measurementId: 'G-C72S62YN78',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEGMczzTJ1GUXiBrjZG9VNmOetvG-9MUM',
    appId: '1:867846054388:android:b87b4c94effca11bee59a1',
    messagingSenderId: '867846054388',
    projectId: 'troy-ox-street',
    storageBucket: 'troy-ox-street.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeu1z59xNn4nNItzvB6NGVq-GTPeCoDP0',
    appId: '1:867846054388:ios:d79d753d3c70e89aee59a1',
    messagingSenderId: '867846054388',
    projectId: 'troy-ox-street',
    storageBucket: 'troy-ox-street.appspot.com',
    iosClientId: '867846054388-pfpaov7sv1kc8m12ahunt0d0lvnukjup.apps.googleusercontent.com',
    iosBundleId: 'com.troylee.oxstreet',
  );
}
