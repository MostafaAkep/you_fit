import 'package:fitness_app/features/auth/presentation/views/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlatformSection extends StatelessWidget {
  const PlatformSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignUpButton(platFormICon: FontAwesomeIcons.apple, platForm: 'apple'),
        SizedBox(height: 10),
        SignUpButton(platFormICon: FontAwesomeIcons.google, platForm: 'google'),
      ],
    );
  }
}
