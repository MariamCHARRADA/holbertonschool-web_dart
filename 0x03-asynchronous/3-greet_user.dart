import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async{
  try {
    String user = await fetchUserData();
    Map userData = jsonDecode(user);
    String userName = userData['username'];

    return 'Hello $userName';

  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool credentials = await checkCredentials();

    if ( credentials === true ) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error){
    return 'error caught: $error';
  }
}