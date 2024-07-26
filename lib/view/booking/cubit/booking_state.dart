import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class BookingState {
  final DateTime selectedDate;
  final TimeOfDay? selectedTime;
  final String? selectedSlot;
  final String? selectedTable;

  BookingState({
    required this.selectedDate,
    this.selectedTime,
    this.selectedSlot,
    this.selectedTable,
  });

  BookingState copyWith({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
    String? selectedSlot,
    String? selectedTable,
  }) {
    return BookingState(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
      selectedSlot: selectedSlot ?? this.selectedSlot,
      selectedTable: selectedTable ?? this.selectedTable,
    );
  }
}