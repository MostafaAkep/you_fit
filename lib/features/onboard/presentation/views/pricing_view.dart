import 'package:fitness_app/features/onboard/presentation/views/widgets/pricing_pay_container.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/stacked_pay_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'You’re just',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
                  children: [
                    TextSpan(
                      text: ' a step away ',
                      style: TextStyle(color: Color(0xffC8FE3B)),
                    ),
                    TextSpan(text: ' from your goals')
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Choose a plan to get your fitness journey started',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: height * 0.06),
          const PricingPayContainer(price: ' \$14.25', width: 'Monthly'),
          const SizedBox(height: 20),
          StackedPayContainer(height: height, width: width),
          SizedBox(height: height * 0.123),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Not sure yet? A ',
              style: const TextStyle(color: Colors.grey, fontSize: 13),
              children: [
                TextSpan(
                    text: 'one Month free trial',
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.amber),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(
                  text: ' would \n convince you',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
