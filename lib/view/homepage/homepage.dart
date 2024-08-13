import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/Restaurant_details/restauarnt_paragon.dart';
import 'package:mainproject_cdm/view/Restaurant_details/restaurant_ginger.dart';
import 'package:mainproject_cdm/view/Restaurant_details/restaurant_razoi.dart';
import 'package:mainproject_cdm/view/Restaurant_details/restaurant_zatar.dart';
import 'package:mainproject_cdm/view/drawer/drawer_logout.dart';
import 'package:mainproject_cdm/view/mainpage.dart';
import 'package:mainproject_cdm/view/profilepage/profile.dart';
import 'package:mainproject_cdm/view/restaurant_list/Restaurnt_list.dart';
import 'package:mainproject_cdm/view/booking/Booking.dart';
import 'package:mainproject_cdm/view/curserslider.dart';
import 'package:mainproject_cdm/view/custompages/bookingwidget.dart';
import 'package:mainproject_cdm/view/custompages/custom.dart';
import 'package:mainproject_cdm/view/custompages/customrestaurant.dart';
import 'package:mainproject_cdm/view_model/bottombar/bottom.dart';
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
                "Tablebooky",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              70.wBox,
            
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
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
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/logo without name.png")),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              ],
            ),
            25.hBox,
            
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProfilePage(),));
                  },
                    child: Container(
                      width: 287,
                      height: 48,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 70, 171, 74),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) =>Mainscreen(),));
                  },
                    child: Container(
                      width: 287,
                      height: 48,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 70, 171, 74),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Log out",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 287,
                    height: 48,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 70, 171, 74),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Privacy & Policy",
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
            ), Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 287,
                    height: 48,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 70, 171, 74),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "About",
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
                  
                ],
              ),
              20.hBox,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    
                      child: InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Restaurentparagon(),));
                      },
                        child: const Customcontainer(
                            image: "assets/IMG_2025.280.jpg"),
                      ),
                    
                  ),
                  18.wBox,
                  InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Restaurentginger(),));
                      },
                    child: const Customcontainer(
                        image:
                            "assets/photorealistic-wedding-venue-with-intricate-decor-ornaments.jpg"),
                  ),
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
                   Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Restaurentrazoi(),));
                      },
                      child: Customcontainer(
                          image:
                              "assets/restaurant-table-14-persons-restaurant-hall-with-brick-walls-wide-windows-wood-ceiling.jpg"),
                    ),
                  ),
                  18.wBox,
                  InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Restaurentzatar(),));
                      },
                    child: const Customcontainer(image: "assets/image 5.png")),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
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
                        builder: (context) => const Mybooking(),
                      ));
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Icon(Icons.drive_file_move_rounded)
                ],
              ),
              10.hBox,
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Customres(
                    hotel: "Paragon Hotel",
                    location:
                        "Kannur Rd, near CH Over Bridge,\n Kozhikode, Kerala 673001",
                    image: AssetImage(
                        "assets/restaurant-table-14-persons-restaurant-hall-with-brick-walls-wide-windows-wood-ceiling.jpg"),text: "",
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
