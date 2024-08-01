import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.context) : super(RegisterInitial());

  final BuildContext context;
  TextEditingController nameCtr = TextEditingController();
  TextEditingController emailCtr = TextEditingController();
  TextEditingController passCtr = TextEditingController();
  // TextEditingController Cnfrmpass = TextEditingController();

  register() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailCtr.text.trim(), password: passCtr.text.trim())
          .then((value) => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Homepage(),
              )));

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Registration successful",
          style: TextStyle(color: Colors.green),
        ),
      ));
    } catch (error) {
      String errorMessage = "An error occurred during registration";
      if (error is FirebaseAuthException) {
        errorMessage = error.message ?? errorMessage;
      }

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          errorMessage,
          style: TextStyle(color: Colors.red),
        ),
      ));

      print("Registration error: $error");
    }
  }
}
