import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CaloriesTracker extends StatelessWidget {
  const CaloriesTracker({super.key});

  final double calories = 1023; // 🔹 your value
  final double maxCalories = 2000;

  @override
  Widget build(BuildContext context) {
    // 🔹 calculate the percentage of the current value
    final double progress = calories / maxCalories;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        animationDuration: 1500,
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: maxCalories,
            showLabels: false,
            showTicks: false,
            startAngle: 180,
            endAngle: 0,
            axisLineStyle: AxisLineStyle(
              thicknessUnit: GaugeSizeUnit.logicalPixel,
              cornerStyle: CornerStyle.bothCurve,
              thickness: 25,
              gradient: SweepGradient(
                colors: const [
                  AppColors.yellowGradient,
                  AppColors.greenGradient,
                  AppColors.columnBar,
                ],
                // 🔹 make the gradient stop exactly at the progress
                stops: [0, progress, progress],
              ),
            ),
            pointers: const <GaugePointer>[
              NeedlePointer(
                needleLength: 0.5,
                value: 1023,
                needleColor: Colors.white,
                knobStyle: KnobStyle(
                  color: Colors.white,
                  knobRadius: 0.06,
                ),
              ),
            ],
            annotations: const <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '1023 calories',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'This week',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                angle: 90,
                positionFactor: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
