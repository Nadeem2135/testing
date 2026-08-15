import 'package:flutter/material.dart';
import 'Header_Painter.dart';

class SignInScreen extends StatelessWidget {
  final VoidCallback onToggle;
  const SignInScreen({Key? key, military, required this.onToggle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Orange Top Banner Section
        Container(
          color: const Color(0xFFFF6600),
          width: double.infinity,
          height: 240,
          padding: const EdgeInsets.only(left: 32, top: 60, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.network(
                    'https://unsplash.com',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Welcome',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // Curved White Form Container
        Expanded(
          child: CustomPaint(
            painter: HeaderPainter(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 50, 32, 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'hello@fintory.com',
                        hintStyle: TextStyle(color: Colors.black54),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFFF6600))),
                        suffixIcon: Icon(Icons.check, color: Colors.green, size: 20),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Colors.black26),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFFF6600))),
                        suffixIcon: Icon(Icons.visibility_off_outlined, color: Colors.black26, size: 20),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF6600),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          elevation: 0,
                        ),
                        child: const Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 48),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? ", style: TextStyle(color: Colors.black38)),
                        GestureDetector(
                          onTap: onToggle,
                          child: const Text("Sign Up", style: TextStyle(color: Color(0xFFFF6600), fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
