class HttpRequestModel {
  final String origin;
  final String url;

  HttpRequestModel({this.origin,this.url});

  factory HttpRequestModel.fromJson(Map<String, dynamic> json) {
    return HttpRequestModel(
      origin: json['origin'] as String,
      url: json['url'] as String,
    );
  }
  
}