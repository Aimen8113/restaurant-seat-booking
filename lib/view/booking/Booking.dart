import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/booking/cubit/booking_cubit.dart';
import 'package:mainproject_cdm/view/booking/cubit/booking_state.dart';
import 'package:mainproject_cdm/view/orderfood.dart';
import 'package:mainproject_cdm/view/tablebooking/tablebooking.dart';

class BookingSeatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 70, 171, 74)),
        backgroundColor: Colors.white,
        title: const Text(
          'Restaurant Seat Booking',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocProvider(
        create: (context) => BookingCubit(),
        child: BlocBuilder<BookingCubit, BookingState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select Date:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () => _selectDate(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromARGB(255, 70, 171, 74)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DateFormat.yMMMd().format(state.selectedDate),
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Icon(Icons.calendar_today, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  16.hBox,
                  const Text(
                    'Select Time:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  8.hBox,
                  InkWell(
                    onTap: () => _selectTime(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 70, 171, 74),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.selectedTime == null
                                ? 'Select your time'
                                : state.selectedTime!.format(context),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.access_time, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  16.hBox,
                  const Text(
                    'Select Table:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  8.hBox,
                  InkWell(
                    onTap: () async {
                      final selectedTable = await Navigator.of(context)
                          .push<String>(MaterialPageRoute(
                              builder: (context) => const Tablebooking()));
                      if (selectedTable != null) {
                        context.read<BookingCubit>().selectTable(selectedTable);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 70, 171, 74),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.selectedTable != null
                                ? 'Selected Table: ${state.selectedTable}'
                                : 'Select your table',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.table_bar, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  16.hBox,
                  Center(
                    child: InkWell(
                      onTap: () => _bookTable(context, state),
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 171, 74),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            "Book",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),15.hBox,
                 
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: context.read<BookingCubit>().state.selectedDate,
      firstDate:DateTime.now(),
      lastDate:DateTime(2101),
    );
    if (picked != null) {
      context.read<BookingCubit>().selectDate(picked);
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime:
          context.read<BookingCubit>().state.selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      context.read<BookingCubit>().selectTime(picked);
    }
  }

  void _bookTable(BuildContext context, BookingState state) {
    if (state.selectedTable != null && state.selectedTime != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.blue,
          title: const Text('Booking Confirmed'),
          content: Text(
            'Table ${state.selectedTable} booked for ${DateFormat.yMd().format(state.selectedDate)} at ${state.selectedTime?.format(context) ?? 'Not Set'}',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Orderfood())),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select both a table and a time')),
      );
    }
  }
}
