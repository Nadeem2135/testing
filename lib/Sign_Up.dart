import 'package:flutter/material.dart';
import 'Header_Painter.dart';

class SignUpScreen extends StatelessWidget {
  final VoidCallback onToggle;
  const SignUpScreen({Key? key, required this.onToggle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Orange Top Banner Section
        Container(
          color: const Color(0xFFFF6600),
          width: double.infinity,
          height: 210,
          padding: const EdgeInsets.only(left: 32, top: 60, bottom: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Welcome',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              Text(
                'Sign Up',
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
                    const SizedBox(height: 28),
                    const Text(
                      'Number',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: '000-783-8768',
                        hintStyle: TextStyle(color: Colors.black54),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFFF6600))),
                        suffixIcon: Icon(Icons.check, color: Colors.green, size: 20),
                      ),
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Number', // Explicitly keeping visual text from image reference
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'North - South Plaza Center US',
                        hintStyle: TextStyle(color: Colors.black54),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFFF6600))),
                        suffixIcon: Icon(Icons.check, color: Colors.green, size: 20),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: ElevatedButton(
                        onPressed: onToggle,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF6600),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          elevation: 0,
                        ),
                        child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 24),
                    // OR Separator Layer
                    const Row(
                      children: [
                        Expanded(child: Divider(color: Colors.black12, thickness: 1)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text('OR', style: TextStyle(color: Colors.black26, fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                        Expanded(child: Divider(color: Colors.black12, thickness: 1)),
                      ],
                    ),
                    const SizedBox(height: 24),
                    // Social Media Integration Shortcuts
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIconButton(Icons.camera_alt_outlined), // Placeholder for Instagram
                        const SizedBox(width: 24),
                        _buildSocialIconButton(Icons.language), // Placeholder for Website/Dribbble
                        const SizedBox(width: 24),
                        _buildSocialIconButton(Icons.bolt), // Placeholder for Behance style
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

  Widget _buildSocialIconButton(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.black87, size: 22),
    );
  }
}
