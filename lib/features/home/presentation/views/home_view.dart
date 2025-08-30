import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/current_day_row.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/weekly_tracker.dart';
import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: const EdgeInsets.only(right: 8),
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Image.asset(
            AppImages.imagesPfp,
            height: 36,
            width: 36,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopMessages(
                'Your weekly stat',
                'This week looks good, keep pushing Yomi💪',
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
                child: const Column(
                  children: [
                    CurrentDayRow(),
                    SizedBox(height: 16),
                    WeeklyTracker(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
