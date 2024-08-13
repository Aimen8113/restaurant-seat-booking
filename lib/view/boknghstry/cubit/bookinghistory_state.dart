part of 'bookinghistory_cubit.dart';



abstract class BookinghistoryState {}

class BookinghistoryInitial extends BookinghistoryState {}

class BookinghistoryLoaded extends BookinghistoryState {
  final List<Map<String, dynamic>> bookings;

  BookinghistoryLoaded(this.bookings);
}

class BookinghistoryError extends BookinghistoryState {
  final String message;

  BookinghistoryError(this.message);
}