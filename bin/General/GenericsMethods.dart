main() {
  List<int> nums = [2, 2, 1, 5];
  List<double> doubles = [4.6, 0.6, 3.9, 23.7];
  sum(nums);
}

//sumdouble(List<double> list) {
//  var res = 0.0;
//  for (var i = 0; i < list.length; i++) {
//    res = res + list[i];
//  }
//  print("final result ${res}");
//}

sum<T extends num>(List<T> list) {
  T res = list[0];
  for (var i = 1; i < list.length; i++) {
    res = res + list[i];
  }
  print("final result ${res}");
}
