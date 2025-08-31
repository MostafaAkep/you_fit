import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CurrentDayRow extends StatelessWidget {
  const CurrentDayRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Sunday, May 21st',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.columnBar,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: const Text(
            'Week 24',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
