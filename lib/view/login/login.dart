import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/login/cubit/login_cubit.dart';
import 'package:mainproject_cdm/view/register/register.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  TextEditingController emailCtr = TextEditingController();
  TextEditingController passCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>LoginCubit(context),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            final cubit=context.read<LoginCubit>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 83),
                  child: Center(
                      child: CircleAvatar(
                    radius: 53,
                    backgroundImage: AssetImage("assets/logo without name.png"),
                  )),
                ),
                22.hBox,
                Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                18.hBox,
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                8.hBox,
                Center(
                  child: Container(
                    height: 48,
                    width: 287,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black26)),
                    child: TextFormField(controller: cubit.emailCtr,
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                15.hBox,
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                8.hBox,
                Center(
                  child: Container(
                    height: 48,
                    width: 287,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black26)),
                    child: TextFormField(controller: cubit.passCtr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        
                      ),
                    ),
                  ),
                ),
                15.hBox,
                Padding(
                  padding: const EdgeInsets.only(left: 235),
                  child: Text(
                    "forgot password?",
                    style: TextStyle(color: Colors.black54, fontSize: 10),
                  ),
                ),
                35.hBox,
                Center(
                  child: InkWell(
                    onTap: () {
                     cubit.login();
                    },
                    child: Container(
                      width: 287,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 70, 171, 74),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      )),
                    ),
                  ),
                ),
                38.hBox,
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 36,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: Colors.black87, fontSize: 12),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        endIndent: 36,
                      ),
                    ),
                  ],
                ),
                28.hBox,
                Center(
                  child: Container(
                    height: 48,
                    width: 287,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black26)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/ic_google.jpg"))),
                          ),
                        ),
                        40.wBox,
                        Text(
                          "Login with Google",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                20.hBox,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: Text(
                        "Don't have an account ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                    5.wBox,
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
