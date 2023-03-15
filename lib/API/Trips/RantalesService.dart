import '../../libruary.dart';

class RantalesService {
  Future<List<MyRentalsModel>> rantalesservice() async {
   try{
    final jsondata = await rootBundle.loadString("assets/MyRentals.json");
    final listdata = await json.decode(jsondata) as List<dynamic>;
    List<MyRentalsModel> data = listdata.map((e) => MyRentalsModel.fromJson(e)).toList();
    return data;
   }catch(e){
    return[];
  }
  }
}