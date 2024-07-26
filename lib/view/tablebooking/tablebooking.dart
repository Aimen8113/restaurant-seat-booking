import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/custompages/customtable.dart';
import 'package:mainproject_cdm/view/tablebooking/cubit/table_cubit_cubit.dart';

class Tablebooking extends StatelessWidget {
  const Tablebooking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TableCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: BlocBuilder<TableCubit, String?>(
          builder: (context, selectedTable) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: GestureDetector(
                        onTap: () => context.read<TableCubit>().selectTable("1"),
                        child: Customtable1(
                          table1: "1",
                          isSelected: selectedTable == "1",
                        ),
                      ),
                    ),
                    6.wBox,
                    GestureDetector(
                      onTap: () => context.read<TableCubit>().selectTable("2"),
                      child: Customtable2(
                        table2: "2",
                        isSelected: selectedTable == "2",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: GestureDetector(
                        onTap: () => context.read<TableCubit>().selectTable("3"),
                        child: Customtable1(
                          table1: "3",
                          isSelected: selectedTable == "3",
                        ),
                      ),
                    ),
                  ],
                ),
                25.hBox,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: GestureDetector(
                        onTap: () => context.read<TableCubit>().selectTable("4"),
                        child: Customtable1(
                          table1: "4",
                          isSelected: selectedTable == "4",
                        ),
                      ),
                    ),
                    6.wBox,
                    GestureDetector(
                      onTap: () => context.read<TableCubit>().selectTable("5"),
                      child: Customtable2(
                        table2: "5",
                        isSelected: selectedTable == "5",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: GestureDetector(
                        onTap: () => context.read<TableCubit>().selectTable("6"),
                        child: Customtable1(
                          table1: "6",
                          isSelected: selectedTable == "6",
                        ),
                      ),
                    ),
                  ],
                ),
                25.hBox,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: GestureDetector(
                        onTap: () => context.read<TableCubit>().selectTable("7"),
                        child: Customtable1(
                          table1: "7",
                          isSelected: selectedTable == "7",
                        ),
                      ),
                    ),
                    6.wBox,
                    GestureDetector(
                      onTap: () => context.read<TableCubit>().selectTable("8"),
                      child: Customtable2(
                        table2: "8",
                        isSelected: selectedTable == "8",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: GestureDetector(
                        onTap: () => context.read<TableCubit>().selectTable("9"),
                        child: Customtable1(
                          table1: "9",
                          isSelected: selectedTable == "9",
                        ),
                      ),
                    ),
                  ],
                ),
                40.hBox,
                InkWell(
                  onTap: () {
                    if (selectedTable != null) {
                      Navigator.of(context).pop(selectedTable);
                    }
                  },
                  child: Container(
                    width: 287,
                    height: 48,
                    decoration: BoxDecoration(
                      color: selectedTable != null ? Colors.green : Colors.black45,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Reserve the table",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}