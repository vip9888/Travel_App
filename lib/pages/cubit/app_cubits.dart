import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/model/data_model.dart';
import 'package:flutter_cubit/pages/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/pages/detail_page.dart';

import '../../services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({
    required this.data,
  }) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

}
