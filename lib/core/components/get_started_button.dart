import 'package:flutter/material.dart';

import '../../view/profile_section_screen.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.title,
    required this.top,
    required this.bottom,
  });

  final String title;
  final double top, bottom;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.9, 0.1),
          colors: [
            Color(0xFFfe9d4c),
            Colors.orange,
            Color(0xFFfe9d4c),
            Colors.orange,
            Color(0xFFfe9d4c),
            Color(0xFF0d64bf),
          ],
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          minimumSize: const Size(double.infinity, 0),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProfileSectionScreen(),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(top: top, bottom: bottom),
          child: Text(title),
        ),
      ),
    );
  }
}
