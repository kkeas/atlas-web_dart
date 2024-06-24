import '0-util.dart';

Future<void> usersCount() async {
  print('Fetching user count...');

  try {
    int count = await fetchUsersCount();
    print('Number of users: $count');
  } catch (e) {
    print('Error fetching user count: $e');
  }
}

void main() async {
  await usersCount();
}
