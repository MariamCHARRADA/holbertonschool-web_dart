class Password{
  String? password;

  bool isValid(){
    bool upperCase = password!.contains(RegExp(r'[A-Z]'));
    bool lowerCase = password!.contains(RegExp(r'[a-z]'));
    bool numbers = password!.contains(RegExp(r'\d'));
    bool length = password!.length >= 8 && password!.length <= 16;

    return upperCase && lowerCase && numbers && length;

  }
  @override
  String toString() {
    return "Your Password is: $password";
  }
}