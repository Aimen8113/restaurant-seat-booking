import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';

class Customtable1 extends StatefulWidget {
  const Customtable1({super.key, required this.table1});

  final String table1;

  @override
  State<Customtable1> createState() => _CustomtableState();
}

class _CustomtableState extends State<Customtable1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Center(
                child: Text(
              widget.table1,
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
            )),
            height: 60,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(12),
                color: Colors.black12),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Container(
                  height: 22,
                  width: 14,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                ),
              ),
              2.hBox,
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Container(
                  height: 22,
                  width: 14,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}



class Customtable2 extends StatefulWidget {
  const Customtable2({super.key, required this.table2});

  final String table2;

  @override
  State<Customtable2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Customtable2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              children: [
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                )
              ],
            ),
          ),
          3.hBox,
          Row(
            children: [
              Container(
                child: Center(
                  child: Text(
                    widget.table2,
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                  ),
                ),
                height: 30,
                width: 95,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black12),
              ),
            ],
          ),
          3.hBox,
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              children: [
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black12),
                )
              ],
            ),
          ),
          6.hBox,
        ],
      ),
    );
  }
}
