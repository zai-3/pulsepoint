import 'package:flutter/material.dart';
import 'package:pulsepoint/login/login_page.dart';
import 'package:pulsepoint/signup/signup_page.dart';
import 'package:pulsepoint/home/home.dart';
import 'package:pulsepoint/home_screen/home_screen.dart';
import 'package:pulsepoint/welcome/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PulsePoint',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/': (context) =>
            const WelcomePage(), // This sets the HomeScreen as the initial route
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home_screen': (context) => const HomeScreen(),
        '/home': (context) => const HomePage(),
        //'/home': (context) => DonateBloodPage(),
      },
    );
  }
}
