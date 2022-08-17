// ignore_for_file: prefer_const_constructors
import 'dart:io'; 
import 'package:flutter/material.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:hs_mobile_app/auth/auth.dart';
import 'package:mocktail/mocktail.dart';
import 'package:storage_repository/storage_repository.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

class MockStorage extends Mock
    implements IStorageRepository {}

class MockFile extends Mock 
    implements File {}

class MyTypeFakeFile extends Fake implements File {}

void main() {
  // // this if for when you mock the getImage() function directly instead of using the imaging picking mock class
  // // however, stubbing getImage() doesn't work because signupbcubit's uploadImage() function will always call
  // // the actual implementation of getImage() rather than the stubbed function in the test file here. 
  // WidgetsFlutterBinding.ensureInitialized();

  const invalidEmailString = 'invalid';
  const invalidEmail = Email.dirty(invalidEmailString);

  const validEmailString = 'test@gmail.com';
  const validEmail = Email.dirty(validEmailString);

  const invalidPasswordString = 'invalid';
  const invalidPassword = Password.dirty(invalidPasswordString);

  const validPasswordString = 't0pS3cret1234';
  const validPassword = Password.dirty(validPasswordString);

  const invalidConfirmedPasswordString = 'invalid';
  const invalidConfirmedPassword = ConfirmedPassword.dirty(
    password: validPasswordString,
    value: invalidConfirmedPasswordString,
  );

  const validConfirmedPasswordString = 't0pS3cret1234';
  const validConfirmedPassword = ConfirmedPassword.dirty(
    password: validPasswordString,
    value: validConfirmedPasswordString,
  );

  const testImageUrl = 'Test_Image_Url';
  const galleryTrue = true;
  const galleryFalse = false;

  group('SignUpCubit', () {
    late IAuthenticationRepository authenticationRepository_test;

    late IStorageRepository storageRepository_test;

    late IImagePicker imagePickerMock;

    late File mockFile;

    setUp(() {

      registerFallbackValue(MyTypeFakeFile());
      registerFallbackValue(true);

      authenticationRepository_test = MockAuthenticationRepository();
      when(
        () => authenticationRepository_test.signUp(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async {});

      // mock file for avator image
      mockFile = MockFile();

      storageRepository_test = MockStorage();
      when(
        () => storageRepository_test.uploadImage(
          image: any<File>(named: 'image'),
        ),
      ).thenAnswer((_) async { return testImageUrl; });

      // mock the image picker
      imagePickerMock = MockImagePicker(mockFile);
    });

    test('initial state is SignUpState', () {
      expect(SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock).state, SignUpState());
    });

    group('emailChanged', () {
      blocTest<SignUpCubit, SignUpState>(
        'emits [invalid] when email/password/confirmedPassword are invalid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        act: (cubit) => cubit.emailChanged(invalidEmailString),
        expect: () => const <SignUpState>[
          SignUpState(email: invalidEmail, status: FormzStatus.invalid),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [valid] when email/password/confirmedPassword are valid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          password: validPassword,
          confirmedPassword: validConfirmedPassword,
        ),
        act: (cubit) => cubit.emailChanged(validEmailString),
        expect: () => const <SignUpState>[
          SignUpState(
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
            status: FormzStatus.valid,
          ),
        ],
      );
    });

    group('passwordChanged', () {
      blocTest<SignUpCubit, SignUpState>(
        'emits [invalid] when email/password/confirmedPassword are invalid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        act: (cubit) => cubit.passwordChanged(invalidPasswordString),
        expect: () => const <SignUpState>[
          SignUpState(
            confirmedPassword: ConfirmedPassword.dirty(
              password: invalidPasswordString,
            ),
            password: invalidPassword,
            status: FormzStatus.invalid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [valid] when email/password/confirmedPassword are valid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          email: validEmail,
          confirmedPassword: validConfirmedPassword,
        ),
        act: (cubit) => cubit.passwordChanged(validPasswordString),
        expect: () => const <SignUpState>[
          SignUpState(
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
            status: FormzStatus.valid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [valid] when confirmedPasswordChanged is called first and then '
        'passwordChanged is called',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          email: validEmail,
        ),
        act: (cubit) => cubit
          ..confirmedPasswordChanged(validConfirmedPasswordString)
          ..passwordChanged(validPasswordString),
        expect: () => const <SignUpState>[
          SignUpState(
            email: validEmail,
            confirmedPassword: validConfirmedPassword,
            status: FormzStatus.invalid,
          ),
          SignUpState(
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
            status: FormzStatus.valid,
          ),
        ],
      );
    });

    group('confirmedPasswordChanged', () {
      blocTest<SignUpCubit, SignUpState>(
        'emits [invalid] when email/password/confirmedPassword are invalid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        act: (cubit) {
          cubit.confirmedPasswordChanged(invalidConfirmedPasswordString);
        },
        expect: () => const <SignUpState>[
          SignUpState(
            confirmedPassword: invalidConfirmedPassword,
            status: FormzStatus.invalid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [valid] when email/password/confirmedPassword are valid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(email: validEmail, password: validPassword),
        act: (cubit) => cubit.confirmedPasswordChanged(
          validConfirmedPasswordString,
        ),
        expect: () => const <SignUpState>[
          SignUpState(
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
            status: FormzStatus.valid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [valid] when passwordChanged is called first and then '
        'confirmedPasswordChanged is called',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(email: validEmail),
        act: (cubit) => cubit
          ..passwordChanged(validPasswordString)
          ..confirmedPasswordChanged(validConfirmedPasswordString),
        expect: () => const <SignUpState>[
          SignUpState(
            email: validEmail,
            password: validPassword,
            confirmedPassword: ConfirmedPassword.dirty(
              password: validPasswordString,
            ),
            status: FormzStatus.invalid,
          ),
          SignUpState(
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
            status: FormzStatus.valid,
          ),
        ],
      );
    });

    group('signUpFormSubmitted', () {
      blocTest<SignUpCubit, SignUpState>(
        'does nothing when status is not validated',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        act: (cubit) => cubit.signUpFormSubmitted(),
        expect: () => const <SignUpState>[],
      );

      blocTest<SignUpCubit, SignUpState>(
        'calls signUp with correct email/password/confirmedPassword',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.valid,
          email: validEmail,
          password: validPassword,
          confirmedPassword: validConfirmedPassword,
        ),
        act: (cubit) => cubit.signUpFormSubmitted(),
        verify: (_) {
          verify(
            () => authenticationRepository_test.signUp(
              email: validEmailString,
              password: validPasswordString,
            ),
          ).called(1);
        },
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [submissionInProgress, submissionSuccess] '
        'when signUp succeeds',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.valid,
          email: validEmail,
          password: validPassword,
          confirmedPassword: validConfirmedPassword,
        ),
        act: (cubit) => cubit.signUpFormSubmitted(),
        expect: () => const <SignUpState>[
          SignUpState(
            status: FormzStatus.submissionInProgress,
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
          ),
          SignUpState(
            status: FormzStatus.submissionSuccess,
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
          )
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [submissionInProgress, submissionFailure] '
        'when signUp fails',
        setUp: () {
          when(
            () => authenticationRepository_test.signUp(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenThrow(Exception('oops'));
        },
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.valid,
          email: validEmail,
          password: validPassword,
          confirmedPassword: validConfirmedPassword,
        ),
        act: (cubit) => cubit.signUpFormSubmitted(),
        expect: () => const <SignUpState>[
          SignUpState(
            status: FormzStatus.submissionInProgress,
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
          ),
          SignUpState(
            status: FormzStatus.submissionFailure,
            email: validEmail,
            password: validPassword,
            confirmedPassword: validConfirmedPassword,
          )
        ],
      );
    });

    group('uploadAvatar', () {
      blocTest<SignUpCubit, SignUpState>(
        'emits [photo_url, valid] '
        'when upload succeeds and initial status is valid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.valid,
        ),
        act: (cubit) => cubit.uploadAvatar(galleryTrue),
        expect: () => const <SignUpState>[
          SignUpState(
            photo: testImageUrl,
            status: FormzStatus.valid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [photo_url, valid] '
        'when upload succeeds and initial status is pure',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.pure,
        ),
        act: (cubit) => cubit.uploadAvatar(galleryTrue),
        expect: () => const <SignUpState>[
          SignUpState(
            photo: testImageUrl,
            status: FormzStatus.valid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [photo_url, submissionInProgress] '
        'when upload succeeds and initial status is invalid',
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.invalid,
        ),
        act: (cubit) => cubit.uploadAvatar(galleryTrue),
        expect: () => const <SignUpState>[
          SignUpState(
            photo: testImageUrl,
            status: FormzStatus.invalid,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [file_system_exception_message, submissionFailure] '
        'when upload fails with FileSystemException',
        setUp: () {
          when(
            () => storageRepository_test.uploadImage(
              image: any<File>(named: 'image'),
            ),
          ).thenThrow(FileSystemException('file system exception test'));
        },
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.submissionInProgress,
        ),
        act: (cubit) => cubit.uploadAvatar(galleryTrue),
        expect: () => const <SignUpState>[
          SignUpState(
            errorMessage: 'file system exception test',
            status: FormzStatus.submissionFailure,
          ),
        ],
      );

      blocTest<SignUpCubit, SignUpState>(
        'emits [file_system_exception_message, submissionFailure] '
        'when upload fails for other reasons',
        setUp: () {
          when(
            () => storageRepository_test.uploadImage(
              image: any<File>(named: 'image'),
            ),
          ).thenThrow(Exception('some other exception test'));
        },
        build: () => SignUpCubit(authenticationRepository: authenticationRepository_test, storageRepository: storageRepository_test, imagePicker: imagePickerMock),
        seed: () => SignUpState(
          status: FormzStatus.submissionInProgress,
        ),
        act: (cubit) => cubit.uploadAvatar(galleryTrue),
        expect: () => const <SignUpState>[
          SignUpState(
            status: FormzStatus.submissionFailure,
          ),
        ],
      );
    });
  });
}