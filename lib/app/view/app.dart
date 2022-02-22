import 'package:authentication_repository/authentication_repository.dart';
import 'package:blogs_repository/blogs_repository.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/theme.dart';
import 'package:storage_repository/storage_repository.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required IAuthenticationRepository authenticationRepository,
    required IBlogRepository blogRepository,
    required IStorageRepository storageRepository,
  })  : _authenticationRepository = authenticationRepository,
        _blogRepository = blogRepository,
        _storageRepository = storageRepository,
        super(key: key);

  final IAuthenticationRepository _authenticationRepository;
  final IBlogRepository _blogRepository;
  final IStorageRepository _storageRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _storageRepository),
        RepositoryProvider.value(value: _blogRepository),
      ],
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: FlowBuilder(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
