class User {
  String? name;

  String showName() {
    if (name != null) {
      return 'Hello $name';
    } else {
      return 'Hello User';
    }
  }
}
