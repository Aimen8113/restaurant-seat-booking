import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_state.dart';

class BottomCubit extends Cubit<BottomState> {
  BottomCubit() : super(BottomInitial());
}
