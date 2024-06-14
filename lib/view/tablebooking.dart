import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/custompages/customtable.dart';
import 'package:mainproject_cdm/view/orderfood.dart';

class Tablebooking extends StatelessWidget {
  const Tablebooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Customtable1(table1: "1"),
              ),
              6.wBox,
              const Customtable2(table2: "2"),
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Customtable1(table1: "3"),
              )
            ],
          ),
          25.hBox, Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Customtable1(table1: "4"),
              ),
              6.wBox,
              const Customtable2(table2: "5"),
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Customtable1(table1: "6"),
              )
            ],
          ), 25.hBox, Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Customtable1(table1: "7"),
              ),
              6.wBox,
              const Customtable2(table2: "8"),
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Customtable1(table1: "9"),
              )
            ],
          ),40.hBox,InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Orderfood(),));
          },
            child: Container(
                  width: 287,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "Reserve the table",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  )),
                ),
          ),
          
        ],
      ),
    );
  }
}
