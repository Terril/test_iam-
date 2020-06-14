class Location {
  String address;
  String locality;
  String city;
  int cityId;
  String latitude;
  String longitude;
  String zipcode;
  int countryId;
  String localityVerbose;

  Location(
      {this.address,
      this.locality,
      this.city,
      this.cityId,
      this.latitude,
      this.longitude,
      this.zipcode,
      this.countryId,
      this.localityVerbose});

  Location.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    locality = json['locality'];
    city = json['city'];
    cityId = json['city_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zipcode = json['zipcode'];
    countryId = json['country_id'];
    localityVerbose = json['locality_verbose'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['locality'] = this.locality;
    data['city'] = this.city;
    data['city_id'] = this.cityId;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['zipcode'] = this.zipcode;
    data['country_id'] = this.countryId;
    data['locality_verbose'] = this.localityVerbose;
    return data;
  }
}