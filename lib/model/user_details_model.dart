class UserDetailsModel {
  final String name;
  final String number;
  final String date;

  UserDetailsModel({
    required this.name,
    required this.number,
    required this.date,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      name: json['name'],
      number: json['number'],
      date: json['date'],
    );
  }
}
