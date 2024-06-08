import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {

  // TODO: Add Widget Binding
  // TODO: Init Local Storage
  // TODO: Await Native Splash
  // TODO: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  // .then((FirebaseApp value) => Get.put(AuthenticationRepository()))
  // TODO: Initialize Authentication

  runApp(const App());

}

