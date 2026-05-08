import 'package:flutter/material.dart';

import 'details_screen.dart';

class DessertsCoffee extends StatelessWidget {
  const DessertsCoffee({super.key});

  final List<Map<String, dynamic>> desserts = const [
    {
      "name": "Chocolate Cake",
      "price": "\$20",
      "image":
      "https://scientificallysweet.com/wp-content/uploads/2025/08/IMG_1580-best-moist-chocolate-cake-feature.jpg",
    },
    {
      "name": "Cheesecake",
      "price": "\$18",
      "image":
      "https://images.ninelife.io/products/HAB0B2K8DYZ5/1_81L9ewj0l4L_desktop.webp",
    },
    {
      "name": "Brownie",
      "price": "\$15",
      "image":
      "https://images.unsplash.com/photo-1606313564200-e75d5e30476c",
    },
    {
      "name": "Ice Cream",
      "price": "\$12",
      "image":
      "https://images.unsplash.com/photo-1501443762994-82bd5dace89a",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: desserts.length,
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
                  name: desserts[index]["name"],
                  price: desserts[index]["price"],
                  image: desserts[index]["image"],
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
                        desserts[index]["image"],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      desserts[index]["name"],
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
                      desserts[index]["price"],
                      style: const TextStyle(
                        color: Colors.pinkAccent,
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
                        backgroundColor: Colors.pinkAccent,
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