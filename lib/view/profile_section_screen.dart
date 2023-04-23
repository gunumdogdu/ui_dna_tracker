import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_dna_tracker/core/utility/general_sizedbox_vertical.dart';
import 'package:ui_dna_tracker/core/utility/image_pngs.dart';
import 'package:ui_dna_tracker/product/languages/languages.dart';

import '../core/components/custom_appbar.dart';

class ProfileSectionScreen extends StatelessWidget {
  const ProfileSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      24,
                    ),
                  ),
                  border: Border.all()),
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(24),
                ),
                child: ImagePNG().pngProfileImage,
              ),
            ),
          ),
          GeneralSizedBoxV().generalSizedBoxV,
          Text(
            'Emir Gunumdogdu',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  letterSpacing: -2,
                ),
          ),
          GeneralSizedBoxV().generalSizedBoxVhalf,
          Text(
            'Male, 24 years old',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
