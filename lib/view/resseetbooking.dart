import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/tablebooking/tablebooking.dart';
import 'package:table_calendar/table_calendar.dart';

class Resbooking extends StatefulWidget {
  const Resbooking({super.key});

  @override
  State<Resbooking> createState() => _ResbookingState();
}

class _ResbookingState extends State<Resbooking> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day,DateTime focusedDay){
    setState(() {
      today=day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children:[Text(""+today.toString().split("")[0]),
                Container(
          child: InkWell(onTap: () {
            showDialog(context: context, builder:(BuildContext context) {return AlertDialog(content: SingleChildScrollView(child: Column(children: [ TableCalendar(headerStyle: HeaderStyle(formatButtonVisible: false),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate:(day) => isSameDay(day,today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
                ),],),),);
              
            },);
          },
          ),
        ),30.hBox,
         InkWell(onTap: () {
           Navigator.of(context).push(MaterialPageRoute(builder:(context) => Tablebooking(),));
         },
           child: Container(
                child: Center(
                    child: Text(
                  "Book your slot",
                  style: TextStyle(fontSize:13,fontWeight: FontWeight.w400,
                    color: Color.fromARGB(216, 2, 62, 4),
                  ),
                )),
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black26,
                ),
              ),
         ),
      ],
    );
  }
}