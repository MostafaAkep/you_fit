import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/selected_container.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/unselected_container.dart';
import 'package:flutter/material.dart';

class Onboard3View extends StatefulWidget {
  const Onboard3View({super.key});

  @override
  State<Onboard3View> createState() => _Onboard3ViewState();
}

class _Onboard3ViewState extends State<Onboard3View> {
  final List<String> goalList = [
    'Weight loss',
    'Weight gain',
    'Muscle Building',
    'Strength Training',
    'Flexibility',
    'Endurance',
    'Healthy Diet',
    'other',
  ];
  final List<String> selectedGoals = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShaderMask(
        shaderCallback: (bounds) {
          return const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black, Colors.transparent],
            stops: [0.0, 0.4],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstOut,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopMessages(
                'What goal do you want to achieve?',
                'You can choose more than one',
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.55,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final goal = goalList[index];
                    final isSelected = selectedGoals.contains(goal);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedGoals.remove(goal);
                            } else {
                              selectedGoals.add(goal);
                            }
                          });
                        },
                        child: isSelected
                            ? SelectedContainer(title: goal)
                            : UnSelectedContainer(index: index, title: goal),
                      ),
                    );
                  },
                  itemCount: goalList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
