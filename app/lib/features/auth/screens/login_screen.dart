import 'package:app/features/auth/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        // child: state.loading
        //     ? const CircularProgressIndicator()
        //     : ElevatedButton(
        //         onPressed: () {
        //           ref.read(authProvider.notifier).loadLoginScreen();
        //         },
        //         child: const Text('Load Login UI'),
        //       ),
        child: state.screen != null
            ? Text(state.screen?.id ?? 'default')
            : state.loading
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  ref.read(authProvider.notifier).loadLoginScreen();
                },
                child: const Text('Load Login UI'),
              ),
      ),
    );
  }
}
