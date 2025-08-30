import 'package:fitness_app/core/widgets/rich_app_text.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<FormState> formKey = context.read<AuthCubit>().formKey;
    return Form(
      // key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !value.contains('@gmail.com')) {
                return 'Enter email Correctly';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'YJ@gmail.com'),
            onChanged: (value) {
              // context.read<AuthCubit>().updateEmail(value);
            },
          ),
          const SizedBox(height: 5),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Please enter your password';
              }
              return null;
            },
            onChanged: (value) {
              // context.read<AuthCubit>().updatePassword(value);
            },
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
                hintText: 'Create password',
                suffixIcon: Icon(Icons.password_sharp)),
          ),
          const SizedBox(height: 12),
          RichAppText('Forgot password? ', 'Click here', onTapFun: () {
            //TODO : reset password
          })
        ],
      ),
    );
  }
}
