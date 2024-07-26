// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:mainproject_cdm/sizedbox.dart';
// import 'package:mainproject_cdm/view/booking/cubit/booking_cubit.dart';
// import 'package:mainproject_cdm/view/booking/cubit/booking_state.dart';
// import 'package:mainproject_cdm/view/orderfood.dart';
// import 'package:mainproject_cdm/view/tablebooking/tablebooking.dart';

// class BookingSeatView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.amber),
//         backgroundColor: Colors.black,
//         title: Text(
//           'Restaurant Seat Booking',
//           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//         ),
//       ),
//       body: BlocProvider(
//         create: (context) => BookingCubit(context),
//         child: BlocBuilder<BookingCubit, BookingState>(
//           builder: (context, state) {
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Select Date:',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//                   ),
//                   SizedBox(height: 8),
//                   InkWell(
//                     onTap: () => _selectDate(context),
//                     child: Container(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.blue),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             DateFormat.yMMMd().format(state.selectedDate),
//                             style: TextStyle(fontWeight: FontWeight.w600),
//                           ),
//                           Icon(Icons.calendar_today, color: Colors.black),
//                         ],
//                       ),
//                     ),
//                   ),
//                   16.hBox,
//                   Text(
//                     'Select Time:',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   8.hBox,
//                   InkWell(
//                     onTap: () => _selectTime(context),
//                     child: Container(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.orange),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             state.selectedTime == null
//                                 ? 'Select your time'
//                                 : state.selectedTime!.format(context),
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Icon(Icons.access_time, color: Colors.black),
//                         ],
//                       ),
//                     ),
//                   ),
//                   16.hBox,
//                   Text(
//                     'Select Table:',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   8.hBox,
//                   InkWell(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => Tablebooking()
//                       ));
//                     },
//                     child: Container(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.orange),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             state.selectedTable != null
//                                 ? 'Selected Table: ${state.selectedTable}'
//                                 : 'Select your table',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Icon(Icons.table_bar, color: Colors.black),
//                         ],
//                       ),
//                     ),
//                   ),
//                   16.hBox,
//                   Center(
//                     child: InkWell(
//                       onTap: () => _bookTable(context, state),
//                       child: Container(
//                         width: 100,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.black54,
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Center(
//                           child: Text(
//                             "Book",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: context.read<BookingCubit>().state.selectedDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null) {
//       context.read<BookingCubit>().selectDate(picked);
//     }
//   }

//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime:
//           context.read<BookingCubit>().state.selectedTime ?? TimeOfDay.now(),
//     );
//     if (picked != null) {
//       context.read<BookingCubit>().selectTime(picked);
//     }
//   }

//   void _bookTable(BuildContext context, BookingState state) {
//     if (state.selectedTable != null && state.selectedTime != null) {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           backgroundColor: Colors.lightBlue,
//           title: Text('Booking Confirmed'),
//           content: Text(
//             'Table ${state.selectedTable} booked for ${DateFormat.yMd().format(state.selectedDate)} at ${state.selectedTime?.format(context) ?? 'Not Set'}',
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => Orderfood())),
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please select both a table and a time')),
//       );
//     }
//   }
// }
 import 'package:flutter/material.dart';

class Boknghstry extends StatelessWidget {
  const Boknghstry({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
