import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      height: 250,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage('lib/assets/profile.jpg')),
            ),
          ),
          Text(
            "Ahsan Jawaid",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "ahsanjawaid4@gmail.com",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
  
        ],
      ),
    );
  }
}
