// 6-password.dart

class Password {
  String? _password;

  Password({String? password}) : _password = password;

  bool isValid() {
    if (_password == null || _password!.length < 8 || _password!.length > 16) {
      return false;
    }

    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumber = false;

    for (var char in _password!.split('')) {
      if (char.contains(RegExp(r'[A-Z]'))) {
        hasUppercase = true;
      } else if (char.contains(RegExp(r'[a-z]'))) {
        hasLowercase = true;
      } else if (char.contains(RegExp(r'[0-9]'))) {
        hasNumber = true;
      }
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  set password(String? value) {
    _password = value;
  }

  String? get password => _password;

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
