import 'package:flutter/material.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({
    super.key,
    required this.body,
  });
  final String body;

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: Colors.black54),
    );
  }
}
