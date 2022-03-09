import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocation/geoservice.dart';
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
        geolocationService: GeolocationService(),
      ),
      child: DashboardView(),
    );
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).profileLoaded();
    BlocProvider.of<HomeCubit>(context).locationUpdated();
    BlocProvider.of<HomeCubit>(context).covidCaseUpdated();
  }

  @override
  Widget build(BuildContext context) {
    Widget _child = const Center(child: CircularProgressIndicator());
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state.locationLoading) return _child;
      return Column(
        children: [
          Row(
            children: const [SizedBox(height: 80), DashboardBar()],
          ),
          SizedBox(height: 20),
          SafetyTipsWidget(),
          SizedBox(height: 20),
          CovidCasesWidget()
        ],
      );
    });
  }
}

class CovidCasesWidget extends StatelessWidget {
  const CovidCasesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Text('Confirmed:', style: TextStyle(fontSize: 18)),
              Text('${context.read<HomeCubit>().state.covidCases}',
                  style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ],
    );
  }
}

class SafetyTipsWidget extends StatelessWidget {
  const SafetyTipsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          width: 1,
          color: Colors.blue, // red as border color
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 15),
          const Icon(Icons.privacy_tip_rounded, size: 50),
          Column(
            children: [
              SizedBox(height: 10),
              const Text(
                  'Know safety tips and precautions from verified resources.'),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: const Text("Learn more"),
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardBar extends StatefulWidget {
  const DashboardBar({Key? key}) : super(key: key);

  @override
  State<DashboardBar> createState() => _DashboardBarState();
}

class _DashboardBarState extends State<DashboardBar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: [
          const _ProfileAvatar(),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getUsername(context),
              getLocation(context),
            ],
          ),
        ],
      ),
      //getCountrySelector(context)
    ]);
  }

  Widget getCountrySelector(BuildContext context) {
    return DropdownButton<String>(
      value: context.read<HomeCubit>().state.selectedCountry,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (newValue) {
        context.read<HomeCubit>().countryValueUpdated(newValue);
      },
      items: context
          .read<HomeCubit>()
          .state
          .countryList
          ?.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget getUsername(BuildContext context) {
    const greetingTextStyle = TextStyle(fontSize: 20);
    if (context.read<HomeCubit>().state.name == null) {
      return const Text(
        'Hello, User',
        style: greetingTextStyle,
      );
    } else {
      return Text(
        'Hello, ${context.read<HomeCubit>().state.name}',
        style: greetingTextStyle,
      );
    }
  }

  Widget getLocation(BuildContext context) {
    return Row(children: [
      const Icon(Icons.location_on, size: 12.0),
      Text(
        '${context.read<HomeCubit>().state.city}, ${context.read<HomeCubit>().state.country}',
        style: TextStyle(fontSize: 12),
      )
    ]);
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomCircleAvatar(
      photo: context.read<HomeCubit>().state.photo,
      radius: 25,
    );
  }
}
