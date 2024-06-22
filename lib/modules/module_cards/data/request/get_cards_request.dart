
class GetCardRequest {
  GetCardRequest({
    this.filterInfos,
    this.orderInfos,
    this.columns,
    this.count,
    this.page,
    required this.businessesId});

  List<FilterInfos>? filterInfos;
  List<OrderInfos>? orderInfos;
  List<dynamic>? columns;
  num? count;
  num? page;
  String businessesId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (filterInfos != null) {
      map['filterInfos'] = filterInfos?.map((v) => v.toJson()).toList();
    }
    if (orderInfos != null) {
      map['orderInfos'] = orderInfos?.map((v) => v.toJson()).toList();
    }
    if (columns != null) {
      map['columns'] = columns?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    map['page'] = page;
    return map;
  }

}

class OrderInfos {
  OrderInfos({
    this.orderType,
    this.property,});

  OrderInfos.fromJson(dynamic json) {
    orderType = json['orderType'];
    property = json['property'];
  }
  int? orderType;
  String? property;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['orderType'] = orderType;
    map['property'] = property;
    return map;
  }

}

class FilterInfos {
  FilterInfos({
    this.logical,
    this.propertyName,
    this.value,
    this.operator,});

  FilterInfos.fromJson(dynamic json) {
    logical = json['logical'];
    propertyName = json['propertyName'];
    value = json['value'];
    operator = json['operator'];
  }
  String? logical;
  String? propertyName;
  String? value;
  String? operator;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['logical'] = logical;
    map['propertyName'] = propertyName;
    map['value'] = value;
    map['operator'] = operator;
    return map;
  }

}