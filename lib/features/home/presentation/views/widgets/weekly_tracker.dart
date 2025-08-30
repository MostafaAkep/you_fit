import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeeklyTracker extends StatelessWidget {
  final List<double> progress;
  final double maxY;

  const WeeklyTracker({
    super.key,
    this.progress = const [0.2, 0.5, 0.7, 0.3, 0.9, 0.4, 0.6],
    this.maxY = 10,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          barTouchData: const BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return const BarColumn(day: "Mon");
                    case 1:
                      return const BarColumn(day: "Tue");
                    case 2:
                      return const BarColumn(day: "Wed");
                    case 3:
                      return const BarColumn(day: "Thu");
                    case 4:
                      return const BarColumn(day: "Fri");
                    case 5:
                      return const BarColumn(day: "Sat");
                    case 6:
                      return const BarColumn(day: "Sun");
                  }
                  return const Text("");
                },
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          gridData: const FlGridData(show: false),
          barGroups: _barsData(),
        ),
      ),
    );
  }

  List<BarChartGroupData> _barsData() {
    return List.generate(progress.length, (index) {
      final double ratio = progress[index].clamp(0.0, 1.0);
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: maxY,
            width: 12,
            borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: AppColors.columnGradientColors,
              stops: [
                0.0,
                ratio,
                ratio,
              ],
            ),
          ),
        ],
      );
    });
  }
}

class BarColumn extends StatelessWidget {
  const BarColumn({super.key, required this.day});
  final String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        children: [
          SvgPicture.asset(
            AppImages.imagesCheckmarkShieldFill,
            width: 10,
            height: 10,
          ),
          Text(
            day,
            style: const TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
