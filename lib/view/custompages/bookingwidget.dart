import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';

class Custombooking extends StatelessWidget {
  const Custombooking({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
