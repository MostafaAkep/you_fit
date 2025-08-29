import 'dart:async';
import 'package:fitness_app/core/navigation/app_router.dart';
import 'package:fitness_app/features/splash/presentation/views/widgets/stack_gif.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool isActive = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _startToggleTimer();
  }

  void _startToggleTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 4000), (timer) {
      setState(() {
        isActive = !isActive;
      });
      if (!isActive) {
        context.go(AppRoutes.kSignUp);
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: isActive ? const Color(0xffFFE53B) : const Color(0xff121212),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 150,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const StackGif(),
                const SizedBox(height: 16),
                Text(
                  maxLines: 2,
                  'Look in the mirror, that`s your\n competition - John Assaraf',
                  style: TextStyle(
                    color: isActive ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
