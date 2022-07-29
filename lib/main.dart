import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_firebase/app/app_module.dart';
import 'package:flutter_todo_firebase/app/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
