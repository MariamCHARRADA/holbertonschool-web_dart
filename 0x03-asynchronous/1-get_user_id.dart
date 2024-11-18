import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String data = await fetchUserData();
  Map dataMap = jsonDecode(data);
  String id = dataMap["id"];

  return id;
}