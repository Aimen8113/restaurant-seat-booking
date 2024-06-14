import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class CarouselWithContainer extends StatelessWidget {
  final List<String> imgList = [
    'assets/asian-people-having-dinner-party.jpg',
    'assets/friends-eating-conversating-restaurant.jpg', 
    'assets/group-friends-eating-restaurant (1).jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imgList.map((item) => Container(
        width: 330,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      )).toList(),
    );
  }
}


