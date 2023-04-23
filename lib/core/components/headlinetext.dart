import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .displayMedium!
          .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
    );
  }
}
