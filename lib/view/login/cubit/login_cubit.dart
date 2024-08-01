import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.context) : super(LoginInitial());

  BuildContext context;

  TextEditingController emailCtr = TextEditingController();
  TextEditingController passCtr = TextEditingController();

  login() async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailCtr.text.trim(), password: passCtr.text.trim())
        .then(
          (value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage(),)),
        );

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "Login successful",
        style: TextStyle(color: Colors.green),
      ),
    ));
  } catch (error) {
    String errorMessage = "An error occurred during login";
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'user-not-found':
          errorMessage = "No user found with this email.";
          break;
        case 'wrong-password':
          errorMessage = "Wrong password provided.";
          break;
        default:
          errorMessage = error.message ?? errorMessage;
      }
    }
    
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        errorMessage,
        style: TextStyle(color: Colors.red),
      ),
    ));
    
    print("Login error: $error");
  }
}}
