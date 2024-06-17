String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return '';
  }

  String longestSubstring = '';
  String currentSubstring = '';

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    int index = currentSubstring.indexOf(currentChar);

    if (index != -1) {
      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }
      currentSubstring = currentSubstring.substring(index + 1);
    }

    currentSubstring += currentChar;
  }

  if (currentSubstring.length > longestSubstring.length) {
    longestSubstring = currentSubstring;
  }

  return longestSubstring;
}
