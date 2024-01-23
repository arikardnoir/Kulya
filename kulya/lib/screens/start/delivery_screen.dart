import 'package:flutter/material.dart';
import 'package:kulya/screens/start/delivered_screen.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Builder(
        builder: (context) {
          return Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      'assets/images/delivery.jpg',
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                  ),
                ),
                const Text(
                  'Kulya possui uma rede \nde entrega expressa',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Entrega fácil, rápida e segura dos melhores restaurantes perto de ti.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                elevation: MaterialStatePropertyAll(0.0),
              ),
              child: const Text('Pular'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DeliveredScreen(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                elevation: MaterialStatePropertyAll(0.0),
              ),
              child: const Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeliveryScreen(),
    ),
  );
}
