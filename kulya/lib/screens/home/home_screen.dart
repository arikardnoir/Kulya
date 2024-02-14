import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int numberOfRows = 1;
  int cardsPerRow = 6;
  int _currentIndex = 0;

  final List<String> cardData = [
    'Fast Food',
    'Dessert',
    'Pizza',
    'Spaghetti',
    'Meat',
    'Pincho',
    'Fish n Chips',
  ];

  final List<String> restaurants = [
    'Prato Quente',
    'Oliver n Pete',
    'Panela de Barro',
    'Mamma mia',
    'Meet the Dish',
    'Mamã Kwiba',
    'Temperado',
  ];

  List<String> restaurantImages = [
    'assets/images/food/restaurants/restaurant1.jpg',
    'assets/images/food/restaurants/restaurant2.jpg',
    'assets/images/food/restaurants/restaurant3.jpg',
    'assets/images/food/restaurants/restaurant4.jpg',
    'assets/images/food/restaurants/restaurant5.jpg',
    'assets/images/food/restaurants/restaurant6.jpg',
  ];

  List<String> imagesForRow = [
    'assets/images/food/categories/image1.jpg',
    'assets/images/food/categories/image2.jpg',
    'assets/images/food/categories/image3.jpg',
    'assets/images/food/categories/image4.jpg',
    'assets/images/food/categories/image5.jpg',
    'assets/images/food/categories/image6.jpg',
    // Add more image paths as needed
  ];

  final List<Item> foodItems = [
    Item(name: 'X Burguer', price: 19.99),
    Item(name: 'Flower Cake', price: 29.99),
    Item(name: 'Pizza', price: 79.99),
    Item(name: 'Spaghetti ', price: 9.99),
    Item(name: 'Meat n Great', price: 59.99),
    Item(name: 'Espetadas', price: 99.99),
    // Adicione mais itens conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
              ),
              height: MediaQuery.of(context).size.height * 0.04,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0,
                  ),
                  hintStyle: const TextStyle(fontSize: 14.0),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 212, 211, 211),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.05,
                    ),
                    borderSide: const BorderSide(
                      color: Colors.white, // Set border color to white
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.05,
                    ),
                    borderSide: const BorderSide(
                      color: Colors.white, // Set border color to white
                    ),
                  ),
                  suffixIcon: const Icon(Icons.search),
                ),
                cursorColor: Colors.black,
                cursorHeight: 15.0,
                onChanged: (value) {
                  // Lógica de pesquisa
                },
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Lógica para o ícone de notificações
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              const SizedBox(
                width: 10.0,
              ),
              const Text(
                'Categorias',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 230.0,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Ver mais',
                  style: TextStyle(fontSize: 12.0, color: Colors.red),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 3.0,
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.width * 0.2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/food/categories/image${index + 1}.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      cardData[index],
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5, // Add this line
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 3.0,
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/food/promotions/promotion${index + 1}.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  'Comidas Populares', // Change this with the appropriate title
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Ver mais',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.red),
                                    textAlign: TextAlign.end,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.3 +
                                150.0, // Adjust the height as needed
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cardsPerRow,
                              itemExtent:
                                  MediaQuery.of(context).size.width * 0.5,
                              shrinkWrap: true,
                              itemBuilder: (context, cardIndex) {
                                return SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Column(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        elevation: 3.0,
                                        margin: const EdgeInsets.all(8.0),
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                child: Image.asset(
                                                  imagesForRow[cardIndex],
                                                  fit: BoxFit.cover,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    foodItems[cardIndex].name,
                                                    style: const TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '\$${foodItems[cardIndex].price.toString()}',
                                                    style: const TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize:
                                                  12.0, // Adjust the size as needed
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.red,
                                              ),
                                              onRatingUpdate: (rating) {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  'Restaurantes Populares', // Change this with the appropriate title
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Ver mais',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.red),
                                    textAlign: TextAlign.end,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.3 +
                                150.0, // Adjust the height as needed
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cardsPerRow,
                              itemExtent:
                                  MediaQuery.of(context).size.width * 0.5,
                              shrinkWrap: true,
                              itemBuilder: (context, cardIndex) {
                                return SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Column(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        elevation: 3.0,
                                        margin: const EdgeInsets.all(8.0),
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                child: Image.asset(
                                                  restaurantImages[cardIndex],
                                                  fit: BoxFit.cover,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    restaurants[cardIndex],
                                                    style: const TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize:
                                                  12.0, // Adjust the size as needed
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.red,
                                              ),
                                              onRatingUpdate: (rating) {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _buildNavItem('assets/icons/home_icon.png', 0),
          _buildNavItem('assets/icons/app_icon.png', 1),
          _buildNavItem('assets/icons/favs_icon.png', 2),
          _buildNavItem('assets/icons/bag_icon.png', 3),
          _buildNavItem('assets/icons/user_icon.png', 4),
        ],
        unselectedItemColor: const Color.fromARGB(255, 73, 72, 72),
        selectedItemColor: Colors.red,
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String imagePath, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          color: _currentIndex == index ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(
              24.0), // Ajuste o raio da borda conforme necessário
        ),
        padding: const EdgeInsets.all(
            12.0), // Ajuste o preenchimento conforme necessário
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.white,
            _currentIndex == index ? BlendMode.srcIn : BlendMode.dst,
          ),
          child: Image.asset(
            imagePath,
            width: 24.0,
            height: 24.0,
          ),
        ),
      ),
      label: '',
    );
  }
}

class Item {
  final String name;
  final double price;

  Item({
    required this.name,
    required this.price,
  });
}
