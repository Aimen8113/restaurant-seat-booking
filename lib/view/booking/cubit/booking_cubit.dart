// booking_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mainproject_cdm/view/booking/cubit/booking_state.dart';
import 'package:mainproject_cdm/view/orderfood.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingState(
    selectedDate: DateTime.now(),
    selectedTime: null,
    selectedTable: null,
  ));

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  void selectTime(TimeOfDay time) {
    emit(state.copyWith(selectedTime: time));
  }

  void selectTable(String table) {
    emit(state.copyWith(selectedTable: table));
  }

  Future<void> bookTable(BuildContext context) async {
    if (state.selectedTable != null && state.selectedTime != null) {
      try {
        final user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          final bookingData = {
            'date': state.selectedDate,
            'time': state.selectedTime?.format(context),
            'table': state.selectedTable,
            'userId': user.uid,
          };

          await FirebaseFirestore.instance
              .collection('booking_history')
              .add(bookingData);

          showBookingConfirmation(context);
        }
      } catch (e) {
        print('Error booking table: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error booking table: $e')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select both a table and a time')),
      );
    }
  }

  void showBookingConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Booking Confirmed'),
        content: Text(
          'Table ${state.selectedTable} booked for ${DateFormat.yMd().format(state.selectedDate)} at ${state.selectedTime?.format(context) ?? 'Not Set'}',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Orderfood()),
            ),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}