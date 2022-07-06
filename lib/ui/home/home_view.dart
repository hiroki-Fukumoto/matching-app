import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/ui/auth/login_view.dart';

import '../../view_model/auth_vm.dart';
import '../auth/register_view.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    final authVm = ref.watch(authViewModelProvider.notifier);

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text(authState.value?.loginUser.me?.name ?? ''),
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
            child: const Text('ログイン'),
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
