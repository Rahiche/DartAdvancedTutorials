main() {
  User user1;
  User user2;

  //if user2 is not NULL assign it
  //otherwise assign User("name")
  user1 = user2 ?? User("name");

  // if user1 is NULL assign User("Raouf")
  user1 ??= User("Raouf");

  //don't call showName if it user1 is NULL
  user1?.showName();

  //NULL error will happen if user1 is NULL
  //  if (user1.name == "Raouf") {
  //    user1.showName();
  //  }
}

class User {
  User(this.name);

  final String name;

  showName() {
    print("Name : $name");
  }
}
