class SelectModel {
  String? names;
  List<String>? carsname;
  List<String>? cars;

  SelectModel({this.names, this.carsname, this.cars});

  SelectModel.fromJson(Map<String, dynamic> json) {
    names = json['names'];
    carsname = json['carsname'].cast<String>();
    cars = json['cars'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['names'] = this.names;
    data['carsname'] = this.carsname;
    data['cars'] = this.cars;
    return data;
  }
}