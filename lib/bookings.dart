import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 50),
          child: Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                // padding: EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          // height: 150,
                          width: 90,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: currentIndex == index ? Colors.purple : Colors.grey[400],
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withOpacity(0.2),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(10, 10)),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                "Tue",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Ongoing",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                    itemCount: itemsList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text("9 AM"),
                                  SizedBox(height: 10,),
                                  Text("10 AM"),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                              ListTile(
                              // leading: Image.asset(
                              // itemsList[index]['image'],
                              // height: 80,
                              // width: 80,
                              //),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              tileColor: Colors.primaries[index].withOpacity(0.5),
                              title: Text(
                              itemsList[index]['name'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                  itemsList[index]['desc'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 17),
                                      ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Container(
                                  height: 20,
                                  width: 35,
                                  child: Stack(
                                    children: [
                                       ClipOval(
                                         child: Image.asset(
                                                                     itemsList[index]['image'],
                                                                     height: 20,
                                                                     width: 20,),
                                       ),
                              Positioned(
                              right: 5,
                              top: 0,
                      
                              child:  ClipOval(
                                child: Image.asset(
                                itemsList[index]['image'],
                                height: 20,
                                width: 20,),
                              ),)
                                    ],
                                  ),
                                ),
                               
                              Text(
                              itemsList[index]['name'],
                              style: const TextStyle(
                                   fontSize: 10),
                                ),
                              ],),
                              
                                ],
                              ),
                                ),
                                ],
                              ),
                            )
                       
                          ],
                        ),
                      
                      );
                    }),
              
            ],
          ),
        ),
      ),
    );
  }
}
