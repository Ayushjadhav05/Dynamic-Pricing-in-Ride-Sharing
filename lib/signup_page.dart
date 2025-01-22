import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create an Account'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8, // 80% of the screen width
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sign Up Text
                Text(
                  'Create a New Account',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 20),

                // Name Field
                const Text(
                  'Full Name',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                FractionallySizedBox(
                  widthFactor: 0.8, // 80% of the parent width
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your full name',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),

                // Email Field
                const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                FractionallySizedBox(
                  widthFactor: 0.8, // 80% of the parent width
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),

                // Password Field
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                FractionallySizedBox(
                  widthFactor: 0.8, // 80% of the parent width
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 30),

                // Sign Up Button
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.5, // 50% of screen width
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 200, // Maximum width for the button
                      minWidth: 150, // Minimum width for the button
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle sign-up logic
                        print('Name: ${nameController.text}');
                        print('Email: ${emailController.text}');
                        print('Password: ${passwordController.text}');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15), // Adjust button height
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // Adjust text size
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
