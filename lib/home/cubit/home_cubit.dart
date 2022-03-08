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
    final location = await _geolocation.determinePosition();
    emit(
      HomeState(
        name: _bloc.state.user.name,
        photo: _bloc.state.user.photo,
        covidCases: state.covidCases,
        city: location[0],
        country: location[1],
        selectedCountry: 'United States',
      ),
    );
  }

  void countryValueUpdated(String? value) {
    emit(HomeState(
      name: _bloc.state.user.name,
      photo: _bloc.state.user.photo,
      city: state.city,
      country: state.country,
      selectedCountry: value,
      covidCases: state.covidCases,
    ));
  }

  void covidCaseUpdated() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(state.covidCases);
      Random random = new Random();
      int randomNumber = random.nextInt(10);
      emit(
        HomeState(
            name: _bloc.state.user.name,
            photo: _bloc.state.user.photo,
            city: state.city,
            country: state.country,
            selectedCountry: state.selectedCountry,
            covidCases: state.covidCases! + randomNumber),
      );
    });
  }
}
