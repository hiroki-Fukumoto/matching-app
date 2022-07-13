import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/view_model/user_view_model.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isVisible = false;

    final _viewModel = ref.watch(userViewModelProvider);
    _viewModel.setLoginEmail('');
    _viewModel.setLoginPassword('');

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
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ValidateText.email,
                      decoration: const InputDecoration(
                          filled: true, hintText: 'Email'),
                      onChanged: (text) {
                        _viewModel.setLoginEmail(text);
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
                        _viewModel.setLoginPassword(text);
                      },
                      obscureText: !isVisible,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          await _viewModel.login();
                          Navigator.pop(context);
                        } catch (e) {
                          print(e);
                        }
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
