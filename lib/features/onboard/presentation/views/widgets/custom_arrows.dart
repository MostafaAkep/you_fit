import 'package:fitness_app/features/onboard/presentation/views/widgets/pricing_container.dart';
import 'package:flutter/material.dart';

class CustomArrows extends StatelessWidget {
  const CustomArrows(
      {super.key,
      required this.isFirstPage,
      required this.isPricingPage,
      required this.controller,
      required this.pageIndex});

  final bool isFirstPage;
  final bool isPricingPage;
  final PageController? controller;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    if (isPricingPage) {
      return const PricingContainer();
    } else {
      return Row(
        children: [
          isFirstPage
              ? const Spacer()
              : Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff222222),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      controller?.animateToPage(
                        pageIndex - 1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear,
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                  ),
                ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color(0xffC8FE3B),
                Color(0xffFFE53B),
              ]),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {
                controller?.animateToPage(
                  pageIndex + 1,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.linear,
                );
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      );
    }
  }
}
