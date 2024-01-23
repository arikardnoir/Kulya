import 'package:flutter/material.dart';
import 'package:kulya/screens/start/slide_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SlideScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              width: 240.0,
              height: 200.0,
            ),
            const SizedBox(
                height: 16.0), // Espaçamento entre a imagem e o texto
            const Text(
              'Kulya',
              style: TextStyle(
                color: Colors.red,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
