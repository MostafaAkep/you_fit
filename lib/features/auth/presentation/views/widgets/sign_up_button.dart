import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton(
      {super.key, required this.platFormICon, required this.platForm});
  final IconData platFormICon;
  final String platForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      width: 500,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 40,
              width: 42,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: FaIcon(
                  platFormICon,
                  color: Colors.black,
                ),
              )),
          const SizedBox(width: 60),
          Text(
            'Continue with $platForm',
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
