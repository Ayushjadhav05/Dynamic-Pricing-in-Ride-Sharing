import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride Sharing Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          double maxHeight = constraints.maxHeight;

          // Use a combination of width and height to calculate responsive sizes
          double baseSize = (maxWidth + maxHeight) / 2;

          double iconSize = baseSize * 0.2; // Adjust for proportion
          double buttonWidth = maxWidth * 0.5; // Button width relative to screen width
          double buttonHeight = baseSize * 0.06; // Button height relative to base size
          double buttonFontSize = baseSize * 0.02; // Font size relative to base size

          return Stack(
            children: [
              // Background Gradient
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.indigo],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              // Main Content Centered
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Centered Car Icon
                    CircleAvatar(
                      radius: iconSize / 1.5, // Dynamically sized
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.local_taxi,
                        color: Colors.blueAccent,
                        size: iconSize, // Dynamically sized
                      ),
                    ),
                    SizedBox(height: maxHeight * 0.05),
                    // "Book a Ride" Button
                    SizedBox(
                      width: buttonWidth, // Dynamically sized width
                      height: buttonHeight, // Dynamically sized height
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement functionality to book a ride
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.zero, // Remove additional padding
                        ),
                        child: Text(
                          'Book a Ride',
                          style: TextStyle(
                            fontSize: buttonFontSize, // Dynamically sized font
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Logout Button at Top-Right
              Positioned(
                top: 16,
                right: 16,
                child: IconButton(
                  onPressed: () {
                    // Implement logout functionality here
                  },
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Colors.redAccent,
                    size: 28,
                  ),
                ),
              ),
              // Bottom Navigation Bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: 'Profile',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                    ),
                  ],
                  currentIndex: 0,
                  selectedItemColor: Colors.blueAccent,
                  unselectedItemColor: const Color.fromARGB(255, 125, 125, 125),
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    // Handle navigation
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
