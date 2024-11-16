class User {
  String? name;
  int? age;
  double? height;

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'age': this.age,
      'height': this.height,
    };
  }
}
