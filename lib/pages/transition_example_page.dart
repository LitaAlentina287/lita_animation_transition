import 'package:flutter/material.dart';

class TransitionExamplePage extends StatelessWidget {
  const TransitionExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Transition'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4B5EFC), Color(0xFF7B4CFD), Color(0xFFB24CFD)],
          ),
        ),
        child: Stack(
          children: [
            // 🎨 Decorative circles
            Positioned(
              top: -60,
              right: -60,
              child: _decorCircle(200, Colors.white.withOpacity(0.08)),
            ),
            Positioned(
              bottom: -40,
              left: -40,
              child: _decorCircle(160, Colors.white.withOpacity(0.1)),
            ),

            // 🌟 Main Content (CENTER)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon animation preview
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.withOpacity(0.4),
                          blurRadius: 30,
                          spreadRadius: 6,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.swap_horiz_rounded,
                      size: 60,
                      color: Colors.deepPurple,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'Custom Slide Transition',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Navigate with smooth animation',
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 35),

                  // 🚀 Transition Button
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/interactive');
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Go to Interactive Animation'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🎨 Decorative circle widget
  Widget _decorCircle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
