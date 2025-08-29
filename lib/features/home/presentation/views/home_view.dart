import 'package:fitness_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: const EdgeInsets.symmetric(horizontal: 20),
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
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container()),
    );
  }
}
