import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/home/home.dart';

enum NavigationStatus {
  GLOBAL,
  COUNTRY,
}

class Tracker extends StatefulWidget {
  const Tracker({Key? key}) : super(key: key);

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  Widget build(BuildContext context) {
    final navStatus =
        context.read<HomeCubit>().state.navStatus ?? NavigationStatus.GLOBAL;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationOption(
                title: 'Global',
                selected: navStatus == NavigationStatus.GLOBAL,
                onSelected: () {
                  context
                      .read<HomeCubit>()
                      .setNavigationScreen(NavigationStatus.GLOBAL);
                },
              ),
              NavigationOption(
                title: 'Country',
                selected: navStatus == NavigationStatus.COUNTRY,
                onSelected: () {
                  context
                      .read<HomeCubit>()
                      .setNavigationScreen(NavigationStatus.COUNTRY);
                },
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child:
                navStatus == NavigationStatus.GLOBAL ? Global() : CountryView(),
          ),
        ),
      ],
    );
  }
}
