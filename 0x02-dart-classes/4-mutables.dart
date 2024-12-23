class Password{
  String? _password;

  Password({String? password}) {
    _password = password;
  }

  // getter
  String? get password => _password;

  // setter
  void set password(String? newP) {
    _password = newP;
  }

  bool isValid(){   
    if (_password == null) return false;
 
    bool upperCase = _password!.contains(RegExp(r'[A-Z]'));
    bool lowerCase = _password!.contains(RegExp(r'[a-z]'));
    bool numbers = _password!.contains(RegExp(r'\d'));
    bool length = _password!.length >= 8 && _password!.length <= 16;

    return upperCase && lowerCase && numbers && length;

  }
  @override
  String toString() {
    return "Your Password is: $_password";
  }
}