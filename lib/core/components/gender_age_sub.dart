import 'package:flutter/material.dart';

class GenderAgeSubtitle extends StatelessWidget {
  const GenderAgeSubtitle({
    super.key,
    required this.ageGenderInfo,
  });
  final String ageGenderInfo;

  @override
  Widget build(BuildContext context) {
    return Text(
      ageGenderInfo,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontWeight: FontWeight.w500),
    );
  }
}
