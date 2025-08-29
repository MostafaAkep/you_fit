import 'package:fitness_app/features/onboard/presentation/views/widgets/onboard_view_body.dart';
import 'package:flutter/material.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardViewBody(),
    );
  }
}
