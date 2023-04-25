import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_dna_tracker/product/components/get_started_button.dart';

import 'package:ui_dna_tracker/product/utility/general_sizedbox_vertical.dart';
import 'package:ui_dna_tracker/product/utility/global_padding.dart';
import 'package:ui_dna_tracker/product/utility/image_pngs.dart';
import 'package:ui_dna_tracker/product/languages/languages.dart';

import '../../product/components/bottom_navigation.dart';
import '../../product/components/custom_appbar.dart';
import '../../product/components/custom_contact_info.dart';
import '../../product/components/gender_age_sub.dart';
import '../../product/components/profile_screen_list_items.dart';
import '../../product/components/progress_container.dart';

//// UNDER CONSTRUCTION PAGE--- TODO ADD BOTTOM NAVIGATION BAR!

class ProfileSectionScreen extends StatelessWidget {
  const ProfileSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: GlobalPadding().globalPadding,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: GlobalPadding().standartPadding,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        24,
                      ),
                    ),
                    border: Border.all()),
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
                  fontSize: 30,
                  letterSpacing: -2,
                  color: Colors.black.withOpacity(0.70)),
            ),
            GeneralSizedBoxV().generalSizedBoxVhalf,
            const GenderAgeSubtitle(ageGenderInfo: 'Male, 24 years old'),
            GeneralSizedBoxV().generalSizedBoxVdouble,
            const CustomContactInfo(
              location: 'Muratpasa, Antalya, Turkey',
              phone: '+90 555 555 55 55',
            ),
            GeneralSizedBoxV().generalSizedBoxVhalf,
            const ProgressContainer(),
            Column(
              children: [
                const ProfileScreenListItems(title: LanguageItems.dnaReports),
                const Divider(height: 4),
                const ProfileScreenListItems(title: LanguageItems.highRisk),
                const Divider(
                  height: 4,
                ),
                const ProfileScreenListItems(title: LanguageItems.recom),
                GeneralSizedBoxV().generalSizedBoxVdouble,
                Row(
                  children: [
                    GetStartedButton(
                      route: () {},
                      leading: const Text(
                        LanguageItems.mainButtonText,
                      ),
                      topPadding: 0,
                      bottomPadding: 0,
                      buttonWidth: 280,
                    ),
                    const Spacer(),
                    GetStartedButton(
                      route: () {},
                      leading: const Icon(Icons.share),
                      topPadding: 0,
                      bottomPadding: 0,
                      buttonWidth: 50,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
