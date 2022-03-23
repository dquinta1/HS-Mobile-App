import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/home/cubit/home_cubit.dart';
import 'package:hs_mobile_app/widgets/widgets.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  Widget getUsernameWidget(BuildContext context) {
    const greetingTextStyle = TextStyle(fontSize: 20);
    if (context.read<HomeCubit>().state.name != null) {
      return Text(
        'Hello, ${context.read<HomeCubit>().state.name}',
        style: greetingTextStyle,
      );
    }
    return const Text(
      'Hello, User',
      style: greetingTextStyle,
    );
  }

  Widget getUserLocationWidget(BuildContext context) {
    final city = context.read<HomeCubit>().state.city;
    final country = context.read<HomeCubit>().state.country;
    return Row(
      children: [
        const Icon(Icons.location_on, size: 12),
        Text(
          '$city, $country',
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }

  Widget getUserAvatarWidget(BuildContext context) {
    return CustomCircleAvatar(
      photo: context.read<HomeCubit>().state.photo,
      radius: 25,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: [
          getUserAvatarWidget(context),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getUsernameWidget(context),
              getUserLocationWidget(context),
            ],
          ),
        ],
      ),
    ]);
  }
}
