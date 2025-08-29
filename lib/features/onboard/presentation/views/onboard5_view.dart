import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboard5View extends StatefulWidget {
  const Onboard5View({super.key});

  @override
  State<Onboard5View> createState() => _Onboard5ViewState();
}

bool isChecked = false;

class _Onboard5ViewState extends State<Onboard5View> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 0),
      child: Column(
        children: [
          const TopMessages('What is your ideal time\n to stay fit',
              'What time works best for you to work out'),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.50,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.time,
              onDateTimeChanged: (value) {},
            ),
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () => setState(() => isChecked = !isChecked),
              child: isChecked
                  ? const Icon(Icons.check_box)
                  : const Icon(
                      Icons.check_box_outline_blank,
                    ),
            ),
            title: const Text(
              'I want a daily reminder to work out at this time',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
