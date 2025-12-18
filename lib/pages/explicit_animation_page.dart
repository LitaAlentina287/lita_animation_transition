import 'package:flutter/material.dart';

class ExplicitAnimationPage extends StatefulWidget {
  const ExplicitAnimationPage({super.key});

  @override
  State<ExplicitAnimationPage> createState() => _ExplicitAnimationPageState();
}

class _ExplicitAnimationPageState extends State<ExplicitAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;
  late Animation<double> _opacityAnim;
  late Animation<Color?> _colorAnim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 900),
      vsync: this,
    );

    _scaleAnim = Tween<double>(
      begin: 0.7,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _opacityAnim = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);

    _colorAnim = ColorTween(
      begin: Colors.indigo,
      end: Colors.pinkAccent,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animation'),
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
            // 🎨 Background decoration
            Positioned(
              top: -40,
              left: -40,
              child: _decorCircle(160, Colors.white.withOpacity(0.1)),
            ),
            Positioned(
              bottom: -50,
              right: -50,
              child: _decorCircle(200, Colors.white.withOpacity(0.08)),
            ),

            // 🌟 MAIN CONTENT — FIXED CENTER
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _opacityAnim.value,
                        child: Transform.scale(
                          scale: _scaleAnim.value,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _colorAnim.value,
                              boxShadow: [
                                BoxShadow(
                                  color: _colorAnim.value!.withOpacity(0.5),
                                  blurRadius: 30,
                                  spreadRadius: 6,
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.hourglass_bottom,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Explicit Loading Animation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // 🎛 Control buttons
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 12,
                    runSpacing: 10,
                    children: [
                      _controlButton(
                        label: 'Forward',
                        icon: Icons.play_arrow,
                        onTap: () => _controller.forward(),
                      ),
                      _controlButton(
                        label: 'Reverse',
                        icon: Icons.undo,
                        onTap: () => _controller.reverse(),
                      ),
                      _controlButton(
                        label: 'Repeat',
                        icon: Icons.loop,
                        onTap: () => _controller.repeat(reverse: true),
                      ),
                      _controlButton(
                        label: 'Stop',
                        icon: Icons.stop,
                        onTap: () => _controller.stop(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🎨 Decorative circle
  Widget _decorCircle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  // 🎛 Control button
  Widget _controlButton({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.deepPurple,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 3,
      ),
    );
  }
}
