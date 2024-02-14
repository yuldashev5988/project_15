import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  static const String id = "orders_screen";

  OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List imagesList2 = [
    "assets/images/pizza.png",
    "assets/images/burgerKing.jpg",
    "assets/images/fruit.png",
    "assets/images/pizza.png",
    "assets/images/burgerKing.jpg",
    "assets/images/fruit.png",
    "assets/images/pizza.png",
    "assets/images/burgerKing.jpg",
    "assets/images/fruit.png",
  ];
  List textList2 = [
    "Hamburger Lovers",
    "Fried Spicy Chicken Wings",
    "Tuna Salad",
    "Hamburger Lovers",
    "Fried Spicy Chicken Wings",
    "Tuna Salad",
    "Hamburger Lovers",
    "Fried Spicy Chicken Wings",
    "Tuna Salad",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My orders",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cancel,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
          child: ListView(
        children: [
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: 500,
              itemBuilder: (BuildContext context, int index) {
                return _productOrder(
                  imageUrl2: imagesList2[index],
                  price2: 15 + index * 1.4,
                  likes2: 70 + index * 5,
                  text2: textList2[index],
                );
              },
            ),
          ),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Discount code"),
                      Expanded(child: Container()),
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffF3F8FE),
                        ),
                        child: const Center(
                          child: Text(
                            "Enter or choose a code",
                            style: TextStyle(color: Colors.grey,fontSize:15,fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      Expanded(child: Container()),
                      const Text(
                        "\$179.4",
                        style: TextStyle(color: Colors.orange, fontSize: 25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                        child: const Center(
                            child: Text(
                          "Checkout",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget _productOrder({
    required String imageUrl2,
    required double price2,
    required int likes2,
    required String text2,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: 60,
                  width: 60,
                  image: AssetImage(imageUrl2),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                "${text2}",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text("999+"),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "|",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text("${likes2}"),
                ],
              ),
              Text(
                "\$${price2}",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_circle,
                        color: Color(0xffC9C9C9),
                      )),
                  Text("01"),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle,
                        color: Colors.orange,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
