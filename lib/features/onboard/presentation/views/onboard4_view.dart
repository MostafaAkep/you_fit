import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/selected_container.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/unselected_container.dart';
import 'package:flutter/material.dart';

class Onboard4View extends StatefulWidget {
  const Onboard4View({super.key});

  @override
  State<Onboard4View> createState() => _Onboard4ViewState();
}

class _Onboard4ViewState extends State<Onboard4View> {
  bool isFront = true;
  final List<String> frontList = [
    'Shoulder',
    'Chest',
    'Triceps',
    'Biceps',
    'Legs',
    'Gluts',
    'Aps',
    'other',
  ];
  final List<String> backList = [
    'Upper Back',
    'Lower Back',
    'Triceps',
    'Back Leg',
    'Seaman',
    'Gluts',
    'Neck',
    'other',
  ];
  final List<String> selectedGoals = [];

  @override
  Widget build(BuildContext context) {
    Color frontColor = const Color(0xffFFE53B);
    Color backColor = const Color(0xff222222);
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
                'What muscles do you want to target?',
                'Select target muscles',
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                GestureDetector(
                  onTap: () => setState(() {
                    isFront = true;
                  }),
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)),
                      color: isFront ? frontColor : backColor,
                    ),
                    child: Text(
                      'Front',
                      style: TextStyle(
                          color: isFront ? Colors.black : Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () => setState(() {
                          isFront = false;
                        }),
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: isFront ? backColor : frontColor,
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(
                            color: isFront ? Colors.white : Colors.black),
                      ),
                    )),
              ]),
              const SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.55,
                child: isFront
                    ? ListView.builder(
                        itemBuilder: (context, index) {
                          final goal = frontList[index];
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
                                  : UnSelectedContainer(
                                      index: index, title: goal),
                            ),
                          );
                        },
                        itemCount: frontList.length,
                      )
                    : ListView.builder(
                        itemBuilder: (context, index) {
                          final goal = backList[index];
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
                                  : UnSelectedContainer(
                                      index: index, title: goal),
                            ),
                          );
                        },
                        itemCount: backList.length,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
