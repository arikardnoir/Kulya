import 'package:flutter/material.dart';
import 'package:kulya/screens/password/reset_password_screen.dart';

class CheckEmailScreen extends StatefulWidget {
  const CheckEmailScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CheckEmailScreenState createState() => _CheckEmailScreenState();
}

class _CheckEmailScreenState extends State<CheckEmailScreen> {
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
                    'assets/images/emailcheck.jpg',
                    height: constraints.maxHeight * 0.3,
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Verifique o seu e-mail',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Enviamos as instruções de recuperação de senha no teu email',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20.0),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Abrir o e-mail',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Pular! Confirmarei mais tarde',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Não recebeu o e-mail? Verifique spam ou',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'tente outro e-mail',
                          style: TextStyle(fontSize: 10.0, color: Colors.red),
                        ),
                      ),
                    ],
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
