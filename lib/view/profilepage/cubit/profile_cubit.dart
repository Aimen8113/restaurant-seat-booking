import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mainproject_cdm/view/profilepage/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState(name: ''));

  void updateName(String name) {
    emit(state.copyWith(name: name));
  }

  void updateImage(XFile image) {
    emit(state.copyWith(imageFile: File(image.path)));
  }
}