import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.leading,
    required this.topPadding,
    required this.bottomPadding,
    required this.buttonWidth,
    required this.route,
  });

  final Widget leading;
  final double topPadding, bottomPadding;
  final double buttonWidth;
  final VoidCallback route;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          stops: const [0.1, 0.6, 0.9],
          colors: [
            const Color(0xFFfe9d4c),
            const Color(0xFF0d64bf).withOpacity(0.6),
            Colors.orange,
          ],
          tileMode: TileMode.mirror,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          minimumSize: Size(buttonWidth, 20),
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
        onPressed: route,
        child: Padding(
          padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
          child: leading,
        ),
      ),
    );
  }
}
