import 'package:flutter/material.dart';
import 'package:project_15/pages/home_page.dart';
import 'package:project_15/pages/orders_page.dart';
import 'package:project_15/screens/main_screen.dart';
import 'package:project_15/views/foods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomePage1(),
      routes: {
        HomePage1.id:(context)=>const HomePage1(),
        FoodsPage.id:(context)=>const FoodsPage(),
      },
    );
  }
}

