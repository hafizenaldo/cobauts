// To parse this JSON data, do
//
//     final modelBeritaApi = modelBeritaApiFromJson(jsonString);

import 'dart:convert';

ModelBeritaApi modelBeritaApiFromJson(String str) => ModelBeritaApi.fromJson(json.decode(str));

String modelBeritaApiToJson(ModelBeritaApi data) => json.encode(data.toJson());

class ModelBeritaApi {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelBeritaApi({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelBeritaApi.fromJson(Map<String, dynamic> json) => ModelBeritaApi(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String judul;
  String konten;
  String gambar;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.judul,
    required this.konten,
    required this.gambar,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    judul: json["judul"],
    konten: json["konten"],
    gambar: json["gambar"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  get berita => null;

  Map<String, dynamic> toJson() => {
    "id": id,
    "judul": judul,
    "konten": konten,
    "gambar": gambar,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
