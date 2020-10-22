Map Test(List<String> args, int correctIndex) {
  var result = new Map();
  for (var item in args) {
    if (args.indexOf(item) == correctIndex) {
      result['R'] = item;
    } else {
      result['W'] = item;
    }
  }
  return result;
}
