import 'package:fitness_app/features/onboard/presentation/views/onboard1_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/onboard2_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/onboard3_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/onboard4_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/onboard5_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/onboard6_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/pricing_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class OnboardViewBody extends StatefulWidget {
  const OnboardViewBody({super.key});

  @override
  State<OnboardViewBody> createState() => _OnboardViewBodyState();
}

class _OnboardViewBodyState extends State<OnboardViewBody> {
  PageController controller = PageController();
  int pageIndex = 0;
  bool firstPage = true;

  void _onPageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: _onPageChanged,
              children: const [
                Onboard1View(),
                Onboard2View(),
                Onboard3View(),
                Onboard4View(),
                Onboard5View(),
                Onboard6View(),
                PricingView(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 10),
          child: CustomArrows(
            pageIndex: pageIndex,
            controller: controller,
            isFirstPage: pageIndex == 0,
            isPricingPage: pageIndex == 6,
          ),
        ),
      ),
    );
  }
}
