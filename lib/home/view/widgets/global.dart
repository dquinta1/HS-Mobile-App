import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/home/home.dart';

class Global extends StatefulWidget {
  const Global({Key? key}) : super(key: key);

  @override
  State<Global> createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Global Corona Virus Cases',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>()
                    ..getGlobalSummary()
                    ..getCountrySummary('united-states')
                    ..setSelectedCountry('United States');
                },
                child: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        if (context.read<HomeCubit>().state.globalSummary != null)
          GlobalStatistics(context.read<HomeCubit>().state.globalSummary!)
        else
          const Center(child: Text('No data found'))
      ],
    );
  }
}
