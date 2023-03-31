import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/carousel_slider.dart';
import 'package:test_app/home_page.dart';
import 'package:test_app/notificationScreen.dart';

import 'drawer_header.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List itemsList = [
    {
      "image": "lib/assets/img4.jpg",
      "name": "Ahsan Jawaid",
      "desc": "Hello world"
    },
    {
      "image": "lib/assets/img4.jpg",
      "name": "Zuabir Anees",
      "desc": "Hello world123"
    },
    {
      "image": "lib/assets/img4.jpg",
      "name": "Jahanzeeb Ahmed",
      "desc": "Hello world456"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        body: SingleChildScrollView(      
          child: Column(
            children: [
              const SizedBox(
                height: 230,
                width: double.infinity,
                child: SliderScreen(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Text(
                      "Recent Files",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: itemsList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset(
                          itemsList[index]['image'],
                          height: 80,
                          width: 80,
                        ),
                        title: Text(
                          itemsList[index]['name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text(
                          itemsList[index]['desc'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      
      );
  }
}
