void main() {
  String demo(String str) {
    String total = '';
    Object? convert(String n) {
      try {
        int value = int.parse(n);
        return value;
      } catch (e) {
        return TypeError(error: e.toString());
      }
    }

    for (int i = 0; i < str.length; i++) {
      var val = convert(str[i]);
      if (val is int) {
        total += val.toString();
      }
    }
    return total;
  }

  print(demo('try@33#12hfh'));
}

class TypeError {
  TypeError({required this.error});
  final String error;
}
