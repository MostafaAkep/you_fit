import 'package:fitness_app/core/navigation/app_router.dart';
import 'package:fitness_app/core/widgets/public_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PricingContainer extends StatelessWidget {
  const PricingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PublicContainer(
          containerColor: const Color(0xffFFE53B),
          title: 'Continue',
          titleColor: Colors.black,
          onTap: () {
            context.go(AppRoutes.kHome);
          },
        ),
        const SizedBox(height: 8),
        const Text.rich(
          TextSpan(
            text: 'By continuing, you agree to the ',
            style: TextStyle(color: Colors.grey),
            children: [
              TextSpan(
                text: 'terms and conditions',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
