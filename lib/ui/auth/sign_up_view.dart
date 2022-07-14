import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/view_model/user_view_model.dart';

class SignUpView extends HookConsumerWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _viewModel = ref.watch(userViewModelProvider);
    _viewModel.setLoginEmail('');
    _viewModel.setLoginPassword('');

    return Scaffold(
      appBar: AppBar(
        title: const Text("新規登録"),
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
                      decoration:
                          const InputDecoration(filled: true, hintText: '氏名'),
                      onChanged: (text) {
                        _viewModel.setRegisterName(text);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ValidateText.email,
                      decoration: const InputDecoration(
                          filled: true, hintText: 'メールアドレス'),
                      onChanged: (text) {
                        _viewModel.setRegisterEmail(text);
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
                            icon: Icon(_viewModel.getIsVisiblePassword()
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              bool val = _viewModel.getIsVisiblePassword();
                              _viewModel.setIsVisiblePassword(!val);
                            },
                          ),
                          filled: true,
                          hintText: 'Password'),
                      onChanged: (text) {
                        _viewModel.setRegisterPassword(text);
                      },
                      obscureText: _viewModel.getIsVisiblePassword(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: '性別',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'male',
                          child: Text('男性'),
                        ),
                        DropdownMenuItem(
                          value: 'female',
                          child: Text('女性'),
                        ),
                        DropdownMenuItem(
                          value: 'other',
                          child: Text('その他'),
                        ),
                      ],
                      onChanged: (String? text) {
                        _viewModel.setRegisterSex(text!);
                      },
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: '都道府県',
                      ),
                      // TODO: API作成
                      items: const [
                        DropdownMenuItem(
                          value: 1,
                          child: Text('北海道'),
                        ),
                      ],
                      onChanged: (int? val) {
                        _viewModel.setRegisterPrefecture(val!);
                      },
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: '生年月日(年)',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: '1992',
                          child: Text('1992'),
                        ),
                      ],
                      onChanged: (String? text) {
                        _viewModel.setRegisterBirthdayY(text!);
                      },
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: '生年月日(月)',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: '09',
                          child: Text('09'),
                        ),
                      ],
                      onChanged: (String? text) {
                        _viewModel.setRegisterBirthdayM(text!);
                      },
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: '生年月日(日)',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: '15',
                          child: Text('15'),
                        ),
                      ],
                      onChanged: (String? text) {
                        _viewModel.setRegisterBirthdayD(text!);
                      },
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          await _viewModel.register();
                          Navigator.pop(context);
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: const Text("登録"),
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
