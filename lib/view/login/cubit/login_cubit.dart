import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainproject_cdm/view/homepage/homepage.dart';
import 'package:mainproject_cdm/view/localstorage.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.context) : super(LoginInitial());

  BuildContext context;

  TextEditingController emailCtr = TextEditingController();
  TextEditingController passCtr = TextEditingController();
   bool isPasswordVisible = false;

   void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(LoginInitial());
  }
Future<void> login(BuildContext context) async {
    try {
      UserCredential? userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailCtr.text.trim(), password: passCtr.text.trim());
      if (userCredential.user != null) {
        String uid = userCredential.user!.uid;
        await LocalStorage.setPostData(uid);
        
        final docSnapshot = await FirebaseFirestore.instance.collection('users').doc(uid).get();
        if (docSnapshot.exists) {
          final data = docSnapshot.data()!;
          final String username = data['username'] ?? "User";
          final String? profileImageUrl = data['profile_image'];
          
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('username', username);
          if (profileImageUrl != null) {
            await prefs.setString('profile_image', profileImageUrl);
          }
        }
        
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>Homepage(),));
      }
    }catch (e) {
    print("Login error: $e");
    String errorMessage = e.toString();
    
    if (errorMessage.contains(']')) {
      errorMessage = errorMessage.split('] ').last;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(errorMessage)),
    );
  }
}
}
