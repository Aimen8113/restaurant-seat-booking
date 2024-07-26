import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';

class Customtable1 extends StatelessWidget {
  const Customtable1(
      {super.key, required this.table1, required this.isSelected});

  final String table1;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Center(
              child: Text(
                table1,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
              ),
            ),
            height: 60,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isSelected ? Colors.green : Colors.black12,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Container(
                  height: 22,
                  width: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
              ),
              2.hBox,
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Container(
                  height: 22,
                  width: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Customtable2 extends StatelessWidget {
  const Customtable2(
      {super.key, required this.table2, required this.isSelected});

  final String table2;
  final bool isSelected;

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
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          3.hBox,
          Row(
            children: [
              Container(
                child: Center(
                  child: Text(
                    table2,
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                  ),
                ),
                height: 30,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: isSelected ? Colors.green : Colors.black12,
                ),
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
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
                2.wBox,
                Container(
                  height: 14,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: isSelected ? Colors.green : Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          6.hBox,
        ],
      ),
    );
  }
}
