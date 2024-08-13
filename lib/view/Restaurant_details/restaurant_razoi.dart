import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/resseetbooking.dart';
import 'package:mainproject_cdm/view/restaurant_list/Restaurnt_list.dart';

class Restaurentrazoi extends StatelessWidget {
  const Restaurentrazoi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/IMG_2025.280.jpg"))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  "Paragon Hotel & Restaurant",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              20.wBox,
              Icon(
                Icons.star,
                size: 16,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 16,
                color: Color.fromARGB(255, 139, 134, 134),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  "Facilities",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ),
              5.hBox,
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Colors.black38,
                ),
              ),
              Text(
                "Car & bike parking",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          5.hBox,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Colors.black38,
                ),
              ),
              Text(
                "24/7 Water facility",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          5.hBox,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Colors.black38,
                ),
              ),
              Text(
                "Reserved seat booking",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          5.hBox,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Colors.black38,
                ),
              ),
              Text(
                "100 seating capacity",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          5.hBox,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Colors.black38,
                ),
              ),
              Text(
                "Outside catering service",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          25.hBox,
          InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context) =>Mybooking(),));
          },
            child: Container(
              child: Center(
                  child: Text(
                "View available seats",
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
      ),
    );
  }
}