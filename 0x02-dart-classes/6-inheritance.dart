import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password,
  }) : super(password: user_password) {
    isValid();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  String? get user_password => password;

  set user_password(String? value) {
    password = value;
    isValid();
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
