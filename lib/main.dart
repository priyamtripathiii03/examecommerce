import 'package:examecommerce/home.dart';
import 'package:flutter/material.dart';
import 'package:examecommerce/splash.dart';
import 'package:examecommerce/detail.dart';
import 'package:examecommerce/cart.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=>SplashScreen(),
        '/home': (context)=>HomePage(),
        '/detail': (context)=>DetailPage(),
        '/cart': (context)=>CartPage(),


      },
    );
  }
}
