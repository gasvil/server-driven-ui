import 'package:app/core/ui/data/service/ui_service_provider.dart';
import 'package:app/core/ui/domain/models/ui_screen.dart';
import 'package:app/features/auth/auth_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = AsyncNotifierProvider<AuthNotifier, UiScreen>(
  AuthNotifier.new,
);

class AuthNotifier extends AsyncNotifier<UiScreen> {
  @override
  Future<UiScreen> build() async {
    final uiService = ref.read(uiServiceProvider);
    final useCase = GetAuthScreenUseCase(uiService);
    return useCase.call("auth");
  }
}
