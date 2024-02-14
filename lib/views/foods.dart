import 'package:flutter/material.dart';
import 'package:project_15/pages/orders_page.dart';

class FoodsPage extends StatefulWidget {
  static const String id = "foods_page";

  const FoodsPage({super.key});

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _foods(),
    );
  }

  Widget _foods() {
    return ListView(
      children: [
        const Text(
          "Food Menu",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade100,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/burger.png"),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Burger",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/pizza.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pizza",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/bbq.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BBQ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/fruit.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fruit",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/sushi.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sushi",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/noodle.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Noodle",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              "Near Me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(child: Container()),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See all",
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ],
        ),
        _restaurants(
            typeFood: "Burger",
            imagePath: "assets/images/burgerKing.jpg",
            text1: "78th Street.88 W 21th St,NY",
            text2: "Open 07:00 - 21:00",
            rating: 4.9),
       const  SizedBox(
          height: 15,
        ),
        _restaurants(
            typeFood: "Big burger",
            imagePath: "assets/images/burger.webp",
            text1: "Tashkent c. Karatash.st ",
            text2: "Open 08:00 - 23:00",
            rating: 4.1),
       const  SizedBox(
          height: 15,
        ),
        _restaurants(
            typeFood: "Burger",
            imagePath: "assets/images/burgerKing.jpg",
            text1: "78th Street.88 W 21th St,NY",
            text2: "Open 07:00 - 21:00",
            rating: 4.9),
       const  SizedBox(
          height: 15,
        ),
        _restaurants(
            typeFood: "Big burger",
            imagePath: "assets/images/burger.webp",
            text1: "Tashkent c. Karatash.st ",
            text2: "Open 08:00 - 23:00",
            rating: 4.1)
      ],
    );
  }

  Widget _restaurants({
    required String typeFood,
    required String imagePath,
    required String text1,
    required String text2,
    required double rating,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OrdersPage(
                      imagePath: imagePath,
                      rating: rating,
                      text1: text1,
                      text2: text2,
                    )));
      },
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  height: 60,
                  width: 60,
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Text("Avesome $typeFood Restaurant"),
                const SizedBox(
                  height: 5,
                ),
                const Text("Delivery is free for you"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
