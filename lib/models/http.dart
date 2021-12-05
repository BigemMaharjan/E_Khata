import 'package:e_khata/BO/BO.dart';
import 'package:e_khata/models/login_request.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'user.dart';

class Http {
  //localhost || 10.0.2.2 (mysql for Android emulator)
  final url = 'http://192.168.0.110:3000/';
  final users = 'users/';
  final register = 'register';
  final loginS = "login";
  final headers = {'Content-Type': 'application/json'};
  final encoding = Encoding.getByName('utf-8');

  Http();

  Future<List<User>> makeUserGetRequest() async {
    http.Response response = await http.get(Uri.parse('$url$users'));
    List<User> result = List<User>.from(
        json.decode(response.body).map((json) => User.fromJson(json)));
    result.sort((a, b) => a.id!.compareTo(b.id!));
    print(getstatusCode(response.statusCode));
    return result;
  }

  makeUserPostRequest(User user) async {
    String body = json.encode(user.toJson());
    http.Response response = await http.post(Uri.parse('$url$users'),
        headers: headers, body: body, encoding: encoding);
    print(response.body);
    print(
        'Response status ${response.statusCode} => ${getstatusCode(response.statusCode)}');
  }

  makeUserPutRequest(User user) async {
    String body = json.encode(user.toJson());
    http.Response response = await http.put(Uri.parse('$url$users${user.id}'),
        headers: headers, body: body, encoding: encoding);
    print(response.body);
    print(
        'Response status ${response.statusCode} => ${getstatusCode(response.statusCode)}');
  }

  makeUserDeleteRequest(User user) async {
    http.Response response = await http.delete(
      Uri.parse('$url$users${user.id}'),
      headers: headers,
    );
    print(response.body);
    print(
        'Response status ${response.statusCode} => ${getstatusCode(response.statusCode)}');
  }

  Future<bool> login({LoginRequest? loginRequest}) async {
    http.Response res = await http.post(Uri.parse('$url$loginS'),
        headers: headers, body: loginRequestToJson(loginRequest!));
    print(res);

    return true;
  }
}
