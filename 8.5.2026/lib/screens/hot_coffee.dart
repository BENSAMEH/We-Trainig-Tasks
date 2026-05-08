import 'package:flutter/material.dart';

import 'details_screen.dart';

class HotCoffee extends StatelessWidget {
  const HotCoffee({super.key});

  final List<Map<String, dynamic>> coffees = const [
    {
      "name": "Latte",
      "price": "\$12",
      "image":
      "https://www.foodandwine.com/thmb/CCe2JUHfjCQ44L0YTbCu97ukUzA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Partners-Latte-FT-BLOG0523-09569880de524fe487831d95184495cc.jpg",
    },
    {
      "name": "Espresso",
      "price": "\$10",
      "image":
      "https://images.unsplash.com/photo-1521302080334-4bebac2763a6",
    },
    {
      "name": "Cappuccino",
      "price": "\$15",
      "image":
      "https://images.unsplash.com/photo-1509042239860-f550ce710b93",
    },
    {
      "name": "Mocha",
      "price": "\$18",
      "image":
      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/mocha-001-8301418.jpg?quality=90&resize=440,400",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: coffees.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  name: coffees[index]["name"],
                  price: coffees[index]["price"],
                  image: coffees[index]["image"],
                ),
              ),
            );
          },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff2B2A2A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Image.network(
                        coffees[index]["image"],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      coffees[index]["name"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      coffees[index]["price"],
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
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