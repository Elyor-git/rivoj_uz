import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerStates extends Equatable {
  const ImagePickerStates({this.file});

  final XFile? file;

  ImagePickerStates copyWith({XFile? file}) =>
      ImagePickerStates(file: file ?? this.file);

  @override
  List<Object?> get props => [file];
}
