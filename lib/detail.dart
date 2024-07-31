import 'package:examecommerce/global.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        centerTitle: true,
        title: Text('Detail Page',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 450,
            decoration: BoxDecoration(color: Colors.blueGrey,image: DecorationImage(image: AssetImage(product[selectindex]['img']),)),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(product[selectindex]['name'],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
          ),
          Text('\$ ${product[selectindex]['price']} ⭐',
            style: TextStyle(
              fontSize: 22,
              color: Colors.red),),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 300,
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200),
                child: Text(product[selectindex]['detail'],
                  style: TextStyle(
                    fontSize: 18,),)),
          ),
          Column(
            children: [
              Container(
                height: 70,
                width: 250,
                decoration: BoxDecoration(color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
               child: GestureDetector(
                 onTap: (){
                   Navigator.of(context).pushNamed('/cart');
                   cart.add(selectindex);

                 },
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 45.0),
                       child: Center(
                         child: Text(
                         'Add To Cart',
                         style: TextStyle(
                             fontSize: 22,
                             color: Colors.white),
                       ),


                       ),
                     ),
                     Icon(Icons.card_travel_rounded,color: Colors.white,)
                   ],
                 ),
               ),
                


              ),


            ],
          )


        ],
      ),

    );
  }
}
