import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/view_model/auth_vm.dart';
import 'package:matching_app/view_model/login_vm.dart';

import '../../view_model/api_error_vm.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isVisible = false;

    final authState = ref.watch(authViewModelProvider);
    final authVm = ref.watch(authViewModelProvider.notifier);
    final loginVmState = ref.watch(loginViewModelProvider);
    final loginVm = ref.watch(loginViewModelProvider.notifier);
    final apiErrorState = ref.watch(apiErrorViewModelProvider);
    final apiErrorViewModel = ref.watch(apiErrorViewModelProvider.notifier);
    final errorMessages = apiErrorState.value?.messages.length ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < errorMessages; i++)
                            Text(apiErrorState.value?.messages[i] ?? '')
                        ]),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ValidateText.email,
                      decoration: const InputDecoration(
                          filled: true, hintText: 'Email'),
                      onChanged: (text) {
                        loginVm.setEmail(text);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ValidateText.password,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(isVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              isVisible = !isVisible;
                            },
                          ),
                          filled: true,
                          hintText: 'Password'),
                      onChanged: (text) {
                        loginVm.setPassword(text);
                      },
                      obscureText: !isVisible,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        authVm.login(loginVm.getEmail(), loginVm.getPassword());
                        authState.when(
                            data: (res) {
                              Navigator.pop(context);
                            },
                            loading: () {},
                            error: (error, _) {
                              apiErrorViewModel.setApiError(error);
                            });
                      },
                      child: const Text("ログイン"),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class ValidateText {
  static String? password(String? value) {
    if (value != null) {
      String pattern = r'^[a-zA-Z0-9]{8,}$';
      RegExp regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        return '8文字以上の英数字を入力してください';
      }
    }
    return null;
  }

  static String? email(String? value) {
    if (value != null) {
      String pattern = r'^[0-9a-z_./?-]+@([0-9a-z-]+\.)+[0-9a-z-]+$';
      RegExp regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        return '正しいメールアドレスを入力してください';
      }
    }
    return null;
  }
}