import 'package:flutter/material.dart';

class ImplicitAnimationPage extends StatefulWidget {
  const ImplicitAnimationPage({super.key});

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Floating Orb'),
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
        child: Center(
          child: GestureDetector(
            onTap: () => setState(() => active = !active),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeInOutCubic,
                  width: active ? 200 : 120,
                  height: active ? 200 : 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(active ? 30 : 100),
                    gradient: LinearGradient(
                      colors: active
                          ? [Colors.pinkAccent, Colors.deepPurple]
                          : [Colors.white, Colors.white70],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: active
                            ? Colors.pinkAccent.withOpacity(0.6)
                            : Colors.white.withOpacity(0.4),
                        blurRadius: active ? 40 : 20,
                        spreadRadius: active ? 10 : 4,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.auto_awesome,
                    size: active ? 60 : 40,
                    color: active ? Colors.white : Colors.deepPurple,
                  ),
                ),
                const SizedBox(height: 30),

                AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: active ? 1 : 0,
                  child: const Text(
                    'Implicit Animation Active ✨',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                const Text(
                  'Tap the orb',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
