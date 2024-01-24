import 'package:flutter/material.dart';
import 'package:kulya/screens/password/new_password_screen.dart';

class CheckSmsScreen extends StatefulWidget {
  const CheckSmsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CheckSmsScreenState createState() => _CheckSmsScreenState();
}

class _CheckSmsScreenState extends State<CheckSmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(constraints.maxWidth * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10.0),
                  Image.asset(
                    'assets/images/numbercheck.jpg',
                    height: constraints.maxHeight * 0.3,
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Verifique o seu telefone',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Digite o código que enviamos no seu telefone',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para o primeiro botão
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('3'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para o segundo botão
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('7'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para o terceiro botão
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('9'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para o quarto botão
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Text('4'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 0),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Reenviar SMS',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 180),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const NewPasswordScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Verificar',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
