import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/resseetbooking.dart';

class Restaurent extends StatelessWidget {
  const Restaurent({super.key});

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
              "Paragon boasts an unmatched heritage in culinary excellence.Paragon has been a delectable part of happy memories for families in Kerala and the UAE.Acclaimed as India’s best restaurant for coastal cuisine (Times Now Foodie Awards] and consistently ranked among Dubai’s best restau rants (TimeOut Awards and Ahlan Masala Awards], Paragon continues to set the highest standards of taste and service.",
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
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => Resbooking(),));
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
