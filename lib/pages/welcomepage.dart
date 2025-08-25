
import 'package:flutter/material.dart';
import 'package:loginpage/pages/loginpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("Images/image.png")),

          Center(
            child: Column(
              children: [
                SizedBox(height: height * 0.4),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "Enter Your Details",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(height: height * 0.40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 150, 146, 158),
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}