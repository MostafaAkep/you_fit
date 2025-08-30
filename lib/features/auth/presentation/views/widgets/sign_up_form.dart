import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // GlobalKey<FormState> formKey = context.read<SignUpCubit>().formKey;
    return Form(
      // key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
            decoration: const InputDecoration(hintText: 'First name'),
          ),
          const SizedBox(height: 5),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
            decoration: const InputDecoration(hintText: 'Last name'),
          ),
          const SizedBox(height: 5),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return 'Please enter your email Correctly';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Email address'),
            onChanged: (value) {
              // context.read<SignUpCubit>().updateEmail(value);
            },
          ),
          const SizedBox(height: 5),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Please enter your password at least 8 characters';
              }
              return null;
            },
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              // context.read<SignUpCubit>().updatePassword(value);
            },
            decoration: const InputDecoration(
                hintText: 'Create password',
                suffixIcon: Icon(Icons.password_sharp)),
          ),
          const SizedBox(height: 5),
          const Text(
            'Password should contain',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              '.  At least 8 Characters\n.  Upper and lower case \n.  At least one number or symbol',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
