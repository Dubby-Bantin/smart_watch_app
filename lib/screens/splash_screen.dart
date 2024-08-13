import 'package:flutter/material.dart';
import 'package:smart_watch_app/screens/home.dart';
import 'package:get/get.dart';

import '../constants/button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            margin: const EdgeInsets.only(top: 0.0, left: 24.0, right: 24.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 200.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  // Adjust the radius as needed
                  child: Image.asset(
                    "assets/images/products-sp-m (1).jpg",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.cover, // Adjust the fit as needed
                  ),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  "TOP BRANDS WATCH \n FOR THE REAL GENTLEMEN ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 40.0),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const HomeScreen(),
                        transition: Transition.fade,
                        duration: const Duration(seconds: 1));
                  },
                  child: const ButtonWidget(
                    text: "Get Started",
                  ),
                )
              ],
            )));
  }
}
