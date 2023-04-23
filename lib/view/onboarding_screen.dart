import 'dart:ui';

import 'package:flutter/material.dart';

import '../core/components/headlinetext.dart';

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
              DecoratedBox(
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
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Text('Get Started'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({
    super.key,
    required this.body,
  });
  final String body;

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: Colors.black54),
    );
  }
}

class MainText {
  final String headlineText = 'DNA Checkup';
  final String subtitleText =
      'Unlock insights into your health and wellness, and discover your ancestry';
}

class ImagePNG {
  final Image pngDnaImage = Image.asset(
    '/Users/emirgunumdogdu/Documents/dev/ui_dna_tracker/assets/png/daco_dna.png',
  );
}

class GeneralSizedBoxV {
  final SizedBox generalSizedBoxV = const SizedBox(height: 16);
}

class GlobalPadding {
  final globalPadding = const EdgeInsets.only(left: 32, right: 32);
}
