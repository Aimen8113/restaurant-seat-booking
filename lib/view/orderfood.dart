import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mainproject_cdm/sizedbox.dart';

class Orderfood extends StatelessWidget {
  const Orderfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 70, 171, 74)),
        backgroundColor: Colors.white,
       
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/undraw_Order_confirmed_re_g0if 1.jpg"))),
              ),
            ),
            10.hBox,
            LottieBuilder.network(
              "https://lottie.host/146b6e46-c0df-40a0-9959-30aa10e45035/hb4xEfBDUZ.json",
              height: 80,
              width: 80,
            ),
            15.hBox,
            Text(
              "Your Table was",
              style: TextStyle(
                  color: Color.fromARGB(255, 70, 171, 74),
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Reserved Succesfully",
              style: TextStyle(
                  color: Color.fromARGB(255, 70, 171, 74),
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            30.hBox,
            Text(
              "Please respect our policies and do come to\nyour reserved table with in the specified time",
              style: TextStyle(color: Colors.black54, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
