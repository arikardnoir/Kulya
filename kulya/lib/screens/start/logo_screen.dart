import 'package:flutter/material.dart';
import 'package:kulya/screens/start/flavour_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> with TickerProviderStateMixin {
  /*  late AnimationController _controller;
  late Animation<double> _fadeAnimation; */

  @override
  void initState() {
    super.initState();
    /*  _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
 */
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const FlavourScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    /* _controller.dispose(); */
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo.jpg',
          width: 240.0,
          height: 200.0,
        ),
      ),
    );
  }
}
