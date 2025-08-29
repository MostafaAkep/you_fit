import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/onboard_list_items.dart';
import 'package:flutter/material.dart';

class Onboard2View extends StatelessWidget {
  const Onboard2View({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List confirmList = ['Yes', 'No'];
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TopMessages('Do you already have a\n fitness routine?',
                  'Help us personalize your fitness journey'),
              const SizedBox(height: 30),
              Expanded(
                child: OnBoardListItems(
                  list: confirmList,
                  selectedIndex: selectedIndex,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
