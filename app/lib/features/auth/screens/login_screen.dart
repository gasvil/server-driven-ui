import 'package:app/core/state/screen/screen_provider.dart';
import 'package:app/core/ui/engine/ui_screen_renderer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Login')),
      body: Center(child: loginContent(ref)),
    );
  }

  Widget loginContent(WidgetRef ref) {
    final state = ref.watch(screenProvider);
    return state.when(
      data: (data) => UiScreenRenderer(screen: data.base),
      error: (_, _) => Text('Error'),
      loading: () => CircularProgressIndicator(),
    );
  }
}
