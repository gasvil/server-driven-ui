import 'package:app/core/exceptions/screen.exception.dart';
import 'package:app/core/state/screen/screen_state.dart';
import 'package:app/core/ui/data/service/ui_service_provider.dart';
import 'package:app/core/ui/domain/usecases/get_screen_usecase.dart';
import 'package:app/core/utils/app_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final screenProvider = AsyncNotifierProvider<ScreenNotifier, ScreenState>(
  ScreenNotifier.new,
);

class ScreenNotifier extends AsyncNotifier<ScreenState> {
  @override
  Future<ScreenState> build() async {
    final uiService = ref.read(uiServiceProvider);
    final useCase = GetScreenUseCase(uiService);
    final result = await useCase.call('login');

    await Future.delayed(Duration(seconds: 3));

    return result.fold(
      onSuccess: (screen) => ScreenState(base: screen),
      onFailure: (failure) {
        logger.i(failure);
        throw ScreenException(failure);
      },
    );
  }
}
