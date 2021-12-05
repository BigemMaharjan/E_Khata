import 'package:encrypt/encrypt.dart';
import 'package:random_string/random_string.dart';

class User {
  int? _id;
  String? _fullname, _username, _email;
  Encrypter? _encrypter; //To encrypt the password
  Encrypted? _password;
  String? _randomstr;

  set id(int? id) {
    _id = id;
  }

  set fullname(String? fullname) {
    _fullname = fullname;
  }

  set username(String? username) {
    _username = username;
  }

  set email(String? email) {
    _email = email;
  }

  set password(String password) {
    _encrypter =
        Encrypter(Salsa20(Key.fromUtf8('$_fullname$_username$_email')));
    _password = _encrypter!.encrypt(password, iv: IV.fromUtf8(_randomstr!));
  }

  int? get id {
    return _id;
  }

  String? get fullname {
    return _fullname;
  }

  String? get username {
    return _username;
  }

  String? get email {
    return _email;
  }

  String? get randomstr {
    return _randomstr;
  }

  String get passwordBase64 {
    if (_password == null) {
      return '';
    } else {
      return _password!.base64;
    }
  }

  User.db(this._id, this._fullname, this._username, this._email,
      this._randomstr, String password) {
    _encrypter =
        Encrypter(Salsa20(Key.fromUtf8('$_fullname$_username$_email')));
    _password = Encrypted.from64(password);
  }

  User.def() {
    _id = -1;
    _fullname = '';
    _username = '';
    _email = '';
    _randomstr = randomString(8);
    _encrypter = null;
    _password = null;
  }

  bool passwordVerify(String newpasswordd) {
    Encrypted newpassword =
        _encrypter!.encrypt(newpasswordd, iv: IV.fromUtf8(_randomstr!));
    if (newpassword.base64 == passwordBase64) {
      return true;
    } else {
      return false;
    }
  }

  toJson() => {
        'id': id,
        'fullname': fullname,
        'username': username,
        'email': email,
        'randomstr': randomstr,
        'password': passwordBase64
      };

  factory User.fromJson(Map<String, dynamic> json) {
    return User.db(
      json['id'] as int,
      json['fullname'] as String,
      json['username'] as String,
      json['email'] as String,
      json['randomstr'] as String,
      json['password'] as String,
    );
  }
}
