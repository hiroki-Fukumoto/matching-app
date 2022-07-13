import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matching_app/ui/auth/login_view.dart';

import '../../view_model/user_view_model.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(userViewModelProvider);

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text(viewModel.getMe().name),
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
