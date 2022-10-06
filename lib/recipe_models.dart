class ResponseResultRecipe {
  String? method;
  bool? status;
  dynamic results;

  ResponseResultRecipe({this.method, this.status, this.results});

  ResponseResultRecipe.fromJson(Map<String, dynamic> json) {
    method = json['method'];
    status = json['status'];
    if (json['results'] != null) {
      results = <Recipe>[];
      json['results'].forEach((v) {
        results!.add(Recipe.fromJson(v));
      });
    }
  }
}

class Recipe {
  String? title;
  String? thumb;
  String? key;
  String? times;
  String? serving;
  String? difficulty;

  Recipe(
      {this.title,
      this.thumb,
      this.key,
      this.times,
      this.serving,
      this.difficulty});

  Recipe.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    thumb = json['thumb'];
    key = json['key'];
    times = json['times'];
    serving = json['serving'];
    difficulty = json['difficulty'];
  }
}
