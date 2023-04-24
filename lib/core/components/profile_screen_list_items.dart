import 'package:flutter/material.dart';

class ProfileScreenListItems extends StatelessWidget {
  const ProfileScreenListItems({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.grey),
        ),
        const Spacer(),
        Text(
          '87',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          width: 24,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 28,
            ),
          ),
        )
      ],
    );
  }
}
