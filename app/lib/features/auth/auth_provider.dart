import 'dart:async';

import 'package:app/core/http/http_client.dart';
import 'package:app/core/ui/data/ui_service.dart';
import 'package:app/core/utils/app_logger.dart';
import 'package:app/features/auth/auth_state.dart';
import 'package:app/features/auth/auth_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  // final client = HttpClient();
  // final service = UiService(client);

  // return AuthNotifier(useCase);
// });

final authProvider = AsyncNotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

class AuthNotifier extends AsyncNotifier<AuthState> {
  @override
  FutureOr<AuthState> build() {
    final service = ref.read(listenable)
  }
  // final GetAuthScreenUseCase _useCase;

  // Future<void> loadLoginScreen() async {
  //   state = state.copyWith(loading: true);

  //   try {
  //     final screen = await _useCase.execute();
  //     state = state.copyWith(screen: screen);
  //     logger.d(state.screen?.id);
  //   } finally {
  //     state = state.copyWith(loading: false);
  //   }
  // }
}
