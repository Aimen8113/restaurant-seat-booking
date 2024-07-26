import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/Restaurnt_details.dart';
import 'package:mainproject_cdm/view/booking/Booking.dart';
import 'package:mainproject_cdm/view/curserslider.dart';
import 'package:mainproject_cdm/view/custompages/bookingwidget.dart';
import 'package:mainproject_cdm/view/custompages/custom.dart';
import 'package:mainproject_cdm/view/custompages/customrestaurant.dart';
import 'package:table_calendar/table_calendar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
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
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/logo without name.png")),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              ],
            ),
            10.hBox,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 287,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 70, 171, 74),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            18.hBox,Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 287,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 70, 171, 74),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            18.hBox,
            
          ],
        ),
      ),
      // drawer: Drawer(
      //     child: Stack(children: [
      //   Container(
      //             height: 105,
      //             width: 105,
      //             decoration: BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.cover,
      //         image: AssetImage("assets/logo without name.png")),
      //     borderRadius: BorderRadius.circular(200)),
      //           ),10.hBox,

      // ],
      // ),
      // ),
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
                      "Popular Restaurants",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          builder: (context) => BookingSeatView(),
                        ));
                      },
                      child: const Customcontainer(
                          image: "assets/IMG_2025.280.jpg"),
                    ),
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
                  const customfood(food: "Ginger House", hotelname: "Kochi"),
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
                    child: customfood(food: "Rasoi", hotelname: "Kochi"),
                  ),
                  125.wBox,
                  const customfood(food: "Zaatar", hotelname: "Calicut"),
                ],
              ),
              15.hBox,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Book Your Restaurant",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  110.wBox,
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Mybooking(),
                      ));
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(Icons.drive_file_move_rounded)
                ],
              ),
              10.hBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Customres(
                    hotel: "Paragon Hotel",
                    location:
                        "Kannur Rd, near CH Over Bridge,\n Kozhikode, Kerala 673001",
                    image: AssetImage(
                        "assets/restaurant-table-14-persons-restaurant-hall-with-brick-walls-wide-windows-wood-ceiling.jpg")),
              ),
              Row(
                children: [
                  Custombooking(text: "Date"),
                  4.wBox,
                  Custombooking(text: "Time"),
                  4.wBox,
                  Custombooking(text: "Slot")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
