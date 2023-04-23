import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });
  final double iconSize48 = 48.0;
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      actions: [
        Stack(
          children: [
            IconButton(
              iconSize: iconSize48,
              onPressed: () {},
              icon: CircleAvatar(
                minRadius: iconSize48,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  CupertinoIcons.bell,
                  color: Colors.black54,
                ),
              ),
            ),
            const Positioned(
              right: 12,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                maxRadius: 6,
              ),
            ),
          ],
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
