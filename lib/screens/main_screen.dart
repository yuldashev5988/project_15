import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project_15/views/cakes.dart';
import 'package:project_15/views/drinks.dart';
import 'package:project_15/views/foods.dart';
import 'package:project_15/views/snakes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 5, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                width: _width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      prefixIcon: Icon(IconlyLight.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(IconlyLight.location),
                  SizedBox(
                    width: 5,
                  ),
                  Text("9 West 46th Street, New York City")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonsTabBar(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                radius: 10,
                height: 65,
                backgroundColor: Colors.orange,
                labelSpacing: 4,

                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                // Add your tabs here
                tabs: [
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: const Center(
                              child: Icon(
                            Icons.local_drink,
                            size: 40,
                          )),
                        ),
                        Text("Drinks")
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: const Center(
                            child: Icon(
                              Icons.fastfood,
                              size: 40,
                            ),
                          ),
                        ),
                        Text("Foods")
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: const Center(
                              child: Icon(
                            Icons.cake_outlined,
                            size: 40,
                          )),
                        ),
                        const Text("Cake")
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: const Center(
                              child: Icon(
                            Icons.emoji_food_beverage_rounded,
                            size: 40,
                          )),
                        ),
                        const Text("Snake")
                      ],
                    ),
                  ),
                ],
              ),
             const  Expanded(
                child: TabBarView(
                  children: [
                    DrinksPage(),
                    FoodsPage(),
                    CakesPage(),
                    SnakesPage(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
