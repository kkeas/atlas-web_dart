void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(' ');
    String firstName = parts[0];
    String lastName = parts[1];
    String formattedName = '${lastName[0]}.${firstName}';
    return 'Hello Agent $formattedName your id is $id';
  }

  String result = inner();
  print(result);
}
