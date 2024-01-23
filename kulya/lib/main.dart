import 'package:flutter/material.dart';
import 'package:kulya/screens/start/delivered_screen.dart';
import 'package:kulya/screens/start/delivery_screen.dart';
import 'package:kulya/screens/start/flavour_screen.dart';
import 'package:kulya/screens/start/logo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/logo',
        routes: {
          '/logo': (context) => const LogoScreen(),
          '/flavour': (context) => const FlavourScreen(),
          '/delivery': (context) => const DeliveryScreen(),
          '/delivered': (context) => const DeliveredScreen(),
        });
  }
}
