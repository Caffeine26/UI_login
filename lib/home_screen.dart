import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tp2/login_screen.dart'; // Import the login screen for log out

class HomeScreen extends StatefulWidget {
  final String userName;
  final bool isNewUser;

  const HomeScreen({super.key, required this.isNewUser, required this.userName});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display welcome message based on user type
            Text(
              widget.isNewUser
                  ? 'Welcome to our new user, ${widget.userName}!' // New user greeting
                  : 'Welcome back, ${widget.userName}!', // Returning user greeting
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Log out button
            ElevatedButton(
              onPressed: () async {
                // Log out logic (for example, clear user data)
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('userName');
                prefs.remove('isNewUser');
                // Navigate back to the login screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text(
                'Log Out',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
