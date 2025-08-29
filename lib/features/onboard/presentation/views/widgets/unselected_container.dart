import 'package:flutter/material.dart';

class UnSelectedContainer extends StatelessWidget {
  const UnSelectedContainer({
    super.key,
    required this.title,
    required this.index,
  });

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      width: size.width * 0.8,
      height: size.height * 0.08,
      alignment: Alignment.center,
      child: Text(
        title,
      ),
    );
  }
}
