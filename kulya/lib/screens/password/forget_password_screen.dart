import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Esqueceu a senha?',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Digite o e-mail associado a conta e, nós enviaremos um e-mail com instruções para reconfigurar a senha',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const SizedBox(
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'E-mail ou Numero de telefone',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      /* Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Recta(),
                        ),
                      ); */
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fixedSize: const Size.fromHeight(48),
                    ),
                    child: const Text(
                      'Enviar',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
