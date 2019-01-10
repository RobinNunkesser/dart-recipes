class ResponseEntity {
  final String origin;
  final String url;

  ResponseEntity({this.origin,this.url});

  factory ResponseEntity.fromJson(Map<String, dynamic> json) {
    return ResponseEntity(
      origin: json['origin'],
      url: json['url'],
    );
  }
  
}