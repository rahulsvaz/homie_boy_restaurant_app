

class User {
  String? token;
  RestaurantData? restaurantData;

  User({this.token, this.restaurantData});

  User.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    restaurantData = json['restaurantData'] != null
        ? new RestaurantData.fromJson(json['restaurantData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.restaurantData != null) {
      data['restaurantData'] = this.restaurantData!.toJson();
    }
    return data;
  }
}

class RestaurantData {
  String? sId;
  String? name;
  String? imageUrl;
  String? phoneNumber;
  String? location;
  String? workingHour;
  String? createdAt;

  RestaurantData(
      {this.sId,
      this.name,
      this.imageUrl,
      this.phoneNumber,
      this.location,
      this.workingHour,
      this.createdAt});

  RestaurantData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    phoneNumber = json['phoneNumber'];
    location = json['location'];
    workingHour = json['workingHour'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    data['phoneNumber'] = this.phoneNumber;
    data['location'] = this.location;
    data['workingHour'] = this.workingHour;
    data['createdAt'] = this.createdAt;
    return data;
  }
}