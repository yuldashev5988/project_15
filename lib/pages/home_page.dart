import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project_15/screens/bookmark_screen.dart';
import 'package:project_15/screens/main_screen.dart';
import 'package:project_15/screens/orders_screen.dart';
import 'package:project_15/screens/profile_screen.dart';

class HomePage1 extends StatefulWidget {
  static const String id = "home_page";

  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: pageController,
          children:  [MainScreen(),
          OrdersScreen(),BookmarkScreen(),ProfileScreen(),],
          onPageChanged: (int index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(
              () {
                selectedIndex = index;
                pageController.animateToPage(index,
                    duration: const Duration(
                      microseconds: 200,
                    ),
                    curve: Curves.bounceOut);
              },
            );
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyBold.home,
                  color: Colors.orange,
                ),
                backgroundColor: Colors.white,
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined, color: Colors.orange),
                backgroundColor: Colors.white,
                label: "Order"),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline, color: Colors.orange),
              label: "My List",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile, color: Colors.orange),
              label: "Profile",
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
