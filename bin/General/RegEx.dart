main() {
  String email = "rraouf30@gmail.com";
  String str = r"^[^\s@]+@[^\s@]+\.[^\s@]+$";
  RegExp regExp = RegExp(str);
  print("is valid email : ${regExp.hasMatch(email)}");
}
