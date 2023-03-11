class MyRentalsModel {
  String? title;
  String? img;
  String? date;
  String? duraction;
  String? range;
  String? cost;

  MyRentalsModel(
      {this.title, this.img, this.date, this.duraction, this.range, this.cost});

  MyRentalsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    img = json['img'];
    date = json['date'];
    duraction = json['duraction'];
    range = json['range'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['img'] = this.img;
    data['date'] = this.date;
    data['duraction'] = this.duraction;
    data['range'] = this.range;
    data['cost'] = this.cost;
    return data;
  }
}