import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/profile/cubit/profile_cubit.dart';
import 'package:hs_mobile_app/widgets/custom_circle_avatar.dart';

class VisualProfileForm extends StatelessWidget {
  const VisualProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                _ProfileAvatar(),
                SizedBox(
                  height: 8
                ),
                _NameField(),
                SizedBox(
                  height: 8
                ),
                _EmailField()
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCircleAvatar(photo: context.read<ProfileCubit>().state.photo);
  }
}

class _NameField extends StatelessWidget {
  const _NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.read<ProfileCubit>().state.name == null
        ? const Text('No Name Provided')
        : Text(context.read<ProfileCubit>().state.name!);
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.read<ProfileCubit>().state.email == null
        ? const Text('No Email Provided')
        : Text(context.read<ProfileCubit>().state.email!.value);
    ;
  }
}
