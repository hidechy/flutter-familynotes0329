import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class FirebaseCoreService {
  Future<FirebaseApp> initializeApp();

  FirebaseOptions getFirebaseOptions(FirebaseApp firebaseApp);
}

class FirebaseCoreServiceImpl implements FirebaseCoreService {
  const FirebaseCoreServiceImpl();

  @override
  Future<FirebaseApp> initializeApp() async {
    try {
      return await Firebase.initializeApp();
    } on FirebaseException catch (error) {
      debugPrint(error.message);
      return Firebase.app();
    }
  }

  @override
  FirebaseOptions getFirebaseOptions(FirebaseApp firebaseApp) {
    if (Platform.isIOS || Platform.isMacOS) {
      return FirebaseOptions(
        apiKey: firebaseApp.options.apiKey,
        appId: firebaseApp.options.appId,
        messagingSenderId: firebaseApp.options.messagingSenderId,
        projectId: firebaseApp.options.projectId,
        databaseURL: firebaseApp.options.databaseURL,
        storageBucket: firebaseApp.options.storageBucket,
        iosBundleId: firebaseApp.options.iosBundleId,
        iosClientId: firebaseApp.options.iosClientId,
      );
    } else {
      // Android
      return FirebaseOptions(
        apiKey: firebaseApp.options.apiKey,
        appId: firebaseApp.options.appId,
        messagingSenderId: firebaseApp.options.messagingSenderId,
        projectId: firebaseApp.options.projectId,
        databaseURL: firebaseApp.options.databaseURL,
        storageBucket: firebaseApp.options.storageBucket,
        androidClientId: firebaseApp.options.androidClientId,
      );
    }
  }
}
