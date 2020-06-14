class Popularity {
  String popularity;
  String nightlifeIndex;
  List<String> topCuisines;

  Popularity({this.popularity, this.nightlifeIndex, this.topCuisines});

  Popularity.fromJson(Map<String, dynamic> json) {
    popularity = json['popularity'];
    nightlifeIndex = json['nightlife_index'];
    topCuisines = json['top_cuisines'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['nightlife_index'] = this.nightlifeIndex;
    data['top_cuisines'] = this.topCuisines;
    return data;
  }
}