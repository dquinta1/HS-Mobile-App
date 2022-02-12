import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hs_mobile_app/profile/cubit/profile_cubit.dart';
import 'package:hs_mobile_app/widgets/widgets.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          //TODO: notify the user of success (UX)
          context.read<ProfileCubit>().editing(false);
        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(state.errorMessage ?? 'Profile Update Failure'),
            ));
        }
      },
      child: BlocBuilder<ProfileCubit, ProfileState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : Align(
                  alignment: const Alignment(0, -1 / 3),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      _PhotoUpload(),
                      SizedBox(height: 8),
                      _NameInput(),
                      SizedBox(height: 8),
                      _EmailInput(),
                      SizedBox(height: 8),
                      _PasswordInput(),
                      SizedBox(height: 8),
                      _ConfirmedPasswordInput(),
                      SizedBox(height: 8),
                      _FormButtons(),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class _PhotoUpload extends StatelessWidget {
  const _PhotoUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous.photo != current.photo,
      builder: (context, state) {
        return TextButton(
          onPressed: () {
            throw UnimplementedError('uploadProfileAvatar()');
          },
          child: CustomCircleAvatar(
              photo: context.read<ProfileCubit>().state.photo),
        );
      },
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextField(
          key: const Key('profileForm_nameInput_textField'),
          onChanged: (name) => context.read<ProfileCubit>().nameChanged(name),
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            labelText: 'name',
            helperText: '',
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('profileForm_emailInput_textField'),
          onChanged: (email) =>
              context.read<ProfileCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'email',
            helperText: '',
            errorText: state.email!.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('profileForm_passwordInput_textField'),
          onChanged: (value) =>
              context.read<ProfileCubit>().passwordChanged(value),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            helperText: '',
            errorText: state.password!.invalid ? 'invalid password' : null,
          ),
        );
      },
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  const _ConfirmedPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return TextField(
          key: const Key('profileForm_confirmedPasswordInput_textField'),
          onChanged: (value) =>
              context.read<ProfileCubit>().confirmedPasswordChanged(value),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'confirm password',
            helperText: '',
            errorText: state.confirmedPassword!.invalid
                ? 'passwords do not match'
                : null,
          ),
        );
      },
    );
  }
}

class _FormButtons extends StatelessWidget {
  const _FormButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<ProfileCubit>().editProfileFormSubmitted();
          },
          child: const Text('CONFIRM'),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<ProfileCubit>().editing(false);
          },
          child: const Text('CANCEL'),
        ),
      ],
    );
  }
}
