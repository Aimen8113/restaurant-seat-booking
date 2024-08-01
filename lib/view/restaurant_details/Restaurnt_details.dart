import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/booking/Booking.dart';
import 'package:mainproject_cdm/view/custompages/bookingwidget.dart';
import 'package:mainproject_cdm/view/custompages/customrestaurant.dart';
import 'package:mainproject_cdm/view/tablebooking/tablebooking.dart';
import 'package:mainproject_cdm/view/booking/cubit/booking_cubit.dart';

class Mybooking extends StatelessWidget {
  const Mybooking({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookingSeatView()),
                    );
                  },
                  child: Customres(
                    hotel: "Zaatar Restaurant",
                    location:
                        "Zataar Arabic Restaurant, 1414,\nCustoms Rd, Vellayil, Kozhikode",
                    image: AssetImage("assets/IMG_2025.280.jpg"),
                  ),
                ),
              ),
              20.hBox,
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Customres(
                  hotel: "Paragon hotel",
                  location:
                      "Kannur Rd, near CH Over bridge,\n Kozhikode, Kerala 673001",
                  image: AssetImage("assets/restaurant-table-14-persons-restaurant-hall-with-brick-walls-wide-windows-wood-ceiling.jpg"),
                ),
              ),
              20.hBox,
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Customres(
                  hotel: "Rasoi restaurant",
                  location:
                      "1, 341, Rose St, next to St.Francis Church,\n Fort Nagar, Fort Kochi, ",
                  image: AssetImage("assets/restaurant-table-14-persons-restaurant-hall-with-brick-walls-wide-windows-wood-ceiling.jpg"),
                ),
              ),
              20.hBox,
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Customres(
                  hotel: "Ginger house",
                  location:
                      "X746+P8J, Jew Town, Kappalandimukku,\n Mattancherry, Kochi,",
                  image: AssetImage("assets/IMG_2025.280.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}