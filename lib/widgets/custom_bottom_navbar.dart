import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetoptions = <Widget>[
    const Text('Feed'),
    const Text('Chat'),
    const Text('Home'),
    const Text('Account'),
    const Text('Menu'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
            color: CustomColors.secondaryColor,
          ),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: CustomColors.secondaryColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: CustomColors.secondaryColor,
          ),
          label: 'Donate',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.request_page,
            color: CustomColors.secondaryColor,
          ),
          label: 'Request',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: CustomColors.primaryColor,
      onTap: _onItemTapped,
    );
  }
}
