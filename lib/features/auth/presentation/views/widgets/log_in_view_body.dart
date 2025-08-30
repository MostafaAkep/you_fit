// ignore_for_file: use_build_context_synchronously
import 'package:fitness_app/core/navigation/app_router.dart';
import 'package:fitness_app/core/widgets/public_container.dart';
import 'package:fitness_app/core/widgets/rich_app_text.dart';
import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/log_in_form.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/platform_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopMessages(
              'Welcome back',
              'Sign in to get active💪',
            ),
            const SizedBox(height: 60),
            const LogInForm(),
            const SizedBox(height: 60),
            const PlatformSection(),
            const SizedBox(height: 80),
            PublicContainer(
              onTap: () async {},
              containerColor: const Color(0xffFFE53B),
              titleColor: Colors.black,
              title: 'Sign me in',
            ),
            const SizedBox(height: 15),
            Center(
              child: RichAppText(
                'Don`t have an account? ',
                'Create one',
                onTapFun: () => context.go(AppRoutes.kSignUp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
