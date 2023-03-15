import '../../libruary.dart';
import 'SelectModel.dart';
class SelectService {
  Future<List<SelectModel>> selectservice() async {
   try{
    final jsondata = await rootBundle.loadString("assets/MyRentals.json");
    final listdata = await json.decode(jsondata) as List<dynamic>;
    List<SelectModel> data = listdata.map((e) => SelectModel.fromJson(e)).toList();
    return data;
   }catch(e){
    return[];
  }
  }
}