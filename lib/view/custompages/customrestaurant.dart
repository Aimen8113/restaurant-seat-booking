import 'package:flutter/material.dart';

class Customres extends StatelessWidget {
  const Customres(
      {super.key,
      required this.hotel,
      required this.location,
      required this.image});
  final String hotel;
  final String location;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 13,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 3), // Add some space between icon and text
                        
                          // Prevent text overflow
                          Text(
                            location,
                            style: TextStyle(fontSize: 10),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
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
