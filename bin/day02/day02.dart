import 'dart:convert';
import 'dart:io';

import '../utils.dart';

void day02() {
  File('./bin/day02/input.txt').readAsString().then((String contents) {
    // part1(LineSplitter().convert(contents));
    part2(LineSplitter().convert(contents));
  });
}

void part1(List<String> input) {
  int okCnt = 0;
  for (final line in input) {
    List<String> rawLine = line.split(' ');
    List<int> range = convertListSI(rawLine[0].split('-'));
    String test = rawLine[1].replaceAll(':', '');
    List<Match> matches = test.allMatches(rawLine[2]).toList();
    if (range[0] <= matches.length && matches.length <= range[1]) {
      okCnt++;
    }
  }
  print('There are $okCnt ok passwords.');
}

void part2(List<String> input) {
  int okCnt = 0;
  for (final line in input) {
    List<String> rawLine = line.split(' ');
    List<int> idx = convertListSI(rawLine[0].split('-'));
    String test = rawLine[1].replaceAll(':', '');
    String char1 = rawLine[2][idx[0]-1];
    String char2 = rawLine[2][idx[1]-1];
    if ((char1 == test || char2 == test) && char1 != char2) {
      okCnt++;
    }
  }
  print('There are $okCnt ok passwords.');
}