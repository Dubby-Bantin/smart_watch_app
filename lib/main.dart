import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_watch_app/models/cart_model.dart';
import 'package:smart_watch_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
      ),
      home: const SplashScreen(),
    );
  }
}
