import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_dna_tracker/view/profile_section_screen.dart';

import '../core/components/bodytext.dart';
import '../core/components/get_started_button.dart';
import '../core/components/headlinetext.dart';
import '../core/utility/general_sizedbox_vertical.dart';
import '../core/utility/global_padding.dart';
import '../core/utility/image_pngs.dart';
import '../core/utility/main_texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: GlobalPadding().globalPadding,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  Expanded(
                    child: SizedBox(child: ImagePNG().pngDnaImage),
                  ),
                ],
              ),
              GeneralSizedBoxV().generalSizedBoxV,
              HeadlineText(title: MainText().headlineText),
              GeneralSizedBoxV().generalSizedBoxV,
              MainBodyWidget(body: MainText().subtitleText),
              const Spacer(),
              GetStartedButton(
                title: MainText().mainButtonText,
                top: DoublePaddings().globalPaddingDouble / 2,
                bottom: DoublePaddings().globalPaddingDouble / 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
