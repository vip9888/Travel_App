// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}
class DetailState extends CubitStates {
  DetailState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}
