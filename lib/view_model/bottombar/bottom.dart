
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/boknghstry/bookinghstry.dart';
import 'package:mainproject_cdm/view/restaurant_list/Restaurnt_list.dart';
import 'package:mainproject_cdm/view/booking/Booking.dart';

import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:mainproject_cdm/view/orderfood.dart';
import 'package:mainproject_cdm/view/profilepage/profile.dart';
import 'package:mainproject_cdm/view/tablebooking/tablebooking.dart';
import 'package:mainproject_cdm/view_model/bottombar/cubit/bottom_cubit.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  int flag = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomCubit(),
      child: BlocBuilder<BottomCubit,BottomState>(
        builder: (context, state) {
          final cubit = context.read<BottomCubit>();
          return Scaffold(
            backgroundColor: const Color(0xFFF1F1F1),
            body: flag == 1
                ? Homepage()
                : flag == 2
                    ? Mybooking()
                    : flag == 3
                    ? Bookinhistory()

                        : flag == 4
                            ?  ProfilePage()
                            : 5.hBox,
            bottomNavigationBar: Stack(children: [
              Container(
                height: 50,
                width: 390,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        flag = 1;
                        cubit.emit(BottomInitial());
                      },
                      child: const Icon(
                        Icons.home,
                        size:20,
                        color: Color(0xFF20194c),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        flag = 2;
                        cubit.emit(BottomInitial());
                      },
                      child: const Icon(
                        Icons.restaurant,
                        size:20,
                        color: Color(0xFF20194c),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        flag = 3;
                        cubit.emit(BottomInitial());
                      },
                      child: const Icon(
                        Icons.summarize,
                        size: 20,
                        color: Color(0xFF20194c),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        flag = 4;
                        cubit.emit(BottomInitial());
                      },
                      child: const Icon(
                        Icons.person,
                        size:20,
                        color: Color(0xFF20194c),
                      ),
                    )
                  ],
                ),
              ),

              // Positioned(
              //   left: 165,
              //   child: CircleAvatar(
              //     radius: 23,
              //     backgroundColor: const Color(0xFF20194c),
              //     child: InkWell(
              //       onTap: () {
              //         setState(() {});
              //         flag = 3;
              //       },
              //       child:
              //           const Icon(Icons.home_filled, size: 30, color: Colors.white),
              //     ),
              //   ),
              // ),
            ]),
          );
        },
      ),
    );
  }
}