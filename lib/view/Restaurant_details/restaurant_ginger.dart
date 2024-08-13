import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/resseetbooking.dart';
import 'package:mainproject_cdm/view/restaurant_list/Restaurnt_list.dart';

class Restaurentginger extends StatelessWidget {
  const Restaurentginger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/photorealistic-wedding-venue-with-intricate-decor-ornaments.jpg"))),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Ginger House",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                125.wBox,
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
                "The Ginger House Restaurant is an extension of the Heritage Arts antique showroom, located in Jew Town, Mattancheri in Kochi. The restaurant is owned by Mr. N.B. Majnu and his family. Mr. N.B. Majnu started this restaurant in the year (please insert correct year of restaurant starting) and has since been pioneering new and innovative concepts with antiques and its legacies.The Ginger House Restaurant is a unique restaurant, built in the lap of history. It is an antique restaurant, designed tastefully with furniture belonging to the old ages. The Ginger House Restaurant gives the customers a wonderful feel of being surrounded by temple Gods, bronze bulls and other pieces of Indian history, lending an other-worldly charm to their dining experience. ",
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
           
          ],
        ),
      ),
    );
  }
}
