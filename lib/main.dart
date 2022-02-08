import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/env_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: dotenv.get('FIREBASE_API_KEY', fallback: 'X'),
      appId: dotenv.get('FIREBASE_APP_ID', fallback: 'X'),
      messagingSenderId:
          dotenv.get('FIREBASE_MESSAGING_SENDER_ID', fallback: 'X'),
      projectId: dotenv.get('FIREBASE_PROJECT_ID', fallback: 'X'),
    ),
  );
  final IAuthenticationRepository authenticationRepository;
  if (envConfig == EnvironmentConfiguration.prod) {
    authenticationRepository = FirebaseAuthentication();

    // awaits until firebase can get user from cache, else user.unauth'd
    await authenticationRepository.user.first;
  } else {
    authenticationRepository = MockAuthentication();
  }

  BlocOverrides.runZoned(
      () => runApp(App(authenticationRepository: authenticationRepository)));
}
