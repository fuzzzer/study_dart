// 7. Create a list of strings and find the longest string in the list.

import 'dart:io';

void main() {
  List<String> words = ['madara', 'soso', 'sasuke', 'hashirama', 'tobirama'];
  words.sort((a, b) {
    return b.length.compareTo(a.length);
  });
  print(words);
}
