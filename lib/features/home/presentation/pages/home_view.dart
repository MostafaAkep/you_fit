import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/features/home/presentation/widgets/calories_tracker.dart';
import 'package:fitness_app/core/widgets/nav_bar.dart';
import 'package:fitness_app/features/home/presentation/widgets/progress_widget.dart';
import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: () {
              context.pop();
            },
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
              const ProgressWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  const Text(
                    'Today’s routine',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    child: Row(
                      children: [
                        const Text(
                          '7 exercises, 3 sets, 8 reps',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.yellowGradient,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Let’s go',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  const CaloriesTracker(),
                  const SizedBox(
                    height: 200,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
