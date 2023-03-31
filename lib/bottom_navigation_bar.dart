import 'package:flutter/material.dart';

import 'home_page.dart';
import 'notificationScreen.dart';
import 'product_list.dart';

class BottomNavigatonBar extends StatefulWidget {
  final Function(int)? onTap;
  int currentIndex;
  BottomNavigatonBar({
    Key? key,
    this.onTap,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<BottomNavigatonBar> createState() => _BottomNavigatonBarState();
}

class _BottomNavigatonBarState extends State<BottomNavigatonBar> {
  // int _currentIndex = 0;
  // List _screens = [MyHomePage(), NotificationScreen(), ProductList()];

  // void _updateIndex(int value) {
  //   setState(() {
  //     _currentIndex = value;
  //   });
  // }

  Widget customBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap ?? (e) => widget.onTap!(e),
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return customBottomNav();
  }
}
