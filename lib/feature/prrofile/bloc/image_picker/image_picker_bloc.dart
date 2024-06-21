// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_event.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_states.dart';
import 'package:rivoj_uz_project/feature/prrofile/utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerStates> {
  ImagePickerBloc(this.imagePickerUtils) : super(const ImagePickerStates()) {
    on<CameraCapture>(cameraCapture);
    on<GalleryImagePicker>(pickFromGallery);
  }

  final ImagePickerUtils imagePickerUtils;

  void cameraCapture(
      CameraCapture event, Emitter<ImagePickerStates> states) async {
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }

  void pickFromGallery(
      GalleryImagePicker event, Emitter<ImagePickerStates> states) async {
    XFile? file = await imagePickerUtils.pickImageFromGallery();
    emit(state.copyWith(file: file));
  }
}
