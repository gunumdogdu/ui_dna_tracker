import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_dna_tracker/core/components/get_started_button.dart';

import 'package:ui_dna_tracker/core/utility/general_sizedbox_vertical.dart';
import 'package:ui_dna_tracker/core/utility/image_pngs.dart';

import '../core/components/custom_appbar.dart';

//// UNDER CONSTRUCTION PAGE--- TODO  ADD BOTTOM NAVIGATION BAR!

class ProfileSectionScreen extends StatelessWidget {
  const ProfileSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
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
            Text(
              'Male, 24 years old',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            GeneralSizedBoxV().generalSizedBoxVdouble,
            Container(
              padding: const EdgeInsets.only(
                  right: 16, left: 16, top: 16, bottom: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Colors.grey[200]),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Muratpasa, Antalya, Turkey',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.phone,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '+90 555 555 55 55',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
            ),
            GeneralSizedBoxV().generalSizedBoxVhalf,
            Container(
              padding: const EdgeInsets.only(
                  right: 16, left: 16, top: 16, bottom: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Text(
                    'Progress 3/5',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: LinearProgressIndicator(
                        value: 0.3,
                        color: Color(0xFF0d64bf),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          0.3 < 1 ? Color(0xFFfe9d4c) : Color(0xFFfe9d4c),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'DNA Reports',
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
                ),
                const Divider(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'DNA Reports',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      '10',
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
                ),
                const Divider(
                  height: 4,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'DNA Reports',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      '5',
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
                ),
                GeneralSizedBoxV().generalSizedBoxValmostdouble,
                Row(
                  children: const [
                    GetStartedButton(
                      leading: Text(
                        'Get Started',
                      ),
                      topPadding: 0,
                      bottomPadding: 0,
                      buttonWidth: 280,
                    ),
                    Spacer(),
                    GetStartedButton(
                      leading: Icon(Icons.share),
                      topPadding: 0,
                      bottomPadding: 0,
                      buttonWidth: 50,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
