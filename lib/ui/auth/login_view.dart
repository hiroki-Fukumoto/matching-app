import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/view_model/user_view_model.dart';

import '../../util/validator.dart';
import '../components/password_form.dart';
import '../components/text_form.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(userViewModelProvider);
    viewModel.initLoginForm();

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
                    TextForm(
                      placeholder: 'メールアドレス',
                      validateText: Validate.email,
                      onChanged: (text) {
                        viewModel.setLoginEmail(text);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PasswordForm(
                      isVisible: viewModel.getIsVisiblePassword(),
                      validateText: Validate.password,
                      onChanged: (String text) {
                        viewModel.setLoginPassword(text);
                      },
                      onPressed: () {
                        bool val = viewModel.getIsVisiblePassword();
                        viewModel.setIsVisiblePassword(!val);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          await viewModel.login();
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
