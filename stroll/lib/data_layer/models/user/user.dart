import 'dart:convert';

class User {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  User({
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
  });

  int get age {
    DateTime currentDate = DateTime.now();
    int ageInYears = currentDate.year - dateOfBirth.year;

    if (currentDate.month < dateOfBirth.month ||
        (currentDate.month == dateOfBirth.month &&
            currentDate.day < dateOfBirth.day)) {
      ageInYears--;
    }

    return ageInYears;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth.millisecondsSinceEpoch,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      dateOfBirth: DateTime.parse(
        map['dateOfBirth'] as String,
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
