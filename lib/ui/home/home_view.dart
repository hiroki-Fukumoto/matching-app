import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/ui/auth/login_view.dart';
import 'package:matching_app/ui/auth/sign_up_view.dart';

import '../../view_model/user_view_model.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(userViewModelProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        viewModel.fetchUsers();
      });
      return viewModel.dispose;
    }, const []);

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text(viewModel.getMe().name),
          RaisedButton(
            child: const Text('新規登録'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpView(),
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
          Column(
            children: viewModel.getUsers().map((u) => Text(u.name)).toList(),
          )
        ],
      ),
    ));
  }
}
