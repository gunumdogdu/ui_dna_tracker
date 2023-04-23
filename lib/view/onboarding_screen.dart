import 'package:flutter/material.dart';
import 'package:ui_dna_tracker/product/languages/languages.dart';

import '../core/components/bodytext.dart';
import '../core/components/get_started_button.dart';
import '../core/components/headlinetext.dart';
import '../core/utility/general_sizedbox_vertical.dart';
import '../core/utility/global_padding.dart';
import '../core/utility/image_pngs.dart';

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
              const HeadlineText(title: LanguageItems.headlineText),
              GeneralSizedBoxV().generalSizedBoxV,
              const MainBodyWidget(body: LanguageItems.subtitleText),
              const Spacer(),
              GetStartedButton(
                buttonWidth: double.infinity,
                leading: Text(
                  LanguageItems.mainButtonText,
                ),
                topPadding: DoublePaddings().globalPaddingDouble / 2,
                bottomPadding: DoublePaddings().globalPaddingDouble / 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
