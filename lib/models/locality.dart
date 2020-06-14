class Locality {
  String entityType;
  String entityId;
  String title;
  String latitude;
  String longitude;
  String cityId;
  String cityName;
  String countryId;
  String countryName;

  Locality(
      {this.entityType,
      this.entityId,
      this.title,
      this.latitude,
      this.longitude,
      this.cityId,
      this.cityName,
      this.countryId,
      this.countryName});

  Locality.fromJson(Map<String, dynamic> json) {
    entityType = json['entity_type'];
    entityId = json['entity_id'];
    title = json['title'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    cityId = json['city_id'];
    cityName = json['city_name'];
    countryId = json['country_id'];
    countryName = json['country_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['entity_type'] = this.entityType;
    data['entity_id'] = this.entityId;
    data['title'] = this.title;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['city_id'] = this.cityId;
    data['city_name'] = this.cityName;
    data['country_id'] = this.countryId;
    data['country_name'] = this.countryName;
    return data;
  }
}