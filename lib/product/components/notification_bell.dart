import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: IconButton(
            padding: EdgeInsets.zero,
            iconSize: 12,
            onPressed: () {},
            icon: CircleAvatar(
              minRadius: 24,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(
                CupertinoIcons.bell,
                size: 24,
                color: Colors.black54,
              ),
            ),
          ),
        ),
        const Positioned(
          right: 2,
          top: 0,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            maxRadius: 5,
          ),
        ),
      ],
    );
  }
}
