import 'package:flutter/material.dart';
import 'package:ui_dna_tracker/product/languages/languages.dart';
import 'package:ui_dna_tracker/view/profile/profile_section_screen.dart';

import '../../product/components/bodytext.dart';
import '../../product/components/get_started_button.dart';

import '../../product/components/headlinetext.dart';
import '../../product/utility/general_sizedbox_vertical.dart';
import '../../product/utility/global_padding.dart';
import '../../product/utility/image_pngs.dart';

class OnBoardingScreen extends StatelessWidget with NavigatorManager {
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
                leading: const Text(
                  LanguageItems.mainButtonText,
                ),
                route: () {
                  navigateToWidget(
                    context,
                    const ProfileSectionScreen(),
                  );
                },
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

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget, fullscreenDialog: true),
    );
  }
}
