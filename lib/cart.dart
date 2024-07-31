import 'package:examecommerce/global.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        centerTitle: true,
        title: Text('CartPage',
          style: TextStyle(
              fontWeight: FontWeight.bold),),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: List.generate(cart.length, (index)=>  Container(
          height: 120,
          width: 450,
          decoration: BoxDecoration(color: Colors.blueGrey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage(product[index]['img']),fit: BoxFit.cover)),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          '\$ ${product[index]['price']} ⭐',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      cart.removeAt(index);
                    });
                  },
                  child: Icon(
                      Icons.delete),
                ),

              ],
            ),
          ),
        ), ),

        ),

    );
  }
}
