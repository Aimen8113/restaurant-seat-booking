import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';

class Customcontainer extends StatefulWidget {
  const Customcontainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  State<Customcontainer> createState() => _CustomcontainerState();
}

class _CustomcontainerState extends State<Customcontainer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(widget.image),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    ]);
  }
}

/*/*****************/////////////// */

class customfood extends StatefulWidget {
  const customfood({super.key, required this.food, required this.hotelname});

  final String food;
  final String hotelname;

  @override
  State<customfood> createState() => _customfoodState();
}

class _customfoodState extends State<customfood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.food,
              style: const TextStyle(fontSize:14,fontWeight:FontWeight.w500),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              size:14,
            ),
            Text(
              widget.hotelname,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    );
  }
}
