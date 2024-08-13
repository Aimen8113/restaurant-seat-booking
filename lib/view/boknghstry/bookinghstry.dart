// bookinghstry.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mainproject_cdm/view/boknghstry/cubit/bookinghistory_cubit.dart';


class Bookinhistory extends StatelessWidget {
  const Bookinhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking History'),
      ),
      body: BlocProvider(
        create: (context) => BookinghistoryCubit()..fetchBookingHistory(),
        child: BlocBuilder<BookinghistoryCubit, BookinghistoryState>(
          builder: (context, state) {
            if (state is BookinghistoryLoaded) {
              return ListView.builder(
                itemCount: state.bookings.length,
                itemBuilder: (context, index) {
                  final booking = state.bookings[index];
                  return ListTile(
                    title: Text(booking['table']),
                    subtitle: Text(
                      '${DateFormat.yMd().format(booking['date'].toDate())} at ${booking['time']}',
                    ),
                  );
                },
              );
            } else if (state is BookinghistoryError) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}