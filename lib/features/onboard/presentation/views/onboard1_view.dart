import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/onboard_list_items.dart';
import 'package:flutter/material.dart';

class Onboard1View extends StatelessWidget {
  const Onboard1View({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List genderList = [
      'Male',
      'Female',
    ];
    return Scaffold(
      body: ShaderMask(
        shaderCallback: (bounds) {
          return const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black, Colors.transparent],
            stops: [0.0, 0.1],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstOut,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              const TopMessages('What do you identify\n as?',
                  'Help us personalize your fitness journey'),
              const SizedBox(height: 30),
              Expanded(
                child: OnBoardListItems(
                  list: genderList,
                  selectedIndex: selectedIndex,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
