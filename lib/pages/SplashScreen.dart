import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/cover.png",
              height: 350,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "Welcome to ShopAppV2",
                style: TextStyle(
                  color: Color(0xFF00A368),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 35),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "homePage");
              },
              child: Ink(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF00A368),
                ),
                child: const Text(
                  "Start Buying Here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
