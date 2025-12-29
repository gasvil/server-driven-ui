import 'package:app/features/auth/screens/login_screen.dart';
import 'package:app/features/auth/screens/signup_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (_, _) => LoginScreen()),
      GoRoute(path: '/signup', builder: (_, _) => SignupScreen()),
    ],
  );
});
