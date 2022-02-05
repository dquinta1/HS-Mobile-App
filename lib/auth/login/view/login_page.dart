import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/auth/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: BlocProvider(
        create: (_) => LoginCubit(context.read<IAuthenticationRepository>()),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: LoginForm(),
        ),
      ),
    );
  }
}
