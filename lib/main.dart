import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride Sharing App'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          double maxHeight = constraints.maxHeight;

          return SingleChildScrollView(
            child: Container(
              height: maxHeight,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.indigo],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // App Logo
                      CircleAvatar(
                        radius: maxWidth * 0.07, // Adjusted for responsiveness
                        backgroundColor: Colors.white.withOpacity(0.5),
                        child: Icon(
                          Icons.directions_car,
                          color: Colors.blueAccent,
                          size: maxWidth * 0.08, // Adjusted for responsiveness
                        ),
                      ),
                      SizedBox(height: maxHeight * 0.04),

                      // Welcome Text
                      Text(
                        'Welcome to Ride Sharing App',
                        style: TextStyle(
                          fontSize: maxWidth * 0.05, // Smaller font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: maxHeight * 0.02),

                      // Subtitle Text
                      Text(
                        'Choose an option below to get started.',
                        style: TextStyle(
                          fontSize: maxWidth * 0.035, // Smaller font size
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: maxHeight * 0.04),

                      // Login Button
                      SizedBox(
                        width: maxWidth * 0.6, // 60% of screen width
                        height: maxHeight * 0.06, // 6% of screen height
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 250, // Maximum width for the button
                            minWidth: 150, // Minimum width for the button
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: maxWidth * 0.025, // Smaller font size
                              ),
                            ),
                            child: const Text('Login'),
                          ),
                        ),
                      ),
                      SizedBox(height: maxHeight * 0.02),

                      // Sign-Up Button
                      SizedBox(
                        width: maxWidth * 0.6, // 60% of screen width
                        height: maxHeight * 0.06, // 6% of screen height
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 250, // Maximum width for the button
                            minWidth: 150, // Minimum width for the button
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: maxWidth * 0.025, // Smaller font size
                              ),
                            ), 
                            child: const Text('Sign Up'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
