import 'package:flutter/material.dart';
import 'package:kulya/screens/start/delivery_screen.dart';

class FlavourScreen extends StatelessWidget {
  const FlavourScreen({super.key});

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
                      'assets/images/chef.jpg',
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Explore um universo \nde sabores',
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
                    'Essa é uma plataforma com acesso a diversos restaurantes, onde poderás encontrar sabores excelentes e experiências surpreendentes.',
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
                    builder: (context) => const DeliveryScreen(),
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
      home: FlavourScreen(),
    ),
  );
}
