String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }

  String longestPalindromeSubstring = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longestPalindromeSubstring.length) {
        longestPalindromeSubstring = substring;
      }
    }
  }

  return longestPalindromeSubstring.isEmpty ? 'none' : longestPalindromeSubstring;
}

bool isPalindrome(String s) {
  String cleanedStr = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  if (cleanedStr.length < 3) {
    return false;
  }
  return cleanedStr == cleanedStr.split('').reversed.join('');
}
