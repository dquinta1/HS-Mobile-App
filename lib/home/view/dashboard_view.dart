import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/home/home.dart';
import 'package:hs_mobile_app/home/view/widgets/home_widgets.dart';
import 'package:hs_mobile_app/home/view/widgets/introduction.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  Widget _child = const Center(child: CircularProgressIndicator());
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.locationLoading ||
            state.globalSummaryLoading ||
            state.countriesLoading) {
          setState(() {
            _child = const Center(child: CircularProgressIndicator());
          });
        } else {
          setState(() {
            _child = SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UserProfile(),
                  SizedBox(height: 20),
                  Introduction(),
                  Tracker(),
                ],
              ),
            );
          });
        }
      },
      child: _child,
    );
  }
}
