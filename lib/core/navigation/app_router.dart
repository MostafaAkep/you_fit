import 'package:fitness_app/features/auth/presentation/views/log_in_view.dart';
import 'package:fitness_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:fitness_app/features/home/presentation/pages/home_view.dart';
import 'package:fitness_app/features/onboard/presentation/views/onboard_view.dart';
import 'package:fitness_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String kSplash = '/';
  static const String kSignUp = '/SignUp';
  static const String kLogIn = '/LogIn';
  static const String kOnBoard = '/onBoard';
  static const String kHome = '/Home';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kLogIn,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: kOnBoard,
        builder: (context, state) => const OnboardView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
