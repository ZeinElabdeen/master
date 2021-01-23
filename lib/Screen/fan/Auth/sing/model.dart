// To parse this JSON data, do
//
//     final modelSingIn = modelSingInFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ModelSingIn modelSingInFromJson(String str) =>
    ModelSingIn.fromJson(json.decode(str));

String modelSingInToJson(ModelSingIn data) => json.encode(data.toJson());

class ModelSingIn {
  ModelSingIn({
    @required this.id,
    @required this.username,
    @required this.accessKey,
    @required this.refreshKey,
    @required this.createdAt,
  });

  String id;
  String username;
  String accessKey;
  String refreshKey;
  DateTime createdAt;

  ModelSingIn copyWith({
    String id,
    String username,
    String accessKey,
    String refreshKey,
    DateTime createdAt,
  }) =>
      ModelSingIn(
        id: id ?? this.id,
        username: username ?? this.username,
        accessKey: accessKey ?? this.accessKey,
        refreshKey: refreshKey ?? this.refreshKey,
        createdAt: createdAt ?? this.createdAt,
      );

  factory ModelSingIn.fromJson(Map<String, dynamic> json) => ModelSingIn(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
        accessKey: json["accessKey"] == null ? null : json["accessKey"],
        refreshKey: json["refreshKey"] == null ? null : json["refreshKey"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "accessKey": accessKey == null ? null : accessKey,
        "refreshKey": refreshKey == null ? null : refreshKey,
        "createdAt": createdAt == null ? null : createdAt.toIso8601String(),
      };
}
