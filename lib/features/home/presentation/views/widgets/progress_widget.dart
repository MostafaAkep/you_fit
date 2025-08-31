import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/current_day_row.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/weekly_tracker.dart';
import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      child: const Column(
        children: [
          CurrentDayRow(),
          SizedBox(height: 16),
          WeeklyTracker(),
        ],
      ),
    );
  }
}
