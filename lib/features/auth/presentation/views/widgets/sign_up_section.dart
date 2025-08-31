import 'package:fitness_app/core/navigation/app_router.dart';
import 'package:fitness_app/core/widgets/rich_app_text.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/signup_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class SignUpSection extends StatefulWidget {
  const SignUpSection({super.key});

  @override
  State<SignUpSection> createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.check_box_outline_blank_outlined),
            SizedBox(width: 6),
            Text.rich(
              TextSpan(
                text: 'I agree to the ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: 'terms and conditions',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white),
                  ),
                  TextSpan(text: ' of use')
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        SignUpContainer(
          onTap: () {
            // context.read<SignUpCubit>().createUser(context);
            context.push(AppRoutes.kOnBoard);
          },
          containerColor: const Color(0xff222222),
          titleColor: Colors.grey,
          title: 'Create my account',
        ),
        const SizedBox(height: 8),
        Center(
          child: RichAppText(
            'Already have an account? ',
            'Log in',
            onTapFun: () => context.push(AppRoutes.kLogIn),
          ),
        )
      ],
    );
  }
}
