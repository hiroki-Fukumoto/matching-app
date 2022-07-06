import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../state/error/api_error_state.dart';

final apiErrorViewModelProvider =
    StateNotifierProvider.autoDispose<ApiErrorVM, AsyncValue<ApiErrorState>>(
  (ref) => ApiErrorVM(ref: ref),
);

class ApiErrorModel {
  int status = 0;
  String errorType = '';
  List<String> messages = [];
}

class ApiErrorVM extends StateNotifier<AsyncValue<ApiErrorState>> {
  final AutoDisposeStateNotifierProviderRef _ref;

  ApiErrorVM({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {}

  void setApiError(Object err) {
    err as ApiErrorModel;

    state = AsyncValue.data(
      ApiErrorState(
          status: err.status, errorType: err.errorType, messages: err.messages),
    );
  }
}
