import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';

class Customres extends StatelessWidget {
  const Customres(
      {super.key,
      required this.hotel,
      required this.location,
      required this.image,
      required this.text});
  final String hotel;
  final String location;
  final ImageProvider? image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 145,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(255, 183, 126, 106),)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: image!,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 13,
                          color: Colors.orange,
                        ),
                        SizedBox(
                            width: 3), // Add some space between icon and text

                        // Prevent text overflow
                        Text(
                          location,
                          style: TextStyle(fontSize: 10),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),35.hBox,
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:80),
                          child: Container(
                            height: 32,
                            width: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color.fromARGB(255, 215, 178, 164),
                              border: Border.all(color: Colors.black12)
                            ),
                            child: Center(
                                child: Text(
                              text,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
