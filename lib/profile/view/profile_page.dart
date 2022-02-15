import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/profile/profile.dart';
import 'package:storage_repository/storage_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (_) => ProfileCubit(
        authenticationRepository: context.read<IAuthenticationRepository>(),
        storageRepository: context.read<IStorageRepository>(),
        bloc: context.read<AppBloc>(),
      ),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous.isEditing != current.isEditing,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: state.isEditing
                ? const Text('Edit Profile')
                : const Text('Profile'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: const [
              //! replace with ternary operator to replace button with null
              //! when profile is being edited, form submission is executed
              //! from the form itself
              _EditButton(), //? replace with regular ElevatedButton
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: state.isEditing
                ? const EditProfileForm()
                : const VisualProfileForm(),
          ),
        );
      },
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous.isEditing != current.isEditing,
      builder: (context, state) {
        if (context.read<ProfileCubit>().state.isEditing) {
          return ElevatedButton(
            key: const Key('editProfileForm_confirm_elevatedButton'),
            onPressed: () {
              //TODO: implement editProfileFormSubmission logic
              context.read<ProfileCubit>().editing(false);
            },
            child: const Text('Done'),
          );
        } else {
          return IconButton(
            key: const Key('visualProfileForm_edit_iconButton'),
            onPressed: () => context.read<ProfileCubit>().editing(true),
            icon: const Icon(Icons.edit),
          );
        }
      },
    );
  }
}
