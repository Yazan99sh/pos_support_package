class BusinessesEntity{

   List<BusinessEntity>? businesses;

  BusinessesEntity({this.businesses});
}

class BusinessEntity{

  String? name;
  String? id;

  BusinessEntity({this.name,   this.id,});
}