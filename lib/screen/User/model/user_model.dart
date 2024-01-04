class UserModel
{
  int? id;
  String? name, username, email, phone, website;
  AddressModel? addressModel;
  CompanyModel? companyModel;

  UserModel(
      {this.id,
        this.name,
        this.username,
        this.email,
        this.phone,
        this.website,
        this.addressModel,
        this.companyModel});

  factory UserModel.mapToModel(Map m1) {
    return UserModel(
      id: m1['id'],
      name: m1['name'],
      username: m1['username'],
      email: m1['email'],
      phone: m1['phone'],
      website: m1['website'],
      addressModel: AddressModel.mapToModel(m1['address']),
      companyModel: CompanyModel.mapToModel(m1['company']),
    );
  }
}

class AddressModel {
  String? street, suite, city, zipcode;
  GeoModel? geoModel;

  AddressModel(
      {this.street, this.suite, this.city, this.zipcode, this.geoModel});

  factory AddressModel.mapToModel(Map m1) {
    return AddressModel(
      street: m1['street'],
      suite: m1['suite'],
      city: m1['city'],
      zipcode: m1['zipcode'],
      geoModel: GeoModel.mapToModel(m1['geo']),
    );
  }
}

class GeoModel {
  String? lat, lng;

  GeoModel({this.lat, this.lng});

  factory GeoModel.mapToModel(Map m1) {
    return GeoModel(
      lat: m1['lat'],
      lng: m1['lng'],
    );
  }
}

class CompanyModel {
  String? name, catchPhrase, bs;

  CompanyModel({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory CompanyModel.mapToModel(Map m1) {
    return CompanyModel(
      name: m1['name'],
      catchPhrase: m1['catchPhrase'],
      bs: m1['bs'],
    );
  }
}