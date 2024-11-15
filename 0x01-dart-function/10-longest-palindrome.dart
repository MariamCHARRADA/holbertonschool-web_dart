bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  String longest = 'none';
  for (int length = s.length; length >= 3; length--) {
    for (int i = 0; i <= s.length - length; i++) {
      String sub = s.substring(i, i + length);
      if (isPalindrome(sub)) {
        return sub; // 1st and longest !
      }
    }
  }
  return longest;
}
