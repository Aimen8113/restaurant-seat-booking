import 'package:flutter/material.dart';
import 'package:mainproject_cdm/sizedbox.dart';
import 'package:mainproject_cdm/view/login/login.dart';
import 'package:mainproject_cdm/view/register/register.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 165,
            ),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/logo without name.png"),
            ),
          ),
          27.hBox,
          Text(
            "2'is Restro",
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                fontFamily: 'roboto'),
          ),
          55.hBox,
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Loginpage(),
                ));
              },
              child: Container(
                width: 312,
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
          16.hBox,
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Registerpage(),
              ));
            },
            child: Container(
              width: 312,
              height: 48,
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
