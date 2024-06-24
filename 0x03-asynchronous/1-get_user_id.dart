// 1-users_count.dart

import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  try {
    String userDataJson = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userDataJson);
    return userData['id'] as String;
  } catch (e) {
    print('Error fetching user ID: $e');
    return '';
  }
}


void main() async {
  String userId = await getUserId();
  print('$userId');
}
