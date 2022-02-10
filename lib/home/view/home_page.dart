import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/app/app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      // ignore: unnecessary_parenthesis
      builder: ((context, state) {
        return Center(
          child: Text(context.read<AppBloc>().state.user.name!),
        );
      }),
    );
  }
}
