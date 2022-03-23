import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocation_repository/geolocation_repository.dart';
import 'package:hs_mobile_app/app/app.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final AppBloc _appBloc;
  final IGeolocationRepository _geolocationRepository;
  HomeCubit(
      {required AppBloc appBloc,
      required IGeolocationRepository geolocationRepository})
      : _appBloc = appBloc,
        _geolocationRepository = geolocationRepository,
        super(const HomeState());

  void profileLoaded() {
    emit(
      HomeState(
        name: _appBloc.state.user.name,
        photo: _appBloc.state.user.photo,
      ),
    );
  }

  Future<void> locationUpdated() async {
    emit(state.copyWith(locationLoading: true));
    try {
      final location = await _geolocationRepository.determinePosition();
      emit(
        state.copyWith(
          locationLoading: false,
          city: location.city,
          country: location.country,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          locationLoading: false,
          city: 'unknown',
          country: 'unknown',
        ),
      );
    }
  }
}
