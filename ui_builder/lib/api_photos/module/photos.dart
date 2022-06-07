import 'dart:convert';

List<PhotosApi> photosApiFromJson(String str) =>
    List<PhotosApi>.from(json.decode(str).map((x) => PhotosApi.fromJson(x)));

String photosApiToJson(List<PhotosApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PhotosApi {
  PhotosApi({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  factory PhotosApi.fromJson(Map<String, dynamic> json) => PhotosApi(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
