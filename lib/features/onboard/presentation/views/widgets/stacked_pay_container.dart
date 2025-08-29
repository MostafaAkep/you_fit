import 'package:fitness_app/features/onboard/presentation/views/widgets/pricing_pay_container.dart';
import 'package:flutter/material.dart';

class StackedPayContainer extends StatelessWidget {
  const StackedPayContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const PricingPayContainer(price: ' \$144', width: 'Yearly'),
        Positioned(
            top: height * -0.02,
            right: width * 0.344,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              width: width * 0.22,
              height: height * 0.04,
              child: const Text(
                'Best value',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
      ],
    );
  }
}
