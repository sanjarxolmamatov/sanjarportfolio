class PostModel {
  String? first;
  String? last;
  String? content;
  String? date;
  String? imgUrl;
  String? userId;
  PostModel(this.first, this.last, this.content, this.date, this.imgUrl, this.userId);

  PostModel.fromJson(Map json) {
    first = json["first"];
    last = json['last'];
    content = json["content"];
    date = json['date'];
    imgUrl = json['imgUrl'];
    userId = json["userId"];
  }

  Map<String, dynamic> toMap() {
    return {
      'first': first,
      'last': last,
      'content': content,
      'date': date,
      'imgUrl' : imgUrl,
      'userId': userId,
    };
  }
}
