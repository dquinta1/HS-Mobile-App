import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocation/geoservice.dart';
import 'package:hs_mobile_app/app/app.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final AppBloc _bloc;
  final GeolocationService _geolocation;
  HomeCubit(
      {required AppBloc bloc, required GeolocationService geolocationService})
      : _bloc = bloc,
        _geolocation = geolocationService,
        super(const HomeState());

  void profileLoaded() {
    emit(HomeState(
      name: _bloc.state.user.name,
      photo: _bloc.state.user.photo,
      countryList: ['United States', 'India', 'UK', 'Italy'],
      covidCases: 448199668,
    ));
  }

  Future<void> locationUpdated() async {
    emit(state.copyWith(locationLoading: true));
    try {
      final location = await _geolocation.determinePosition();
      emit(
        state.copyWith(
          locationLoading: false,
          city: location[0],
          country: location[1],
          selectedCountry: location[0],
        ),
      );
    } catch (e) {
      emit(state.copyWith(city: 'unknown', country: 'unknown'));
    }
  }

  void countryValueUpdated(String? value) {
    emit(state.copyWith(
      selectedCountry: value,
    ));
  }

  void covidCaseUpdated() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      final random = Random();
      final randomNumber = random.nextInt(10);
      emit(
        state.copyWith(covidCases: state.covidCases! + randomNumber),
      );
    });
  }
}
