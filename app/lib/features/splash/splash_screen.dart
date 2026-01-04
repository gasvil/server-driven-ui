import 'package:app/core/constants/app_images.dart';
import 'package:app/core/state/screen/screen_provider.dart';
import 'package:app/core/state/screen/screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<ScreenState>>(screenProvider, (prev, next) {
      if (prev?.isLoading == true && next.hasValue) {
        context.go('/login');
      }
    });

    final state = ref.watch(screenProvider);

    return Scaffold(
      body: Center(
        child: state.when(
          data: (_) => SizedBox.shrink(),
          error: (error, _) => splashBody(errorMessage: error.toString()),
          loading: () => splashBody(),
        ),
      ),
    );
  }

  Widget splashBody({String? errorMessage}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.appLogo, width: 100),
        Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Text(
            "Server Driven UI".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
          ),
        ),
        Text(
          'Project'.toUpperCase(),
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        errorMessage != null ? Text(errorMessage) : SizedBox.shrink(),
      ],
    );
  }
}
