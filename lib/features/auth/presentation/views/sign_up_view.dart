import 'package:fitness_app/features/auth/presentation/views/widgets/platform_section.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/sign_up_section.dart';
import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopMessages(
                'Let`s get rolling💪',
                'Create an account to get started',
              ),
              SizedBox(height: 8),
              SignUpForm(),
              SizedBox(height: 12),
              PlatformSection(),
              SizedBox(height: 35),
              SignUpSection(),
            ],
          ),
        ),
      ),
    );
  }
}
