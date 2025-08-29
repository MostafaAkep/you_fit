import 'package:fitness_app/features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    // create: (_) => AuthCubit(
    //     authRepoImpl: AuthRepoImpl(firebaseAuth: FirebaseAuth.instance)),
    return const Scaffold(
      body: LogInViewBody(),
    );
  }
}
