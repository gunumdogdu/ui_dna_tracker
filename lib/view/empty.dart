import 'package:flutter/material.dart';
import 'package:ui_dna_tracker/core/components/bottom_navigation.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Text('data')],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
