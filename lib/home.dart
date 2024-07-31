import 'package:examecommerce/global.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        centerTitle: true,
        title: Text('Toy Store',style: TextStyle(fontWeight: FontWeight.bold),),
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(

            children: List.generate(product.length, (index)=>  GestureDetector(
              onTap: (){
                selectindex=index;
                Navigator.of(context).pushNamed('/detail');
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage(product[index]['img']),fit: BoxFit.cover),),
                    ),
                  ),
                  Text(product[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  Text('\$ ${product[index]['price']} ⭐',style: TextStyle(fontSize: 18,color: Colors.red),),
                ],
              ),
            ),


            ),

          ),
        ),
      
    );
  }
}
