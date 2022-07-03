import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/ui/auth/login_view.dart';

import '../auth/register_view.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _userViewModel = ref.watch(userViewModelProvider);
    // final me = _userViewModel.getMe();

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          RaisedButton(
            child: Text('新規登録'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterView(),
                  ));
            },
          ),
          RaisedButton(
            child: Text('ログイン'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ));
            },
          ),
        ],
      ),
    ));
  }
}
