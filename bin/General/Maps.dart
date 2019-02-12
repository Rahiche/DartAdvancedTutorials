import 'dart:collection';

main() {
  Map<String, String> list = {
    "raouf": "rraouf30",
    "Ahmed": "ahmedahmed",
    "said": "said20"
  };

//  var test =Map();

  Map<int, String> list2 = {3: "rraouf30", 4: "ahmedahmed", 6: "said20"};

//  HashMap<dynamic, String> list3;
//  list3["test"] = "String";

  print(list["Ahmed"]);
  print(list.containsKey("Ahmed"));
  print(list.keys);
}
