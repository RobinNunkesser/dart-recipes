class ResponseEntity {
  final String origin;
  final String url;

  ResponseEntity({this.origin,this.url});

  factory ResponseEntity.fromJson(Map<String, dynamic> json) {
    return ResponseEntity(
      origin: json['origin'] as String,
      url: json['url'] as String,
    );
  }
  
}