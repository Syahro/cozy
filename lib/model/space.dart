class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchen;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
    this.numberOfKitchen,
    this.numberOfBedrooms,
    this.numberOfCupboards,
  });

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    mapUrl = json['map_url'];
    phone = json['phone'];
    photos = json['photos'];
    numberOfKitchen = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}
