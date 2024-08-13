import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:mainproject_cdm/view/localstorage.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailCtr.text.trim(), password: passCtr.text.trim());

      if (userCredential.user != null) {
        String uid = userCredential.user!.uid;
        await LocalStorage.setPostData(uid);
        
        await FirebaseFirestore.instance.collection("users").doc(uid).set({
          "username": nameCtr.text,
          "email": emailCtr.text,
        });
        
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('username', nameCtr.text);
        await prefs.setString('uid', uid);
              
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Homepage(),
        ));

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Registration successful",
            style: TextStyle(color: Colors.green),
          ),
        ));
      }
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