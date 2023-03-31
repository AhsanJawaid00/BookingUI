
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image-path": 'lib/assets/img1.jpg'},
    {"id": 2, "image-path": 'lib/assets/img4.jpg'},
    {"id": 3, "image-path": 'lib/assets/img5.jpg'},
  ];
  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Colors.purple,
        // color: currentIndex == index ? Colors.purple : Colors.teal,

      ),
      margin: const EdgeInsets.only(right: 8, top: 10),
      height: 10,
      curve: Curves.easeIn,
      width: currentIndex == index ? 20 : 10,
    );
  }

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: CarouselSlider(
                        items: imageList
                            .map((item) => Image.asset(item['image-path'],
                                width: double.infinity, fit: BoxFit.cover))
                            .toList(),
                            carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) => {
                            setState(() {
                              currentIndex = index;
                            }),
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      imageList.length,
                      (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  )
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: imageList.asMap().entries.map((entry) {
            //       print(entry.key);
            //       print(entry);
            //       return GestureDetector(
            //         onTap: () {
            //           carouselController.animateToPage(entry.key);
            //         },
            //         child: Container(
            //           width: currentIndex == entry.key ? 17 : 7,
            //           height: 7,
            //           margin:
            //               EdgeInsets.symmetric(horizontal: 3.0, vertical: 20.0),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10.0),
            //             color: currentIndex == entry.key
            //                 ? Colors.red
            //                 : Colors.teal,
            //             // boxShadow: [BoxShadow(color: Colors.black)],
            //           ),
            //         ),
            //       );
            //     }).toList())
          ],
        ),
      ),
    );
  }
}
