import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:dots_indicator/dots_indicator.dart';
import 'package:kulya/screens/home/home_screen.dart';
import 'package:kulya/screens/sign/sign_up_screen.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SlideScreenState createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            children: [
              buildSlide(
                'assets/images/chef.jpg',
                'Explore um universo \nde sabores',
                'Essa é uma plataforma com acesso a diversos restaurantes, onde poderás encontrar sabores excelentes e experiências surpreendentes.',
              ),
              buildSlide(
                'assets/images/delivery.jpg',
                'Kulya possui uma rede \nde entrega expressa',
                'Entrega fácil, rápida e segura dos melhores restaurantes perto de ti.',
              ),
              buildSlide(
                'assets/images/delivered.jpg',
                'Chegou o entregador,\n finalmente!',
                'Podes escolher o calendário de entregas, se não quiseres perder nehuma refeição.',
              ),
              // Adicione mais slides conforme necessário
            ],
          ),
          Positioned(
            bottom: 20,
            child: DotsIndicator(
              dotsCount: 3, // Número total de slides
              position: _currentPage.toInt(), // Converter para int
              decorator: const DotsDecorator(
                color: Colors.grey, // Cor dos pontos não selecionados
                activeColor: Colors.red, // Cor do ponto selecionado
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                elevation: MaterialStatePropertyAll(0.0),
              ),
              child: const Text('Pular'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_currentPage == 2) {
                  // Se estiver na última página, navegue para a nova tela
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                } else {
                  // Caso contrário, vá para a próxima página do slide
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
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

  Widget buildSlide(String imagePath, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              imagePath,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlideScreen(),
    ),
  );
}
