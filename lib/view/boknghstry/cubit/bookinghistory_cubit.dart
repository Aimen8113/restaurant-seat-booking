import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bookinghistory_state.dart';

class BookinghistoryCubit extends Cubit<BookinghistoryState> {
  BookinghistoryCubit() : super(BookinghistoryInitial());
}
