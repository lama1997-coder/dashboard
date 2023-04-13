

class Seller {
  List<OrdersSummary>? ordersSummary;
  List<SellerSummary>? sellerSummary;

  Seller({this.ordersSummary, this.sellerSummary});

  Seller.fromJson(Map<String, dynamic> json) {
    if (json['orders_summary'] != null) {
      ordersSummary = <OrdersSummary>[];
      json['orders_summary'].forEach((v) {
        ordersSummary!.add(new OrdersSummary.fromJson(v));
      });
    }
    if (json['seller_summary'] != null) {
      sellerSummary = <SellerSummary>[];
      json['seller_summary'].forEach((v) {
        sellerSummary!.add(new SellerSummary.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ordersSummary != null) {
      data['orders_summary'] =
          this.ordersSummary!.map((v) => v.toJson()).toList();
    }
    if (this.sellerSummary != null) {
      data['seller_summary'] =
          this.sellerSummary!.map((v) => v.toJson()).toList();
    }
    return data;
  }

    static List<Seller> toListOfModel(List<dynamic> data) {
    return data.map((data) => Seller.fromJson(data)).toList();
  }
}

class OrdersSummary {
  String? title;
  String? number;
  String? percentage;
  String? color;

  OrdersSummary({this.title, this.number, this.percentage, this.color});

  OrdersSummary.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    number = json['number'];
    percentage = json['percentage'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['number'] = this.number;
    data['percentage'] = this.percentage;
    data['color'] = this.color;
    return data;
  }
   static List<OrdersSummary> toListOfModel(List<dynamic> data) {
    return data.map((data) => OrdersSummary.fromJson(data)).toList();
  }
}

class SellerSummary {
  String? title;
  String? percentage;

  SellerSummary({this.title, this.percentage});

  SellerSummary.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['percentage'] = this.percentage;
    return data;
  }
   static List<SellerSummary> toListOfModel(List<dynamic> data) {
    return data.map((data) => SellerSummary.fromJson(data)).toList();
  }
}