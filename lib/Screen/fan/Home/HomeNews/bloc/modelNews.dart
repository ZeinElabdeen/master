import 'package:meta/meta.dart';
import 'dart:convert';

ModelNews modelNewsFromJson(String str) => ModelNews.fromJson(json.decode(str));

String modelNewsToJson(ModelNews data) => json.encode(data.toJson());

class ModelNews {
  ModelNews({
    @required this.msg,
    @required this.topicId,
    @required this.photo,
  });

  String msg;
  int topicId;
  List<Photo> photo;

  ModelNews copyWith({
    String msg,
    int topicId,
    List<Photo> photo,
  }) =>
      ModelNews(
        msg: msg ?? this.msg,
        topicId: topicId ?? this.topicId,
        photo: photo ?? this.photo,
      );

  factory ModelNews.fromJson(Map<String, dynamic> json) => ModelNews(
        msg: json["msg"] == null ? null : json["msg"],
        topicId: json["topic_id"] == null ? null : json["topic_id"],
        photo: json["photo"] == null
            ? null
            : List<Photo>.from(json["photo"].map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "msg": msg == null ? null : msg,
        "topic_id": topicId == null ? null : topicId,
        "photo": photo == null
            ? null
            : List<dynamic>.from(photo.map((x) => x.toJson())),
      };
}

class Photo {
  Photo({
    @required this.id,
    @required this.title,
    @required this.url,
  });

  int id;
  String title;
  String url;

  Photo copyWith({
    int id,
    String title,
    String url,
  }) =>
      Photo(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
      );

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "url": url == null ? null : url,
      };
}
