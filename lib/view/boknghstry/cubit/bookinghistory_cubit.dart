import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bookinghistory_state.dart';

class BookinghistoryCubit extends Cubit<BookinghistoryState> {
  BookinghistoryCubit() : super(BookinghistoryInitial());

  Future<void> fetchBookingHistory() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final snapshot = await FirebaseFirestore.instance
            .collection('booking_history')
            .where('userId', isEqualTo: user.uid)
            .get();

        final bookings = snapshot.docs.map((doc) => doc.data()).toList();
        emit(BookinghistoryLoaded(bookings));
      } else {
        emit(BookinghistoryError('User not logged in'));
      }
    } catch (e) {
      emit(BookinghistoryError('Error fetching booking history: $e'));
    }
  }
}