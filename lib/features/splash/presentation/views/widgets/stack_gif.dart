import 'dart:async';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class StackGif extends StatefulWidget {
  const StackGif({super.key});

  @override
  State<StackGif> createState() => _StackGifState();
}

class _StackGifState extends State<StackGif> {
  bool isActive = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startToggleTimer();
  }

  void _startToggleTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        isActive = !isActive;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: isActive ? Colors.white : const Color(0xff121212),
          ),
          width: 215,
          height: 215,
        ),
        Positioned(
          left: 20,
          right: 20,
          top: 25,
          bottom: 25,
          child: Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    isActive ? AppImages.gifsBall : AppImages.gifsFrame),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
