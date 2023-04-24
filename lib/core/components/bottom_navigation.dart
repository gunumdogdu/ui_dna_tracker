import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(color: Colors.red),
      showSelectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.transparent),
      elevation: 0,
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.square_grid_2x2,
            color:
                _selectedIndex == 0 ? const Color(0xFF0d64bf) : Colors.black54,
          ),
          label: 'Grid',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.chat_bubble,
            color:
                _selectedIndex == 1 ? const Color(0xFF0d64bf) : Colors.black54,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.settings,
            color:
                _selectedIndex == 2 ? const Color(0xFF0d64bf) : Colors.black54,
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.person_2,
            color:
                _selectedIndex == 3 ? const Color(0xFF0d64bf) : Colors.black54,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
