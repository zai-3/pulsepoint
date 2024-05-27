import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45, // Takes 40% of the screen height
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome_img.png"),
                  fit: BoxFit.cover, // Ensures it covers the full container
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "PulsePoint",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  const Text(
                    "\"Where every drop counts. Join us in saving lives today!\"",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacing before the buttons
                  ElevatedButton(
                    onPressed: () {}, // Implement navigation to login
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {}, // Implement navigation to signup
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Signup"),
                  ),
                  const SizedBox(height: 50), // Spacing at the bottom
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
