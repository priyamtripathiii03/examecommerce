import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/home');
          },
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 400.0),
                  child: Center(
                    child: Container(
                      height: 200,
                      width: 200 ,
                      decoration: BoxDecoration(color: Colors.red,
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/img/logo.jpg'),fit: BoxFit.cover),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The Toy Store',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
                )
              ],
            ),
          ),


        ),
      ),
    );
  }
}
