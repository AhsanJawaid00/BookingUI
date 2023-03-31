import 'package:flutter/material.dart';
import 'package:test_app/drawer_header.dart';
import 'package:test_app/hostPage.dart';
import 'package:test_app/product_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
                height: double.infinity,
            
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage("lib/assets/img5.jpg"),
              
              fit: BoxFit.cover,
  
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                child: Container(
                      height: 350,
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      color: Colors.grey.shade200,
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text("Ahsan Jawaid", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, overflow: TextOverflow.ellipsis),),    
                        Text("Work On Big Ideas Everywhere", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, overflow: TextOverflow.ellipsis),),    
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(45 / 360),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HostPage()));
                            },
                            child: Transform.rotate(angle: -290 / 360, child: Icon(Icons.arrow_forward,)),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.purple,
                            ),
                                        ),
                          ),
                        ),
                      Row(
                        children: [
                          ElevatedButton(
                        onPressed: (){},
                        child: Text("SKIP", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          onPrimary: Colors.purple,
                          primary: Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          
                          ),
                        ),
                      )
                        ],
                      ),
                    ],
                      )
                 
                    ),
              ),
            ],
          ),
        
        ),
        // bottomSheet: ClipRRect(
        //   borderRadius: BorderRadius.circular(40),
        //   child: BottomSheet(
            
        //     onClosing: () {
        //       //  Do what you wanna do when the bottom sheet closes.
        //     },
        //     builder: (context) {
        //       // should return a widget
        //       return Container(
        //         height: 350,
        //         width: double.infinity,
        //         padding: EdgeInsets.all(30),
        //         color: Colors.grey.shade200,
        //         alignment: Alignment.center,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //           Text("Ahsan Jawaid", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, overflow: TextOverflow.ellipsis),),    
        //           Text("Work On Big Ideas Everywhere", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, overflow: TextOverflow.ellipsis),),    
        //           RotationTransition(
        //             turns: AlwaysStoppedAnimation(45 / 360),
        //             child: SizedBox(
        //               height: 60,
        //               width: 60,
        //               child: ElevatedButton(
        //               onPressed: (){},
        //               child: Transform.rotate(angle: -290 / 360, child: Icon(Icons.arrow_forward,)),
        //               style: ElevatedButton.styleFrom(
        //                 onPrimary: Colors.white,
        //                 primary: Colors.purple,
        //               ),
        //                           ),
        //             ),
        //           ),
        //         Row(
        //           children: [
        //             ElevatedButton(
        //           onPressed: (){},
        //           child: Text("SKIP", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        //           style: ElevatedButton.styleFrom(
        //             elevation: 0,
        //             onPrimary: Colors.purple,
        //             primary: Colors.grey.shade200,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(30.0),
                    
        //             ),
        //           ),
        //         )
        //           ],
        //         ),
        //       ],
        //         )
           
        //       );
        //     },
        //   ),
        // ),
        drawer: Drawer(
            child: SingleChildScrollView(
          child: Column(
            children: [
              MyDrawerHeader(),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("LOG OUT"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
