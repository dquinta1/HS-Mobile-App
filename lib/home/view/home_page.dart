import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/home/home.dart';
import 'package:hs_mobile_app/widgets/custom_circle_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit(
        bloc: context.read<AppBloc>(),
      ),
      child: DashboardView(),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Column(
        children: [
          Row(
            children: [DashboardBar()],
          )
        ],
      );
    });
  }
}

class DashboardBar extends StatelessWidget {
  const DashboardBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const _ProfileAvatar(),
      const SizedBox(width: 10),
      getUsername(context),
    ]);
  }

  Widget getUsername(BuildContext context) {
    if (context.read<HomeCubit>().state.name == null) {
      return const Text('Hello, User');
    } else {
      return Text('Hello, ${context.read<HomeCubit>().state.name}');
    }
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomCircleAvatar(
      photo: context.read<HomeCubit>().state.photo,
      radius: 30,
    );
  }
}
