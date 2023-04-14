// ignore_for_file: public_member_api_docs, sort_constructors_first

class Seller {
  List<OrdersSummary>? ordersSummary;
  List<SellerSummary>? sellerSummary;
  List<Statictics>? statictics;

  Seller({this.ordersSummary, this.sellerSummary, this.statictics});

  Seller.fromJson(Map<String, dynamic> json) {
    if (json['orders_summary'] != null) {
      ordersSummary = <OrdersSummary>[];
      json['orders_summary'].forEach((v) {
        ordersSummary!.add(OrdersSummary.fromJson(v));
      });
    }
    if (json['seller_summary'] != null) {
      sellerSummary = <SellerSummary>[];
      json['seller_summary'].forEach((v) {
        sellerSummary!.add(SellerSummary.fromJson(v));
      });
    }
    if (json['statistics'] != null) {
      statictics = <Statictics>[];
      json['statistics'].forEach((v) {
        statictics!.add(Statictics.fromJson(v));
      });
    }
  }

  static List<Seller> toListOfModel(List<dynamic> data) {
    return data.map((data) => Seller.fromJson(data)).toList();
  }
}

class OrdersSummary {
  String? title;
  String? number;
  String? percentage;
  int? color;
  String? image;
  bool? status;

  OrdersSummary(
      {this.title,
      this.number,
      this.percentage,
      this.color,
      this.image,
      this.status});

  OrdersSummary.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    number = json['number'];
    percentage = json['percentage'];
    color = int.parse(json['color']);
    image = json['image'];
    status = json['status'];
  }

  static List<OrdersSummary> toListOfModel(List<dynamic> data) {
    return data.map((data) => OrdersSummary.fromJson(data)).toList();
  }
}

class SellerSummary {
  String? title;
  String? percentage;
  int? color;

  SellerSummary({this.title, this.percentage, this.color});

  SellerSummary.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    percentage = json['percentage'];
    color = int.parse(json['color']);
  }

  static List<SellerSummary> toListOfModel(List<dynamic> data) {
    return data.map((data) => SellerSummary.fromJson(data)).toList();
  }
}

class Statictics {
  String? title;
  String? percentage;
  int? color;
  List<Statictice>? statictice;

  Statictics({this.title, this.percentage, this.color, this.statictice});

  Statictics.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    percentage = json['percentage'] ?? "";
    color = int.parse(json['color'] ?? "4");
     if (json['statistice'] != null) {
      statictice = <Statictice>[];
      json['statistice'].forEach((v) {
        statictice!.add(Statictice.fromJson(v));
      });
    }
  }

  static List<Statictics> toListOfModel(List<dynamic> data) {
    return data.map((data) => Statictics.fromJson(data)).toList();
  }
}

class Statictice {
  String? day;
  double? sale;
  Statictice({
    this.day,
    this.sale,
  });


   Statictice.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    sale = json['sale'];
    
  }
}
