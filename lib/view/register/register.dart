import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/register/cubit/register_cubit.dart';
import 'package:mainproject_cdm/view/restaurant_list/Restaurnt_list.dart';
import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:mainproject_cdm/view/login/login.dart';
import 'package:mainproject_cdm/view/orderfood.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => RegisterCubit(context),
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              final cubit = context.read<RegisterCubit>();
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 83),
                    child: Center(
                        child: CircleAvatar(
                      radius: 53,
                      backgroundImage:
                          AssetImage("assets/logo without name.png"),
                    )),
                  ),
                  22.hBox,
                  Center(
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  18.hBox,
                  Center(
                    child: Container(
                      height: 48,
                      width: 287,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26)),
                      child: TextFormField(
                        controller: cubit.nameCtr,
                        decoration: InputDecoration(
                            hintText: "Enter Your Username",
                            hintStyle: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  15.hBox,
                  Center(
                    child: Container(
                      height: 48,
                      width: 287,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26)),
                      child: TextFormField(
                        controller: cubit.emailCtr,
                        decoration: InputDecoration(
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  15.hBox,
                  Center(
                    child: Container(
                      height: 48,
                      width: 287,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26)),
                      child: TextFormField(
                        controller: cubit.passCtr,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                  15.hBox,
                  // Center(
                  //   child: Container(
                  //     height: 48,
                  //     width: 287,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(5),
                  //         border: Border.all(color: Colors.black26)),
                  //     child: TextFormField(
                  //       decoration: InputDecoration(
                  //         hintText: "Confirm Password",
                  //           hintStyle: TextStyle(
                  //               color: Colors.black54,
                  //               fontWeight: FontWeight.normal,
                  //               fontSize: 14),
                  //         border: OutlineInputBorder(borderSide: BorderSide.none),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  20.hBox,

                  InkWell(
                    onTap: () {
                      cubit.register();
                    },
                    child: Center(
                      child: Container(
                        width: 287,
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 70, 171, 74),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ),

                  25.hBox,

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Loginpage(),
                            ));
                          },
                          child: Text(
                            "Already have an account ?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ),
                      ),
                      5.wBox,
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Loginpage(),
                          ));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),90.hBox,
                  Container(
                    height:75,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Frame (3).png"))),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
