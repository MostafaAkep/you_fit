import 'package:fitness_app/core/navigation/app_router.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://oujkuhhytgtdmyvjpnqx.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im91amt1aGh5dGd0ZG15dmpwbnF4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTYxMDg1NTYsImV4cCI6MjA3MTY4NDU1Nn0.6J247P2p8roNg-3S9tVAhD91Zr7SiSC49Zd9rsm_gNA',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
      title: 'Fitness App',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff121212),
        fontFamily: "SFPRODISPLAY",
        useMaterial3: true,
      ),
    );
  }
}
