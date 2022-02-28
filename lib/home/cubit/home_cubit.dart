import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hs_mobile_app/app/app.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required AppBloc bloc})
      : _bloc = bloc,
        super(const HomeState());
  final AppBloc _bloc;

  void profileLoaded() {
    emit(HomeState(
      name: _bloc.state.user.name,
      photo: _bloc.state.user.photo,
    ));
  }
}
