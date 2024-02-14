import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:iconly/iconly.dart';
import 'package:project_15/pages/home_page.dart';
import 'package:project_15/screens/main_screen.dart';
import 'package:project_15/views/foods.dart';

class OrdersPage extends StatefulWidget {
  static const String id = 'orders_page';
  String? imagePath;
  String? text1;
  String? text2;
  double? rating;

  OrdersPage(
      {required this.imagePath,
      required this.text1,
      required this.text2,
      required this.rating,
      super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  int page = 1;
  int productCount = 0;
  List imagesList = [
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
  List textList = [
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
            ],
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${widget.imagePath}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Food Order Restaurant",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      const Icon(
                        IconlyBold.location,
                        color: Colors.grey,
                        size: 17,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${widget.text1}',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Icon(
                        IconlyLight.time_circle,
                        color: Colors.grey,
                        size: 17,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "${widget.text2}",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "(${widget.rating}) - 1220 Reviews",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 70,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF3F8FE)),
                      child: const Text(
                        "Order",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF3F8FE)),
                      child: const Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = 3;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF3F8FE)),
                      child: const Text(
                        "Information",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
          ),
          //order page == 1
          if (page == 1)
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _page1(
                    imageUrl1: imagesList[index],
                    price: 15 + index * 1.4,
                    likes: 70 + index * 5,
                    text: textList[index],
                  );
                },
                childCount: imagesList.length,
              ),
            ),
          // review page ==2
          if (page == 2)
            SliverToBoxAdapter(
              child: _page2(),
            ),
          // information page == 3
          if (page == 3)
            SliverToBoxAdapter(
              child: _page3(),
            ),
        ],
      ),
      floatingActionButton: productCount > 0
          ? Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.orange,
              ),
              child: Stack(
                children: [
                 const  Center(
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15,left: 22),
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        productCount.toString(),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : SizedBox(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget _page1({
    required String imageUrl1,
    required double price,
    required int likes,
    required String text,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 15),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              height: 60,
              width: 60,
              image: AssetImage(imageUrl1),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Text(
                "${text}",
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
                  Text("${likes}"),
                ],
              ),
              Text(
                "\$${price}",
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {
                setState(() {
                  productCount++;
                });
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.orange,
              ))
        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          Image(
            height: 60,
            width: 60,
            image: AssetImage("assets/images/burgerKing.jpg"),
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Text("Avesome  Restaurant"),
              const SizedBox(
                height: 5,
              ),
              const Text("Delivery is frees for you"),
            ],
          )
        ],
      ),
    );
  }

  Widget _page3() {
    return Text("lsbhvifrgevbi vievievvvnsvieevbevibeievivbv veivev ev");
  }
}
/*ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/burgerKing.jpg"),
              fit: BoxFit.cover,
            )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, FoodsPage.id);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Food Order Restaurant",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Icon(
                  IconlyBold.location,
                  color: Colors.grey,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "78th Street. 88 W 21th,NY",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Icon(
                  IconlyLight.time_circle,
                  color: Colors.grey,
                  size: 17,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Open  7:00-21:00",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
               const  Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              const   SizedBox(
                  width: 4,
                ),
                Text(
                  "(${widget.rating}) - 1220 Reviews",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            padding: EdgeInsets.only(left: 25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" one pressed");
                      page == 1;
                    });
                  },
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Order",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" two pressed");

                      page = 2;
                    });
                  },
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Review",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      log(" third pressed");

                      page = 3;
                    });
                  }

                  ,
                  child: Container(
                    padding:const  EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF3F8FE)
                    ),
                    child: const Text(
                      "Information",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
               ],
            ),
          ),
          if(page == 1 )
            _page1(imageUrl1: 'assets/images/pizza.png'),
          if(page == 2 )
            _page2(),
          if(page == 3 )
            _page3(imageUrl3: 'assets/images/burger.png'),
        ],
      )*/
