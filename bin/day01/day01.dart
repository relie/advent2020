import 'dart:convert';
import 'dart:io';

void day01() {
  File('./bin/day01/input.txt').readAsString().then((String contents) {
    part2(LineSplitter().convert(contents));
  });
}

void part1(List<String> input) {
  for (int r = 0; r < input.length; r++) {
    for (int l = 1; l < input.length; l++) {
      if (r != input.length - 1) {
        int a = int.parse(input.elementAt(r));
        int b = int.parse(input.elementAt(l));
        int sum = a + b;
        if (sum == 2020) {
          print(a * b);
        }
      }
    }
  }
}

void part2(List<String> input) {
  for (int r = 0; r < input.length; r++) {
    for (int l = 1; l < input.length; l++) {
      for (int y = 2; y < input.length; y++) {
        if (r != input.length - 1) {
          int a = int.parse(input.elementAt(r));
          int b = int.parse(input.elementAt(l));
          int c = int.parse(input.elementAt(y));
          int sum = a + b + c;
          if (sum == 2020) {
            print(a * b * c);
          }
        }
      }
    }
  }
}
