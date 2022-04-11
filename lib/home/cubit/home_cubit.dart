import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocation_repository/geolocation_repository.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/home/view/widgets/home_widgets.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final AppBloc _appBloc;
  final IGeolocationRepository _geolocationRepository;
  final IDataRepository _dataRepository;
  HomeCubit(
      {required AppBloc appBloc,
      required IGeolocationRepository geolocationRepository,
      required IDataRepository dataRepository})
      : _appBloc = appBloc,
        _geolocationRepository = geolocationRepository,
        _dataRepository = dataRepository,
        super(const HomeState()) {
    profileLoaded();
    locationUpdated();
    getCountryList();
    getGlobalSummary();
    getCountrySummary('united-states');
  }

  void profileLoaded() {
    emit(
      HomeState(
        name: _appBloc.state.user.name,
        photo: _appBloc.state.user.photo,
        navStatus: NavigationStatus.GLOBAL,
      ),
    );
  }

  void setNavigationScreen(NavigationStatus status) {
    emit(
      state.copyWith(navStatus: status),
    );
  }

  void setSelectedCountry(String selectedCountry) {
    emit(state.copyWith(selectedCountry: selectedCountry));
  }

  Future<void> getCountrySummary(String slug) async {
    emit(state.copyWith(summaryLoading: true));
    try {
      final summary = await _dataRepository.getCountrySummary(slug);
      emit(
        state.copyWith(
          summaryLoading: false,
          countrySummary: summary,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          summaryLoading: false,
          countrySummary: List.empty(),
        ),
      );
    }
  }

  Future<void> getCountryList() async {
    emit(state.copyWith(countriesLoading: true));
    try {
      final countries = await _dataRepository.getCountryList();
      emit(
        state.copyWith(
          countriesLoading: false,
          countries: countries,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          countriesLoading: false,
          countries: List.empty(),
        ),
      );
    }
  }

  Future<void> getGlobalSummary() async {
    emit(state.copyWith(globalSummaryLoading: true));
    try {
      final globalSummary = await _dataRepository.getGlobalSummary();
      emit(
        state.copyWith(
          globalSummaryLoading: false,
          globalSummary: globalSummary,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          globalSummaryLoading: false,
          globalSummary: null,
        ),
      );
    }
  }

  Future<void> locationUpdated() async {
    emit(state.copyWith(locationLoading: true));
    try {
      final location = await _geolocationRepository.determinePosition();
      emit(
        state.copyWith(
          locationLoading: false,
          city: location.city,
          currentCountry: location.country,
          selectedCountry: location.country,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          locationLoading: false,
          city: 'unknown',
          currentCountry: 'unknown',
        ),
      );
    }
  }
}
