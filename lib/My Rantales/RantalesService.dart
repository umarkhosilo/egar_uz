
import '../libruary.dart';

class RantalesService {
  Future<List<dynamic>> rantalesservice() async {
   try{
    final jsondata = await rootBundle.loadString("assets/MyRentals.json");
    final listdata = await json.decode(jsondata) as List<dynamic>;
    List<dynamic> data = listdata.map((e) => MyRentalsModel.fromJson(e)).toList();
    return data;
   }catch(e){
    return[];
  }
  }
}