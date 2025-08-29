import 'package:fitness_app/core/widgets/top_messages.dart';
import 'package:flutter/material.dart';

class Onboard6View extends StatelessWidget {
  const Onboard6View({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
      child: Column(
        children: [
          const TopMessages(
            'When is your birthday?',
            'Of course we do care and want to personalize your journey\n more',
          ),
          const SizedBox(height: 80),
          FormField(builder: (builder) {
            return TextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {},
                ),
                labelText: 'DD/MM/YYYY',
                labelStyle: const TextStyle(color: Colors.grey),
              ),
            );
          }),
        ],
      ),
    );
  }
}
