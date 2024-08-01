import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'restaurntlist_state.dart';

class RestaurntlistCubit extends Cubit<RestaurntlistState> {
  RestaurntlistCubit() : super(RestaurntlistInitial());
}
