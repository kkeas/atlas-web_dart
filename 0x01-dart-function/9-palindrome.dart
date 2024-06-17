bool isPalindrome(String s) {

  String cleanedStr = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  if (cleanedStr.length < 3) {
    return false;
  }

  return cleanedStr == cleanedStr.split('').reversed.join('');
}
