import 'package:flutter/material.dart';

import 'details_screen.dart';

class ColdCoffee extends StatelessWidget {
  const ColdCoffee({super.key});

  final List<Map<String, dynamic>> coffees = const [
    {
      "name": "Iced Latte",
      "price": "\$14",
      "image":
      "https://images.unsplash.com/photo-1517701604599-bb29b565090c",
    },
    {
      "name": "Iced Americano",
      "price": "\$12",
      "image":
      "https://images.ctfassets.net/v601h1fyjgba/1vlXSpBbgUo9yLzh71tnOT/a1afdbe54a383d064576b5e628035f04/Iced_Americano.jpg",
    },
    {
      "name": "Frappuccino",
      "price": "\$18",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShZhX3Ztdj_kSIYw372v0CsLoQE3PinvRM4A&s",
    },
    {
      "name": "Cold Brew",
      "price": "\$16",
      "image":
      "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2Farchive%2F9eada0d203bfb580d801b478edd553465c7afb52",
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
                        color: Colors.lightBlueAccent,
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
                        backgroundColor: Colors.lightBlueAccent,
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