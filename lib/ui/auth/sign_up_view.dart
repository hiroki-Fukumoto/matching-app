import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/view_model/user_view_model.dart';

import '../../util/validator.dart';
import '../components/dropdown.dart';
import '../components/password_form.dart';
import '../components/text_form.dart';

class SignUpView extends HookConsumerWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _viewModel = ref.watch(userViewModelProvider);
    _viewModel.initRegisterForm();

    List<Option> sexList = [
      Option('male', '男性'),
      Option('female', '女性'),
      Option('other', 'その他')
    ];

    // TODO: API作成
    List<Option> prefectureList = [
      Option('1', '北海道'),
      Option('47', '沖縄'),
    ];

    // TODO: 生年月日入力のウィジェット作成
    List<Option> birthdayYList = [
      Option('1992', '1992'),
    ];
    List<Option> birthdayMList = [
      Option('09', '09'),
    ];
    List<Option> birthdayDList = [
      Option('15', '15'),
    ];

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
                    TextForm(
                      placeholder: '氏名',
                      onChanged: (text) {
                        _viewModel.setRegisterName(text);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextForm(
                      placeholder: 'メールアドレス',
                      validateText: Validate.email,
                      onChanged: (text) {
                        _viewModel.setRegisterEmail(text);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PasswordForm(
                      isVisible: _viewModel.getIsVisiblePassword(),
                      validateText: Validate.password,
                      onChanged: (String text) {
                        _viewModel.setLoginPassword(text);
                      },
                      onPressed: () {
                        bool val = _viewModel.getIsVisiblePassword();
                        _viewModel.setIsVisiblePassword(!val);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Dropdown(
                      options: sexList,
                      label: '性別',
                      onChanged: (String? text) {
                        _viewModel.setRegisterSex(text!);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Dropdown(
                      options: sexList,
                      label: '都道府県',
                      onChanged: (String? text) {
                        _viewModel.setRegisterPrefecture(int.parse(text!));
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Dropdown(
                      options: sexList,
                      label: '生年月日(年)',
                      onChanged: (String? text) {
                        _viewModel.setRegisterBirthdayY(text!);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Dropdown(
                      options: sexList,
                      label: '生年月日(月)',
                      onChanged: (String? text) {
                        _viewModel.setRegisterBirthdayM(text!);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Dropdown(
                      options: sexList,
                      label: '生年月日(日)',
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
