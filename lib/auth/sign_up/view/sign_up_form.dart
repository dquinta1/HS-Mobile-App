import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hs_mobile_app/auth/auth.dart';
import 'package:hs_mobile_app/widgets/widgets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Navigator.of(context).pop();
        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(state.errorMessage ?? 'Sign Up Failure'),
            ));
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            _PhotoUpload(),
            SizedBox(
              height: 8
            ),
            _NameInput(),
            SizedBox(
              height: 8
            ),
            _EmailInput(),
            SizedBox(
              height: 8
            ),
            _PasswordInput(),
            SizedBox(
              height: 8
            ),
            _ConfirmedPasswordInput(),
            SizedBox(
              height: 8
            ),
            _SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class _PhotoUpload extends StatelessWidget {
  const _PhotoUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.photo != current.photo,
      builder: (context, state) {
        return TextButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (BuildContext dialog) {
              return AlertDialog(
                title: const Text('Change Profile Picture'),
                actions: [
                  ElevatedButton(
                    onPressed: () async {
                      await context
                          .read<SignUpCubit>()
                          .uploadAvatar(true) // pick from gallery
                          .then((_) => Navigator.pop(dialog));
                    },
                    child: const Text('Choose Photo'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await context
                          .read<SignUpCubit>()
                          .uploadAvatar(false) // take photo with camera
                          .then((_) => Navigator.pop(dialog));
                    },
                    child: const Text('Take Photo'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(dialog, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                ],
              );
            },
          ),
          child: CustomCircleAvatar(
              photo: context.read<SignUpCubit>().state.photo),
        );
      },
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_nameInput_textField'),
          onChanged: (name) => context.read<SignUpCubit>().nameChanged(name),
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
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
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
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (value) =>
              context.read<SignUpCubit>().passwordChanged(value),
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
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (value) =>
              context.read<SignUpCubit>().confirmedPasswordChanged(value),
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

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('signUpForm_continue_raisedButton'),
                onPressed: state.status.isValidated
                    ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                    : null,
                child: const Text('SIGN UP'),
              );
      },
    );
  }
}
