import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/Restaurnt_details.dart';
import 'package:mainproject_cdm/view/curserslider.dart';
import 'package:mainproject_cdm/view/custompages/custom.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.menu),
          title: Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/logo without name.png"),
                ),
                const Text(
                  "Restro",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                70.wBox,
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/best-look-dating-profile-picture-4-1494004363.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselWithContainer(),
                20.hBox,
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "popular restaurants",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    70.wBox,
                    const Text(
                      "See All",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    const Icon(Icons.double_arrow)
                  ],
                ),
                20.hBox,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Restaurent(),
                            ));
                          },
                          child: const Customcontainer(
                              image: "assets/IMG_2025.280.jpg")),
                    ),
                    18.wBox,
                    const Customcontainer(
                        image:
                            "assets/photorealistic-wedding-venue-with-intricate-decor-ornaments.jpg"),
                  ],
                ),
                10.hBox,
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: customfood(food: "Paragon", hotelname: "Calicut"),
                    ),
                    115.wBox,
                    const customfood(food: "Ginger house", hotelname: "kochi"),
                  ],
                ),
                15.hBox,
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Customcontainer(
                          image:
                              "assets/restaurant-table-14-persons-restaurant-hall-with-brick-walls-wide-windows-wood-ceiling.jpg"),
                    ),
                    18.wBox,
                    const Customcontainer(image: "assets/IMG_2025.280.jpg"),
                  ],
                ),
                10.hBox,
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: customfood(food: "Rasoi", hotelname: "kochi"),
                    ),
                    125.wBox,
                    const customfood(food: "Zaatar", hotelname: "Calicut"),
                  ],
                ),
                25.hBox,
              ],
            ),
          ),
        ));
  }
}
