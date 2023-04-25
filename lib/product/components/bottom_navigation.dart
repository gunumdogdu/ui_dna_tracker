// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 3;

  int? _changeIcon(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      elevation: 0,
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xFF0d64bf),
      unselectedItemColor: Colors.black54,
      selectedIconTheme: const IconThemeData(
        color: Color(0xFF0d64bf),
      ),
      onTap: (value) {
        if (value == _MyBottomNav.menu.index) {
          _changeIcon(0);
        } else if (value == _MyBottomNav.chat.index) {
          _changeIcon(1);
        } else if (value == _MyBottomNav.settings.index) {
          _changeIcon(2);
        } else if (value == _MyBottomNav.profile.index) {
          _changeIcon(3);
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.square_grid_2x2,
          ),
          label: 'Grid',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.chat_bubble,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.settings,
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.person_2,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}

enum _MyBottomNav {
  menu,
  chat,
  settings,
  profile,
}

extension _MyBottomNavExtenion on _MyBottomNav {}

// _MyBottomNav.values.map((e) => label:e.name).toList()
class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel8({this.userId, this.id, this.title, this.body});
  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      // NULL CHECK! So data never comes null!!!
      // data.length;
      body = data;
    }
  }

  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
