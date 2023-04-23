import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'notification_bell.dart';

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
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 24),
          child: NotificationBell(),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
