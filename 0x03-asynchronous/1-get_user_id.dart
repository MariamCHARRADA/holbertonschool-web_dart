import '1-util.dart';

Future<String> getUserId() async {
  String data = await fetchUserData();
  String id = data["id"];

  return id;
}