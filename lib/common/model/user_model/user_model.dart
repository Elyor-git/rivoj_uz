class UserModel {
  const UserModel({
    required this.id,
    required this.name,
    required this.surname,
    required this.avatar,
    required this.birth,
    required this.phoneNumber,
    required this.password,
  });

  final String id;
  final String name;
  final String surname;
  final String? avatar;
  final String? birth;
  final String phoneNumber;
  final String password;

  Map<String, Object?> toJson() => <String, Object?>{
        'phoneNumber': phoneNumber,
        'password': password,
      };

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
        id: json['id'] as String,
        name: json['name'] as String,
        surname: json['surname'] as String,
        avatar: json['avatar'] as String?,
        birth: json['birth'] as String?,
        phoneNumber: json['phoneNumber'] as String,
        password: json['password'] as String,
      );

  UserModel copyWith({
    String? id,
    String? name,
    String? surname,
    String? avatar,
    String? birth,
    String? phoneNumber,
    String? password,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        avatar: avatar ?? this.avatar,
        birth: birth ?? this.birth,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        password: password ?? this.password,
      );

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.surname == surname &&
        other.avatar == avatar &&
        other.birth == birth &&
        other.phoneNumber == phoneNumber &&
        other.password == password;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      surname.hashCode ^
      avatar.hashCode ^
      birth.hashCode ^
      phoneNumber.hashCode ^
      password.hashCode;

  @override
  String toString() => 'UserModel(id: $id,'
      'name: $name,'
      'surname: $surname,'
      'avatar: $avatar,'
      'birth: $birth,'
      'phoneNumber: $phoneNumber,'
      'password: $password)';
}
