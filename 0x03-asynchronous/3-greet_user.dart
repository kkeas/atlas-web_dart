import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userDataJson = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userDataJson);
    String username = userData['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool isAuthenticated = await checkCredentials();
    print('There is a user: $isAuthenticated');
    
    if (isAuthenticated) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

void main() async {
  String loginResult = await loginUser();
  print(loginResult);
}
