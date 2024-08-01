import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ProfileState {
  final String name;
  final File? imageFile;

  ProfileState({required this.name, this.imageFile});

  ProfileState copyWith({String? name, File? imageFile}) {
    return ProfileState(
      name: name ?? this.name,
      imageFile: imageFile ?? this.imageFile,
    );
  }
}