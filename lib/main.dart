import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_bording/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding")??false;
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff388175), // Set any color you want here
    statusBarIconBrightness: Brightness.light, // Set to Brightness.dark for dark icons
  ));
  runApp( MyApp(onboarding: onboarding));
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

