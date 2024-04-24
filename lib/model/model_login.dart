// To parse this JSON data, do
//
//     final modelLoginApi = modelLoginApiFromJson(jsonString);

import 'dart:convert';

ModelLoginApi modelLoginApiFromJson(String str) => ModelLoginApi.fromJson(json.decode(str));

String modelLoginApiToJson(ModelLoginApi data) => json.encode(data.toJson());

class ModelLoginApi {
  int value;
  String message;
  String username;
  String fullname;
  String id;

  ModelLoginApi({
    required this.value,
    required this.message,
    required this.username,
    required this.fullname,
    required this.id,
  });

  factory ModelLoginApi.fromJson(Map<String, dynamic> json) => ModelLoginApi(
    value: json["value"],
    message: json["message"],
    username: json["username"],
    fullname: json["fullname"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "message": message,
    "username": username,
    "fullname": fullname,
    "id": id,
  };
}
