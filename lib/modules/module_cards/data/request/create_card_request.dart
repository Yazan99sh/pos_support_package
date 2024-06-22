class CreateCardRequest{
  String businessId;
  String tagId;

  int cardStatusId;

  CreateCardRequest({required this.businessId, required this.tagId, required this.cardStatusId});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['businessId'] = businessId;
    map['tagId'] = tagId;
    map['cardTypeId'] = 1;
    map['cardStatusId'] = cardStatusId;
    return map;
  }
}