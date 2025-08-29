import 'package:flutter/material.dart';

class SelectedContainer extends StatelessWidget {
  const SelectedContainer({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.amber,
        ),
      ),
      width: width * 0.88,
      height: hight * 0.08,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          const Positioned(
            right: 10,
            child: Icon(
              Icons.check_circle,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
