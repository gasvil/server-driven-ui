import 'package:app/core/ui/engine/ui_screen_renderer.dart';
import 'package:app/features/auth/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(child: loginContent(ref)),
    );
  }

  Widget loginContent(WidgetRef ref) {
    final state = ref.watch(authProvider);
    return state.when(
      data: (screen) => UiScreenRenderer(screen: screen),
      error: (_, _) => Text('Error'),
      loading: () => CircularProgressIndicator(),
    );
  }
}
