void outer(String name, String id) {
  String inner() {
    String lastName = name.split(" ")[1];
    String firstName = name.split(" ")[0];
    return "Hello Agent ${lastName[0]}.${firstName} your id is $id";
  }
  print(inner());
}
