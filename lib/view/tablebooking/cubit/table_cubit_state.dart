import 'package:flutter/material.dart';

@immutable
sealed class TableCubitState {}

final class TableCubitInitial extends TableCubitState {}

final class TableSelected extends TableCubitState {
  final String? selectedTable;

  TableSelected(this.selectedTable);
}
