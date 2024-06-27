import 'package:flutter/foundation.dart';
import 'attendance_list_model.dart';
import 'discoun_list_model.dart';

class UserModel {
  const UserModel({
    required this.name,
    required this.surname,
    required this.avatar,
    required this.phoneNumber,
    required this.password,
    required this.birth,
    // required this.birthday,
    // required this.subject,
    // required this.currentModule,
    // required this.currentLesson,
    // required this.isLessonOver,
    // required this.score,
    // required this.coin,
    // required this.attendanceList,
    // required this.discountList,
  });

  final String name;
  final String surname;
  final String? avatar;
  final String? birth;
  final String phoneNumber;
  final String password;

  // final String ;
  // final int currentModule;
  // final int currentLesson;
  // final bool isLessonOver;
  // final int score;
  // final int coin;
  // final List<AttendanceList> attendanceList;
  // final List<DiscountList> discountList;

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        name: json['name'] as String? ?? "",
        surname: json['surname'] as String? ?? "",
        avatar: json['avatar'] as String? ?? "",
        phoneNumber: json['phoneNumber'] as String? ?? "",
        password: json['password'] as String? ?? "",
        birth: json['birth'] as String? ?? "",
        // birthday: json['birthday'] as String,
        // subject: json['subject'] as String,
        // currentModule: json['currentModule'] as int? ?? 0,
        // currentLesson: json['currentLesson'] as int? ?? 0,
        // isLessonOver: json['isLessonOver'] as bool? ?? false,
        // score: json['score'] as int? ?? 0,
        // coin: json['coin'] as int? ?? 0,
        // attendanceList: json['attendanceList'] == null
        //     ? []
        //     : List<AttendanceList>.from(
        //         (json['attendanceList'] as List<int>).map<AttendanceList>(
        //           (x) => AttendanceList.fromJson(x as Map<String, Object?>),
        //         ),
        //       ),
        // discountList: json['discountList'] == null
        //     ? []
        //     : List<DiscountList>.from(
        //         (json['discountList'] as List<int>).map<DiscountList>(
        //           (x) => DiscountList.fromJson(x as Map<String, Object?>),
        //         ),
        //       ),
      );

  // Map<String, Object?> toJson() => <String, Object?>{
  //       'name': name,
  //       'surname': surname,
  //       'avatar': avatar,
  //       'phoneNumber': phoneNumber,
  //       'password': password,
  //       'birth'
  //       // 'birthday': birthday,
  //       // 'subject': subject,
  //       // 'currentModule': currentModule,
  //       // 'currentLesson': currentLesson,
  //       // 'isLessonOver': isLessonOver,
  //       // 'score': score,
  //       // 'coin': coin,
  //       // 'attendanceList': attendanceList.map((x) => x.toJson()).toList(),
  //       // 'discountList': discountList.map((x) => x.toJson()).toList(),
  //     };

  UserModel copyWith({
    String? name,
    String? surname,
    String? avatar,
    String? phoneNumber,
    String? password,
    String? birth,
    // String? subject,
    // int? currentModule,
    // int? currentLesson,
    // bool? isLessonOver,
    // int? score,
    // int? coin,
    // List<AttendanceList>? attendanceList,
    // List<DiscountList>? discountList,
  }) =>
      UserModel(
        name: name ?? this.name,
        surname: surname ?? this.surname,
        avatar: avatar ?? this.avatar,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        password: password ?? this.password,
        birth: birth ?? this.birth,
        // subject: subject ?? this.subject,
        // currentModule: currentModule ?? this.currentModule,
        // currentLesson: currentLesson ?? this.currentLesson,
        // isLessonOver: isLessonOver ?? this.isLessonOver,
        // score: score ?? this.score,
        // coin: coin ?? this.coin,
        // attendanceList: attendanceList ?? this.attendanceList,
        // discountList: discountList ?? this.discountList,
      );

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.surname == surname &&
        other.avatar == avatar &&
        other.phoneNumber == phoneNumber &&
        other.birth == birth &&
        other.password == password;
    // other.birthday == birthday &&
    // other.subject == subject &&
    // other.currentModule == currentModule &&
    // other.currentLesson == currentLesson &&
    // other.isLessonOver == isLessonOver &&
    // other.score == score &&
    // other.coin == coin &&
    // listEquals(other.attendanceList, attendanceList) &&
    // listEquals(other.discountList, discountList);
  }

  @override
  int get hashCode =>
      name.hashCode ^
      surname.hashCode ^
      avatar.hashCode ^
      phoneNumber.hashCode ^
      password.hashCode ^
      birth.hashCode;

  // birthday.hashCode ^
  // subject.hashCode ^
  // currentModule.hashCode ^
  // currentLesson.hashCode ^
  // isLessonOver.hashCode ^
  // score.hashCode ^
  // coin.hashCode ^
  // attendanceList.hashCode ^
  // discountList.hashCode;

  @override
  String toString() => 'UserModel('
      'name: $name,'
      'surname: $surname,'
      'avatar: $avatar,'
      'phoneNumber: $phoneNumber,'
      'password: $password,'
      'birth : $birth'
      // 'birthday: $birthday,'
      // 'subject: $subject,'
      // 'currentModule: $currentModule,'
      // 'currentLesson: $currentLesson,'
      // 'isLessonOver: $isLessonOver,'
      // 'score: $score,'
      // 'coin: $coin,'
      // 'attendanceList: $attendanceList,'
      // 'discountList: $discountList)'
      ;
}
