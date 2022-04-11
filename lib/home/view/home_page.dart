import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocation_repository/geolocation_repository.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/home/home.dart';
import 'package:hs_mobile_app/home/view/dashboard_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) {
        return HomeCubit(
          appBloc: context.read<AppBloc>(),
          geolocationRepository: context.read<IGeolocationRepository>(),
          dataRepository: context.read<IDataRepository>(),
        );
      },
      child: const DashboardView(),
    );
  }
}
