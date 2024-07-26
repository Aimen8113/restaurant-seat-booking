import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mainproject_cdm/view/booking/cubit/booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit()
      : super(BookingState(
          selectedDate: DateTime.now(),
          selectedTable: null,
        ));

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  void selectTime(TimeOfDay time) {
    emit(state.copyWith(selectedTime: time));
  }

  void selectSlot(String slot) {
    emit(state.copyWith(selectedSlot: slot));
  }

  void selectTable(String table) {
    emit(state.copyWith(selectedTable: table));
  }
}