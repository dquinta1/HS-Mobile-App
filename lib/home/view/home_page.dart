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
        )
          ..profileLoaded()
          ..locationUpdated();
      },
      child: const DashboardView(),
    );
  }
}

// Widget getCountrySelector(BuildContext context) {
//   return DropdownButton<String>(
//     value: context.read<HomeCubit>().state.selectedCountry,
//     icon: const Icon(Icons.arrow_downward),
//     elevation: 16,
//     style: const TextStyle(color: Colors.black),
//     underline: Container(
//       height: 2,
//       color: Colors.deepPurpleAccent,
//     ),
//     onChanged: (newValue) {
//       context.read<HomeCubit>().countryValueUpdated(newValue);
//     },
//     items: context
//         .read<HomeCubit>()
//         .state
//         .countryList
//         ?.map<DropdownMenuItem<String>>((String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList(),
//   );
// }

// class CovidCasesWidget extends StatelessWidget {
//   const CovidCasesWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           child: Column(
//             children: [
//               Text('Confirmed:', style: TextStyle(fontSize: 18)),
//               Text('${context.read<HomeCubit>().state.covidCases}',
//                   style: TextStyle(fontSize: 22)),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class SafetyTipsWidget extends StatelessWidget {
//   const SafetyTipsWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(20)),
//         border: Border.all(
//           width: 1,
//           color: Colors.blue, // red as border color
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(height: 15),
//           const Icon(Icons.privacy_tip_rounded, size: 50),
//           Column(
//             children: [
//               SizedBox(height: 10),
//               const Text(
//                   'Know safety tips and precautions from verified resources.'),
//               SizedBox(height: 10),
//               OutlinedButton(
//                 onPressed: () {},
//                 style: ButtonStyle(
//                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30.0))),
//                 ),
//                 child: const Text("Learn more"),
//               ),
//               SizedBox(height: 10),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
